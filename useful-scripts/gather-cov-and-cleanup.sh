#!/bin/bash

export OUT_DIR="${OUT_DIR}/minitrace"
mkdir -p "$OUT_DIR"

bash "./gather-minitrace-cov.sh" > >(ts "%Y/%m/%d %H:%M:%.S" >"${OUT_DIR}/minitrace.log") 2>&1 &
pid=$!
trap "kill ${pid}" INT
wait

# mini_trace_${TEST_APP_UID}_*
adb shell rm "/data/mini_trace_*"
