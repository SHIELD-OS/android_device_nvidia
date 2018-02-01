# Inherit device configuration for darcy.
$(call inherit-product, device/nvidia/darcy/darcy.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

PRODUCT_NAME := lineage_darcy
PRODUCT_DEVICE := t210