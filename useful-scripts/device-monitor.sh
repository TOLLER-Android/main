#!/bin/bash

TAG="DEVICE_MONITOR"

start_time=`date +%s`
echo "${TAG}: START_TIME = $start_time"
time_limit="$1"
echo "${TAG}: TIME_LIMIT = $time_limit"

MAGIC_KEYWORD="BANANA_BANANA_BANANA"

while true; do
    elapsed_time=$(expr `date +%s` - "$start_time")
    if [[ "$elapsed_time" -ge "$time_limit" ]]; then
        echo "${TAG}: Time up, ELAPSED_TIME = $elapsed_time"
        exit 0
    fi
    state=`timeout 2 adb shell echo "$MAGIC_KEYWORD" 2>&1 | tr -d '[:space:]'`
    if [[ "$state" = "$MAGIC_KEYWORD" ]]; then
        true
    else
        echo "${TAG}: ${ANDROID_SERIAL} not available"
        if [[ -z "$DEV_RESTART_COMMAND" ]] || [[ ! -z "$NO_DEV_RESTART" ]]; then
            exit 10
        else
            bash -c "$DEV_RESTART_COMMAND"
        fi
    fi
    sleep 10
done
