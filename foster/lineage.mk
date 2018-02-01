# Inherit device configuration for darcy.
$(call inherit-product, device/nvidia/foster/foster.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

PRODUCT_NAME := lineage_foster
PRODUCT_DEVICE := t210