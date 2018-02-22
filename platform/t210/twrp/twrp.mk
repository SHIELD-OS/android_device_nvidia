PRODUCT_COPY_FILES += \
                      device/nvidia/platform/t210/twrp/twrp.fstab.emmc:recovery/root/etc/twrp.fstab.emmc \
                      device/nvidia/platform/t210/twrp/twrp.fstab.sata:recovery/root/etc/twrp.fstab.sata

TW_THEME := landscape_hdpi
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := /sys/class/backlight/pwm-backlight/brightness
TW_MAX_BRIGHTNESS := 255
