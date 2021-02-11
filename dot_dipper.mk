#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/dipper/device.mk)

# Inherit some common Dot stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# Inherit some common Custom stuff.
$(call inherit-product-if-exists, external/moto/faceunlock/config.mk)

scr_resolution := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := dot_dipper
PRODUCT_DEVICE := dipper
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8
PRODUCT_MANUFACTURER := Xiaomi

# Build fingerprint
BUILD_FINGERPRINT := Xiaomi/dipper/dipper:8.1.0/OPM1.171019.011/V9.5.5.0.OEAMIFA:user/release-keys
BUILD_DESC := dipper-user 8.1.0 OPM1.171019.011 V9.5.5.0.OEAMIFA release-keys

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="dipper" \
    PRIVATE_BUILD_DESC="dipper-user 8.1.0 OPM1.171019.011 V9.5.5.0.OEAMIFA release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
