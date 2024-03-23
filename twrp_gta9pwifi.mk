#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gta9pwifi device
$(call inherit-product, device/samsung/gta9pwifi/device.mk)

PRODUCT_DEVICE := gta9pwifi
PRODUCT_NAME := twrp_gta9pwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X210
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta9pwifixx-user 11 RP1A.200720.012 X210XXU1BXA7 release-keys"

BUILD_FINGERPRINT := samsung/gta9pwifixx/gta9pwifi:11/RP1A.200720.012/X210XXU1BXA7:user/release-keys
