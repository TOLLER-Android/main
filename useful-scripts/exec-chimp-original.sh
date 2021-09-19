#!/bin/bash

AUTO_RERUN_SCRIPT_PATH="./auto-rerun.sh"
MAIN_SCRIPT_PATH="../test-tools/chimp/main-chimp-original.py"

[[ -z "$THROTTLE" ]] && THROTTLE="200"
[[ -z "$TOOL_RANDOM_SEED" ]] && TOOL_RANDOM_SEED=$(date +%s)

TOLLER_PORT="$CTRL_PORT" \
timeout "$TEST_TIME_BUDGET" \
	"$AUTO_RERUN_SCRIPT_PATH" 1 \
		python3 "$MAIN_SCRIPT_PATH" \
			"$APP_PACKAGE_NAME" \
	>"${OUT_DIR}/chimp.log" 2>&1 &

pid=$!
trap "kill ${pid}" INT
wait
