#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/zte/P875A02
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl.lahaina

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Kernel Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/swr_dlkm.ko:recovery/root/vendor/lib/modules/swr_dlkm.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/swr_haptics_dlkm.ko:recovery/root/vendor/lib/modules/swr_haptics_dlkm.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/zte_goodix_core.ko:recovery/root/vendor/lib/modules/zte_goodix_core.ko

# TouchScreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/firmware/goodix_cfg_group.bin:recovery/root/vendor/firmware/goodix_cfg_group.bin \
    $(LOCAL_PATH)/recovery/root/vendor/firmware/goodix_cfg_group_gt9897.bin:recovery/root/vendor/firmware/goodix_cfg_group_gt9897.bin \
    $(LOCAL_PATH)/recovery/root/vendor/firmware/goodix_firmware.bin:recovery/root/vendor/firmware/goodix_firmware.bin \
    $(LOCAL_PATH)/recovery/root/vendor/firmware/goodix_firmware_gt9897.bin:recovery/root/vendor/firmware/goodix_firmware_gt9897.bin

PRODUCT_PROPERTY_OVERRIDES += sys.usb.controller=a600000.dwc3
