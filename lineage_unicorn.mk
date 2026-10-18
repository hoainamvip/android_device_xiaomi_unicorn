#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_CUSTOM_UDFPS := true
WITH_GMS := true
WITH_GMS_COMMS_SUITE := true
WITH_PIXEL_LAUNCHER := true
TARGET_USE_MAPS := true
TARGET_USE_FILES := true
TARGET_USE_GPHOTOS := true
TARGET_USE_WALLPAPERS := true
TARGET_BOOT_ANIMATION_RES := 1080
USE_REALITY_ENGINE := true
SURFACE_FLINGER_BOOST := true
$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)
PRODUCT_SYSTEM_PROPERTIES += ro.lunaris.maintainer=AnhLaPR59 | 龙卷风

# Inherit from unicorn device
$(call inherit-product, device/xiaomi/unicorn/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_unicorn
PRODUCT_DEVICE := unicorn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 12S Pro

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="unicorn-user 15 AQ3A.250226.002 OS3.0.4.0.VLECNXM release-keys" \
    BuildFingerprint=Xiaomi/unicorn/unicorn:15/AQ3A.250226.002/OS3.0.4.0.VLECNXM:user/release-keys \
    DeviceProduct=unicorn \
    SystemName=unicorn

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
