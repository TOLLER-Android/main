#!/bin/bash

DEV_SH_FILENAME="cmd-obtain-ape-log-${ANDROID_SERIAL}.sh"
DEV_TMP_BASE="/data/local/tmp"

echo "cd /sdcard/ && tar c \\" >"$DEV_SH_FILENAME"

for f in $(adb shell ls /sdcard/); do
	f=${f%$'\r'}
	if [[ "$f" == sata-*-ape-sata-running-minutes-* ]]; then
		echo "$f \\" >>"$DEV_SH_FILENAME"
	fi
done

echo " | gzip >ape-log.tar.gz" >>"$DEV_SH_FILENAME"

adb push "$DEV_SH_FILENAME" "${DEV_TMP_BASE}/${DEV_SH_FILENAME}"
adb shell sh "${DEV_TMP_BASE}/${DEV_SH_FILENAME}"
adb pull "/sdcard/ape-log.tar.gz" "$1/ape-log.tar.gz"
adb shell rm -rf "/sdcard/ape-log.tar.gz" "/sdcard/sata-*-ape-sata-running-minutes-*"
