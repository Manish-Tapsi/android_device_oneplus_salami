#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from salami device
$(call inherit-product, device/oneplus/salami/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_salami
PRODUCT_DEVICE := salami
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2449

PRODUCT_SYSTEM_NAME := $(PRODUCT_MODEL)
PRODUCT_SYSTEM_DEVICE := OP594DL1

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Boot animation
TARGET_SCREEN_HEIGHT := 3216
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# UDFPS Flags
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Extra Flags
TARGET_DISABLE_EPPE := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true

# Evolution-X
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1440
EVO_BUILD_TYPE := Unofficial
TARGET_BUILD_APERTURE_CAMERA := true

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# Nuke Auxio
TARGET_EXCLUDES_AUXIO := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CPH2449EEA-user 14 TP1A.220905.001 T.R4T3.191344f_1-b3bf8 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/CPH2449EEA/OP594DL1:14/TP1A.220905.001/T.R4T3.191344f_1-b3bf8:user/release-keys
