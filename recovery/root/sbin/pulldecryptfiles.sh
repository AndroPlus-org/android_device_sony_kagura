#!/sbin/sh

# This pulls the files out of /system that are needed for decrypt and module loading
# This allows us to decrypt the device in recovery and still be
# able to unmount /system when we are done.

mkdir -p /system
mount -t ext4 -o ro /dev/block/bootdevice/by-name/system /system

cp /system/vendor/lib64/lib-sec-disp.so /sbin/lib-sec-disp.so
cp /system/vendor/lib64/libGPreqcancel.so /sbin/libGPreqcancel.so
cp /system/vendor/lib64/libGPreqcancel_svc.so /sbin/libGPreqcancel_svc.so
cp /system/vendor/lib64/libQSEEComAPI.so /sbin/libQSEEComAPI.so
cp /system/vendor/lib64/libStDrvInt.so /sbin/libStDrvInt.so
cp /system/vendor/lib64/hw/keystore.msm8996.so /sbin/keystore.msm8996.so
cp /system/vendor/lib64/libdiag.so /sbin/libdiag.so
cp /system/vendor/lib64/libdrmfs.so /sbin/libdrmfs.so
cp /system/vendor/lib64/libdrmtime.so /sbin/libdrmtime.so
cp /system/vendor/lib64/libqisl.so /sbin/libqisl.so
cp /system/vendor/lib64/librpmb.so /sbin/librpmb.so
cp /system/vendor/lib64/libsecureui.so /sbin/libsecureui.so
cp /system/vendor/lib64/libsecureui_svcsock.so /sbin/libsecureui_svcsock.so
cp /system/vendor/lib64/libssd.so /sbin/libssd.so
cp /system/vendor/lib64/libtime_genoff.so /sbin/libtime_genoff.so

# Copy proprietary kernel modules
cp /system/lib/modules/core_ctl.ko /sbin/core_ctl.ko
cp /system/lib/modules/ecryptfs.ko /sbin/ecryptfs.ko
cp /system/lib/modules/kscl.ko /sbin/kscl.ko
cp /system/lib/modules/texfat.ko /sbin/texfat.ko

# Load proprietary kernel modules
insmod /sbin/core_ctl.ko
insmod /sbin/ecryptfs.ko
insmod /sbin/kscl.ko
insmod /sbin/texfat.ko

umount /system

mkdir -p /vendor/lib64/hw
cp /sbin/lib-sec-disp.so /vendor/lib64/lib-sec-disp.so
cp /sbin/libGPreqcancel.so /vendor/lib64/libGPreqcancel.so
cp /sbin/libGPreqcancel_svc.so /vendor/lib64/libGPreqcancel_svc.so
cp /sbin/libQSEEComAPI.so /vendor/lib64/libQSEEComAPI.so
cp /sbin/libStDrvInt.so /vendor/lib64/libStDrvInt.so
cp /sbin/keystore.msm8996.so /vendor/lib64/hw/keystore.msm8996.so
cp /sbin/libdiag.so /vendor/lib64/libdiag.so
cp /sbin/libdrmfs.so /vendor/lib64/libdrmfs.so
cp /sbin/libdrmtime.so /vendor/lib64/libdrmtime.so
cp /sbin/libqisl.so /vendor/lib64/libqisl.so
cp /sbin/librpmb.so /vendor/lib64/librpmb.so
cp /sbin/libsecureui.so /vendor/lib64/libsecureui.so
cp /sbin/libsecureui_svcsock.so /vendor/lib64/libsecureui_svcsock.so
cp /sbin/libssd.so /vendor/lib64/libssd.so
cp /sbin/libtime_genoff.so /vendor/lib64/libtime_genoff.so
