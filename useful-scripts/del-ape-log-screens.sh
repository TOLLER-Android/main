#!/bin/bash

bash auto-rerun.sh 30 adb shell rm /sdcard/sata-*-ape-sata-running-minutes-*/*.png &
pid=$!
trap "kill ${pid}" INT
wait
adb shell rm /sdcard/sata-*-ape-sata-running-minutes-*/*.png
bash obtain-ape-log.sh "${OUT_DIR}"
