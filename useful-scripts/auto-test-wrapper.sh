#!/bin/bash

export TEST_TIME_BUDGET="3600"

export APP_ID="$1"
export APK_PATH="$2"
export TOOL_ID="$3"
export REP="$4"
export LOGIN_PY_SCRIPT="$5"

TRACE_ID="${TOOL_ID}-${APP_ID}-${REP}"
export OUT_DIR="../test-logs/${TRACE_ID}"
export SCREEN_OUT_DIR="../test-logs/${TRACE_ID}"

if [ -d "$OUT_DIR" ]; then
	echo "It seems that $OUT_DIR is already there. Not overriding at the moment.."
	exit 1
fi
mkdir -p "$OUT_DIR"
chmod 775 "$OUT_DIR"

# Assume that screen output folder already belongs to us.
rm -rf "$SCREEN_OUT_DIR"
mkdir -p "$SCREEN_OUT_DIR"
chmod 775 "$SCREEN_OUT_DIR"

screen -dmS "main-${TRACE_ID}" bash auto-test-app.sh