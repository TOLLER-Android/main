#!/bin/bash

FULL_SYSTEM_FOLDER="/system"
TARGET_FOLDER="./original"

for ARCH in "x86" "x86_64"; do # "arm" # CHECK
	for COMPONENT in "app" "priv-app"; do
		SYS_PATH="${FULL_SYSTEM_FOLDER}/${COMPONENT}"
		TAR_PATH="${TARGET_FOLDER}/${COMPONENT}/${ARCH}"

		rm -rf $TAR_PATH
		mkdir -p $TAR_PATH

		for app in $SYS_PATH/*; do
			if [ ! -e "${app}/oat/${ARCH}" ]; then
				continue
			fi
			name=$(basename $app)
			odex="${app}/oat/${ARCH}/${name}.odex"
			echo $odex
			cp $odex "${TAR_PATH}/${name}.odex"
		done
	done
done