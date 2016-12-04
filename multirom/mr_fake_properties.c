#include <stdlib.h>

// Allows to specify a device/custom specific file for
// additional properties needed by decryption
const char *mr_fake_properties[][2] =
{
    //{property, value}
    { "sys.keymaster.loaded", "true" },               // used by keystore.msm8996.so / keystore.default.so
    { "ro.boot.bootdevice", "7464900.sdhci" },        // used by libcryptfs_hw.so
    { "ro.crypto.state", "encrypted" },               // used by libcryptfs.so
    { NULL, NULL}
};
