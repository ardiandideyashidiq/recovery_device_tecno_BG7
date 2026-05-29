#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from BG7 device
$(call inherit-product, device/tecno/BG7/device.mk)

PRODUCT_DEVICE := BG7
PRODUCT_NAME := twrp_BG7
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := Tecno Spark 20C
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_bg7_xe674s-user 12 SP1A.210812.016 980774 release-keys"

BUILD_FINGERPRINT := TECNO/BG7-OPPJ/TECNO-BG7:12/SP1A.210812.016/260121V152:user/release-keys
