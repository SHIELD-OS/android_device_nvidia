# NVIDIA Tegra7 "foster-e" development system
#
# Copyright (c) 2014-2018, NVIDIA Corporation.  All rights reserved.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/google/atv/products/atv_base.mk)

## All essential packages
$(call inherit-product, device/nvidia/platform/t210/device.mk)

## Install GMS if available
$(call inherit-product-if-exists, 3rdparty/google/gms-apps/tv64/products/gms.mk)
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.clientidbase=android-nvidia

## Thse are default settings, it gets changed as per sku manifest properties
PRODUCT_NAME := foster
PRODUCT_DEVICE := t210
PRODUCT_MODEL := SHIELD TV
PRODUCT_MANUFACTURER := NVIDIA
PRODUCT_BRAND := NVIDIA

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320

PRODUCT_PACKAGES += \
    PlexMediaServer \
    VUDUAndroidTV4K \
    NvIgnition

#SHIELD user registration
PRODUCT_PACKAGES += \
    NvRegistration

## Copy gpsconfig file
PRODUCT_COPY_FILES += \
    $(call add-to-product-copy-files-if-exists, vendor/nvidia/tegra/3rdparty/broadcom/gps/bin/gpsconfig-wf-t210ref.xml:system/etc/gps/gpsconfig.xml)


## Factory scripts, common for mp images, among multiple skus.
$(call inherit-product-if-exists, vendor/nvidia/diag/common/mp_common.mk)

## common apps for all skus
$(call inherit-product-if-exists, vendor/nvidia/loki/skus/foster_common.mk)

## nvidia apps for this sku
$(call inherit-product-if-exists, vendor/nvidia/$(_product_device)/skus/$(_product_name).mk)

## 3rd-party apps for this sku
$(call inherit-product-if-exists, 3rdparty/applications/prebuilt/common/$(_product_name).mk)

## eks2 data blob
PRODUCT_COPY_FILES += \
    $(call add-to-product-copy-files-if-exists, device/nvidia/platform/t210/eks2/eks2_foster.dat:system/vendor/app/eks2/eks2.dat)

