#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from apollo device
$(call inherit-product, device/sony/apollo/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Setup keystore
-include vendor/lineage-priv/keys/keys.mk

PRODUCT_NAME := lineage_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia XZ2 Compact

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ENABLE_BLUR := true
TARGET_DISABLE_EPPE := true

PRODUCT_GMS_CLIENTID_BASE := android-sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="H8324-user 10 52.1.A.3.49 052001A003004902006556692 release-keys" \
    BuildFingerprint=Sony/H8324/H8324:10/52.1.A.3.49/052001A003004902006556692:user/release-keys

TARGET_INCLUDES_LOS_PREBUILTS := true
TARGET_INCLUDE_AXFX := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_TOUCH_BOOST_SUPPORTED := true
TARGET_NEEDS_VULKAN_MEDIA_FIX := true
TARGET_DOZE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED := true

#about phone
AXION_CAMERA_REAR_INFO := 19
AXION_CAMERA_FRONT_INFO := 5
AXION_MAINTAINER := ganx0000
AXION_PROCESSOR := Snapdragon_845
