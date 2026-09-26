#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rtwo device
$(call inherit-product, device/motorola/rtwo/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion about:
AXION_CAMERA_REAR_INFO := 50,50,12
AXION_CAMERA_FRONT_INFO := 15.3
AXION_MAINTAINER := @joao-lisa
AXION_PROCESSOR :=Snapdragon®_8_Gen_2

# Axion flags:
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true
PRODUCT_NO_CAMERA := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120,165
BYPASS_CHARGE_SUPPORTED := true
TARGET_SUPPORT_BOOT_ANIMATIONS := true
TARGET_HAS_UDFPS := true
TARGET_NEEDS_VULKAN_MEDIA_FIX := true

PRODUCT_NAME := lineage_rtwo
PRODUCT_DEVICE := rtwo
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 pro

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rtwo_g-user 16 W1TRS36H.56-13-1-3 cb3b97-65907 release-keys MW-419" \
    BuildFingerprint=motorola/rtwo_g/rtwo:16/W1TRS36H.56-13-1-3/cb3b97-65907:user/release-keys \
    DeviceProduct=rtwo_g
