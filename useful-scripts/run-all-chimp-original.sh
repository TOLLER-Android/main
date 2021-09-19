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

confirm_exec "screen -dmS chimp-${EMU_ID} bash exec-chimp-original.sh"
