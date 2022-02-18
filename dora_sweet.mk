#
# Copyright (C) 2021 The DoraemonOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common DoraemonOS stuff
TARGET_USES_AOSP_RECOVERY := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
$(call inherit-product, vendor/dora/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := dora_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

# Maintainer Properties
DORA_BUILD_TYPE := OFFICIAL
DORA_MAINTAINER := KernelPanix

# GMS Client Base
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
