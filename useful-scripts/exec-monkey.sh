#!/bin/bash

AUTO_RERUN_SCRIPT_PATH="./auto-rerun.sh"

[[ -z "$THROTTLE" ]] && THROTTLE="200"
[[ -z "$TOOL_RANDOM_SEED" ]] && TOOL_RANDOM_SEED=$(date +%s)

export ADB_SHELL_APP_RESTART_COMMAND="pkill monkey && am force-stop $APP_PACKAGE_NAME && monkey -p $APP_PACKAGE_NAME 1"
export APP_RESTART_COMMAND="adb shell '$ADB_SHELL_APP_RESTART_COMMAND'"

timeout "$TEST_TIME_BUDGET" \
	"$AUTO_RERUN_SCRIPT_PATH" 1 \
		adb shell monkey \
			-p "$APP_PACKAGE_NAME" \
			--throttle "$THROTTLE" \
			-s "$TOOL_RANDOM_SEED" \
			-v -v -v \
			--kill-process-after-error \
			99999999 \
	> >(ts "%Y/%m/%d %H:%M:%.S" >"${OUT_DIR}/monkey.log") 2>&1 &
pid=$!
trap "kill ${pid}" INT
wait

adb shell kill -9 $(adb shell ps | grep 'monkey' | awk '{print $2}')
