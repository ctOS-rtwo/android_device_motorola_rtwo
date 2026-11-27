#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# All components inherited here go to system image
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_system.mk)

# All components inherited here go to system_ext image
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# All components inherited here go to product image
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_product.mk)

# All components inherited here go to vendor image
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)

# Inherit from rtwo device
$(call inherit-product, device/motorola/rtwo/device.mk)

# GrapheneOS boot animation (1080x2400)
$(call soong_config_set,bootanimation_zip,canvas_size,1080)

# GrapheneOS CarrierConfig2 & telephony integration
PRODUCT_PACKAGES += \
    CarrierConfig2

PRODUCT_NAME := rtwo
PRODUCT_DEVICE := rtwo
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 pro

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rtwo_g-user 16 W1TRS36H.56-13-1-3 cb3b97-65907 release-keys MW-419" \
    BuildFingerprint=motorola/rtwo_g/rtwo:16/W1TRS36H.56-13-1-3/cb3b97-65907:user/release-keys \
    DeviceProduct=rtwo_g
