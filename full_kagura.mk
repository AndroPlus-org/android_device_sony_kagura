# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/kagura/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_COPY_FILES += \
    device/sony/kagura/kernel:/kernel

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:root/system/usr/share/zoneinfo/tzdata

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=480 \
    ro.usb.pid_suffix=1E7

PRODUCT_NAME := kagura
PRODUCT_DEVICE := kagura
PRODUCT_MODEL := F8131
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
