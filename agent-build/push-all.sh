#!/bin/bash

ADB_BASE="adb -s emulator-5554"

$ADB_BASE remount

do_sth() {
	echo "$1"
	bash -c "$1"
}

pushd "./genoat/"

cd boot
for arch in "x86" "x86_64"; do
	cd "$arch"
	for fn in "boot.art" "boot.oat"; do
		do_sth "${ADB_BASE} push ${fn} /system/framework/${arch}/${fn}"
	done
	cd ..
done
cd ..

cd framework
for arch in "x86" "x86_64"; do
	cd "$arch"
	for fn in *.odex; do
		do_sth "${ADB_BASE} push ${fn} /system/framework/oat/${arch}/${fn}"
		# break
	done
	cd ..
done
cd ..

for comp in "app" "priv-app"; do
	cd "$comp"
	for arch in "x86" "x86_64"; do
		cd "$arch"
		for fn in *.odex; do
			bname=$(basename "$fn" ".odex")
			do_sth "${ADB_BASE} push ${fn} /system/${comp}/${bname}/oat/${arch}/${fn}"
			# break
		done
		cd ..
	done
	cd ..
done

popd

pushd "./full-system"

for fn in lib/libart*.so lib64/libart*.so; do
	do_sth "${ADB_BASE} push ${fn} /system/${fn}"
done

popd
