#!/bin/bash

[[ -z "$TOOL_RANDOM_SEED" ]] && TOOL_RANDOM_SEED=$(date +%s)
echo "Ape random seed = $TOOL_RANDOM_SEED"

cd ../ape/
python3 install.py
bash ../useful-scripts/auto-rerun.sh 1 \
    python3 ape.py \
        -p "$APP_PACKAGE_NAME" \
        -s "$TOOL_RANDOM_SEED" \
        --running-minutes 9999 \
        --ape sata > >(ts "%Y/%m/%d %H:%M:%.S" >"${OUT_DIR}/ape.log") 2>&1 &
pid=$!
trap "kill ${pid}; exit 1" INT
wait
