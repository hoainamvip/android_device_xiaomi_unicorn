#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AxionOS flags
TARGET_DISABLE_EPPE := true
AXION_CAMERA_REAR_INFO := 50,50,50
AXION_CAMERA_FRONT_INFO := 32
AXION_MAINTAINER := hoainamvip
AXION_PROCESSOR := Snapdragon_8+_Gen_1
TARGET_INCLUDE_AXFX := false

# Size boot animation
TARGET_BOOT_ANIMATION_RES := 1080

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
