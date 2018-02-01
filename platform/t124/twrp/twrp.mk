PRODUCT_COPY_FILES += device/nvidia/jetson/twrp/twrp.fstab:recovery/root/etc/twrp.fstab

TW_THEME := landscape_hdpi
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := /sys/class/backlight/pwm-backlight/brightness
TW_MAX_BRIGHTNESS := 255

