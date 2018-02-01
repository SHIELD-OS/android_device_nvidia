# Inherit device configuration for jetson.
$(call inherit-product, device/nvidia/jetson/jetson.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

PRODUCT_NAME := lineage_jetson
PRODUCT_DEVICE := t124