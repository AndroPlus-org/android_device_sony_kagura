#!/bin/sh
# $1 - path to top of android build tree
# $2 path to /multirom/enc folder in installation zip

# Constants
DEVICE_PATH="device/sony/kagura";

# Import decrypt files
mkdir -p "$2/vendor/firmware";
mkdir -p "$2/vendor/lib64/hw";
cp -ra "$1/${DEVICE_PATH}/recovery/root/sbin/strace" "$2/";
cp -ra "$1/${DEVICE_PATH}/recovery/root/vendor/firmware/"* "$2/vendor/firmware/";
cp -ra "$1/${DEVICE_PATH}/recovery/root/vendor/lib64/"*".so" "$2/";
cp -ra "$1/${DEVICE_PATH}/recovery/root/vendor/lib64/hw/keystore.msm8996.so" "$2/vendor/lib64/hw/keystore.default.so";
cp -ra "$1/${DEVICE_PATH}/multirom_enc_blobs/"* "$2/";
mv "$2/libQSEEComAPI.so" "$2/vendor/lib64/";
