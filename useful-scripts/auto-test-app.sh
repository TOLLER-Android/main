#!/bin/bash

# Envvars:

# APP_ID: Unique ID of the app
# TOOL_ID: Unique ID of the tool
# REP: Unique ID of the run
# APK_PATH: Path to AUT's APK
# OUT_DIR: Directory to save logs
# EMU_ID: Unique ID of the test device
# ANDROID_SERIAL: Serial number of the test device
# LOGIN_PY_SCRIPT (optional): A Python script for auto logging in before test starts

export TEST_INFO="${TOOL_ID}-${APP_ID}-${REP} @ $(cat /etc/hostname)"
AUTO_RERUN_SCRIPT_PATH="auto-rerun.sh"

{
export APP_PACKAGE_NAME=$(bash get-package-name.sh "$APK_PATH")
if [[ -z "$APP_PACKAGE_NAME" ]]; then
	echo "Unable to read $APK_PATH"
	exit 1
fi

cleanup() {
	echo $1 >"${OUT_DIR}/exit-status.log"
}

screen_int() {
	screen -S "$1" -p 0 -X stuff "^C"
}

adb uninstall "$APP_PACKAGE_NAME"
adb install -r "$APK_PATH"

check_pos_int() {
	[[ "$1" =~ ^[0-9]+$ ]] && expr "$1" ">" "0" >/dev/null
}
export -f check_pos_int

export CTRL_PORT=$(adb forward tcp:0 tcp:12345) # Just need to grab a free port
echo "CTRL_PORT = ${CTRL_PORT}"
if ! check_pos_int "$CTRL_PORT"; then
	echo "Invalid CTRL_PORT on $ANDROID_SERIAL"
	cleanup 2
fi

export MINICAP_PORT=$(adb forward tcp:0 tcp:12345) # Just need to grab a free port
echo "MINICAP_PORT = ${MINICAP_PORT}"
if ! check_pos_int "$MINICAP_PORT"; then
	echo "Invalid MINICAP_PORT on $ANDROID_SERIAL"
	cleanup 2
fi

ret=$(bash "check-app-uid.sh")
if check_pos_int "$ret"; then
	export TEST_APP_UID="$ret"
	echo "APP_UID = $TEST_APP_UID"
else
	echo "UID_CHECKER: $ret"
	cleanup 3
fi

adb shell monkey -p "$APP_PACKAGE_NAME" 1
if [[ ! -f "$LOGIN_PY_SCRIPT" ]] || ! python "$LOGIN_PY_SCRIPT"; then
	echo "Auto login failed.."
	cleanup 10
fi

echo "TEST_TIME_BUDGET = ${TEST_TIME_BUDGET}"
DEV_RESTART_COMMAND="adb reboot" \
	bash device-monitor.sh `expr ${TEST_TIME_BUDGET} + 30` &
export PID_COP="$!"

screen -dmS "logcat-${EMU_ID}" "$AUTO_RERUN_SCRIPT_PATH" 1 bash "run-logcat.sh" "${OUT_DIR}/logcat-crash.log" "${OUT_DIR}/logcat-crash.err.log"

# ${TOOL_ID}-${APP_PACKAGE_NAME}
run_info_hash=$(echo "${APP_PACKAGE_NAME}" | md5sum | head -c 8)  # Up to 2^32 to fit in unsigned int
export TOOL_RANDOM_SEED=$(echo "obase=10; ibase=16; ${run_info_hash^^}" | bc)

# Restart app to make sure that MiniTrace starts to work
adb shell am force-stop "${APP_PACKAGE_NAME}"
sleep 1
adb shell monkey -p "${APP_PACKAGE_NAME}" 1
sleep 2
# read -p "Press enter to continue"

CAP_TIMEOUT=`expr ${TEST_TIME_BUDGET} + 15`
[[ -d "../minicap" ]] && screen -dmS "minicap-${EMU_ID}" timeout "${CAP_TIMEOUT}" bash "../minicap/start.sh"
sleep 1
if [[ -d "../test-recorder" ]]; then
	ADB_SHELL_APP_RESTART_COMMAND="am force-stop $APP_PACKAGE_NAME && monkey -p $APP_PACKAGE_NAME 1" \
	APP_RESTART_COMMAND="adb shell '$ADB_SHELL_APP_RESTART_COMMAND'" \
	DEV_RESTART_COMMAND="adb reboot" \
		screen -dmS "recorder-${EMU_ID}" bash "../test-recorder/run.sh" cleanup
fi
sleep 1
screen -dmS "minitrace-${EMU_ID}" bash "gather-cov-and-cleanup.sh"

sleep 1
screen -dmS "logcat-toller-${EMU_ID}" "$AUTO_RERUN_SCRIPT_PATH" 1 bash "run-logcat-toller.sh" "${OUT_DIR}/logcat-toller.log" "${OUT_DIR}/logcat-toller.err.log"

bash "run-all-${TOOL_ID}.sh" "$EMU_ID" "$APP_PACKAGE_NAME" "$OUT_DIR" "$APK_PATH"

if [[ "$?" == "0" ]]; then
	echo "Tool started.."
	echo "Press Enter to finish running.."
	echo "PID_COP = $PID_COP"
	trap "kill ${PID_COP}" INT
	while kill -0 "$PID_COP"; do
		read -t 0 && kill "${PID_COP}" && break
		sleep 2
	done
fi

echo "Cleaning up test env.."
screen_int "${TOOL_ID}-${EMU_ID}"
sleep 1
screen_int "minicap-${EMU_ID}"
screen_int "recorder-${EMU_ID}"
screen_int "minitrace-${EMU_ID}"
screen_int "logcat-toller-${EMU_ID}"
screen_int "logcat-${EMU_ID}"

# Ape is special
screen_int "ape-cleaner-${EMU_ID}"

cleanup 0
} > >(ts "%Y/%m/%d %H:%M:%.S" | tee -a "${OUT_DIR}/main.log") 2>&1
