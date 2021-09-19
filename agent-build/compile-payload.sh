#!/bin/bash

SRC_DIR="../on-device-agent/java" # CHECK
PKG="edu/illinois/cs/ase"

ANDROID_FRAMEWORK="$ANDROID_HOME/platforms/android-23/android.jar"
DX_PATH="$ANDROID_HOME/build-tools/28.0.3/dx" # CHECK
BAKSMALI_BASE="./baksmali-2.3.4.jar" # CHECK

CURR_DIR=$(pwd)
SRC_TMP="${CURR_DIR}/src_tmp"
CLASS_TMP="${CURR_DIR}/class_tmp"
OUT_DIR="${CURR_DIR}/out"

rm -rf "${SRC_TMP}"
mkdir -p "${SRC_TMP}/${PKG}"
cp -r "${SRC_DIR}/${PKG}"/*.java "${SRC_TMP}/${PKG}/"

rm -rf "${CLASS_TMP}"
mkdir -p "${CLASS_TMP}"

pushd "$SRC_TMP"
for f in "$PKG"/*.java; do
    javac -cp "${ANDROID_FRAMEWORK}:${SRC_DIR}" -d "${CLASS_TMP}" -source 1.7 -target 1.7 "$f"
done
popd

pushd "$CLASS_TMP"
"$DX_PATH" --dex --output=out.dex ./
java -jar "${BAKSMALI_BASE}" d -o "${OUT_DIR}" out.dex
popd
