#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from haydn device
$(call inherit-product, device/xiaomi/haydn/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# GAPPS config
# 0 - NO GAPPS (default)
# 1 - CORE GAPPS
# 2 - FULL GAPPS
WITH_GAPPS := 2

# Use Google Telephony pack (Dialer, Contacts, Messaging) on GAPPS builds
# Default = true
TARGET_USE_GOOGLE_TELEPHONY := true

# Include Pixel Framework on FULL GAPPS builds
# Default = true
TARGET_USE_PIXEL_FRAMEWORK := true

# Alpha prop
ALPHA_BUILD_TYPE := unofficial
ALPHA_MAINTAINER := frozenking

# Set Boot Animination Resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := haydn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2012K11G
PRODUCT_NAME := lineage_haydn

PRODUCT_SYSTEM_NAME := haydn_global
PRODUCT_SYSTEM_DEVICE := haydn


# Alpha internal properties
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Debugging
TARGET_INCLUDE_MATLOG := false
TARGET_DEFAULT_ADB_ENABLED := true


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="haydn_global-user 13 TKQ1.220829.002 V14.0.5.0.TKKMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/haydn_global/haydn:13/TKQ1.220829.002/V14.0.5.0.TKKMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
