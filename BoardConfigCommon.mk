# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# throughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

TARGET_SPECIFIC_HEADER_PATH := device/semc/msm7x27-common/include

## Camera
USE_CAMERA_STUB := true
BOARD_USES_ECLAIR_LIBCAMERA := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BUILD_CAMERAHAL := true
TARGET_DISABLE_ARM_PIE := true
BOARD_USES_LEGACY_CAMERA := true
TARGET_DISABLE_METADATA_IN_BUFFERS := true

## ARMv6-compatible processor rev 5 (v6l)
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

BOARD_USE_SCREENCAP := true
TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
TARGET_USE_SOFTWARE_AUDIO_AAC := true
COPYBIT_MSM7K := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

## GPS
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := delta
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

## Bluetooth
BOARD_HAVE_BLUETOOTH := true
TARGET_CUSTOM_BLUEDROID := ../../../device/semc/msm7x27-common/bluedroid.c
BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true

## Lights
TARGET_PROVIDES_LIBLIGHTS := true

## Wifi
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WLAN_DEVICE := wl1271
BOARD_SOFTAP_DEVICE := wl1271
WPA_SUPPLICANT_VERSION := VER_0_6_X
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/tiwlan_drv.ko
WIFI_DRIVER_MODULE_NAME := tiwlan_drv
WIFI_FIRMWARE_LOADER := wlan_loader
WIFI_EXT_MODULE_PATH := /system/lib/modules/sdio.ko
WIFI_EXT_MODULE_NAME := sdio
WIFI_AP_DRIVER_MODULE_PATH := /system/lib/modules/tiap_drv.ko
WIFI_AP_DRIVER_MODULE_NAME := tiap_drv
WIFI_AP_FIRMWARE_LOADER := wlan_ap_loader
PRODUCT_DEFAULT_WIFI_CHANNELS := 14

## USB
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"

## CFLAGS
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DECLAIR_LIBCAMERA
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX
COMMON_GLOBAL_CFLAGS += -DCPU_COLOR_CONVERT

## JIT
WITH_JIT := true
ENABLE_JSC_JIT:= true
ARCH_ARM_HAVE_VFP := true

## Browser
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

## HW
BOARD_EGL_CFG := device/semc/msm7x27-common/prebuilt/lib/egl/egl.cfg
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_LEGACY_QCOM := false
TARGET_USES_GENLOCK := true
TARGET_USES_OVERLAY := false
TARGET_USES_C2D_COMPOSITION := false
USE_OPENGL_RENDERER := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_USE_SKIA_LCDTEXT := true
TARGET_NO_HW_VSYNC := true

## Kernel
BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_CUSTOM_BOOTIMG_MK := device/semc/msm7x27-common/custombootimg.mk

## Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_COMBO_DEVICE_SUPPORTED := false
BOARD_USES_AUDIO_LEGACY := false

## ODEX
WITH_DEXPREOPT := false

## Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_USE_RGB565 := true

## OTA package maker
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/semc/msm7x27-common/releasetools/semc_ota_from_target_files

## Prelinks
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/device/semc/msm7x27-common/prelink-linux-arm-msm7x27.map

## CWM
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/semc/msm7x27-common/recovery/recovery_keys.c

## TWRP
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_GUI := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_CUSTOM_POWER_BUTTON := 107
BOARD_HAS_NO_REAL_SDCARD := false
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_FLASH_FROM_STORAGE := true
TW_HAS_DOWNLOAD_MODE := false
TW_HAS_NO_RECOVERY_PARTITION := true
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_JB_CRYPTO := false
TW_NEVER_UNMOUNT_SYSTEM := false
TW_NO_BATT_PERCENT := false
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_USB_STORAGE := false
TW_SDEXT_NO_EXT4 := false
