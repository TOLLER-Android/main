#!/bin/bash

EMU_ID="$1"
export APP_PACKAGE_NAME="$2"
export OUT_DIR="$3"
if [[ -z "$ANDROID_SERIAL" ]]; then
	export ANDROID_SERIAL="emulator-${EMU_ID}"
fi
export SERIAL="$ANDROID_SERIAL"

mkdir -p "$OUT_DIR"

confirm_exec() {
	echo "$1"
	# read -p "Press enter to execute"
	$1
	sleep 1
}

# Address the tool's implementation defects?
if [[ ! -z "$XPATH_BLKLST" ]]; then
	export MAX_CT_WAIT_FOR_ACTIVITY=100 # 10 secs
	export CMD_APP_RESTART="'$ADB_SHELL_APP_RESTART_COMMAND'"
fi

confirm_exec "screen -dmS ape-${EMU_ID} bash exec-ape.sh"
confirm_exec "screen -dmS ape-cleaner-${EMU_ID} bash del-ape-log-screens.sh"
