# Copyright (C) 2009 The Android Open Source Project
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
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/shooter/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/htc/shooter/include

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

BOARD_USES_ADRENO_200 := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4329
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcm4329/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA          := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME          := "bcm4329"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/proc/calibration iface_name=wlan"
BOARD_WLAN_DEVICE_REV            := bcm4329
WIFI_BAND                        := 802_11_ABG

BOARD_NEEDS_CUTILS_LOG := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_AUDIO_LEGACY := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_EGL_CFG := device/htc/shooter/egl.cfg

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

BOARD_USES_QCOM_GPS := true
BOARD_USE_QCOM_PMEM := true


TARGET_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE
USE_OPENGL_RENDERER := true
TARGET_QCOM_HDMI_OUT := true
TARGET_USES_OVERLAY := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_SF_BYPASS := true
TARGET_HAVE_BYPASS := true

BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

TARGET_BOOTLOADER_BOARD_NAME := shooter
TARGET_PROVIDES_LIBRIL := vendor/htc/shooter/proprietary/libril.so

BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=shooter no_console_suspend=1
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048 

#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := shooter
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

#BOARD_HAVE_SQN_WIMAX := true
#TARGET_HARDWARE_3D := true

# cat /proc/emmc
#dev:        size     erasesize name
# mmcblk0p17: 00040000 00000200 "misc"
# mmcblk0p22: 00fffc00 00000200 "recovery"
# mmcblk0p21: 01000000 00000200 "boot"
# mmcblk0p23: 31fffc00 00000200 "system"
# mmcblk0p32: 00140200 00000200 "local"
# mmcblk0p25: 06ebde00 00000200 "cache"
# mmcblk0p24: 4aabc400 00000200 "userdata"
# mmcblk0p28: 01400000 00000200 "devlog"
# mmcblk0p30: 00040000 00000200 "pdata"
# mmcblk0p18: 02800000 00000200 "radio"
# mmcblk0p19: 007ffa00 00000200 "radio_config"
# mmcblk0p26: 00400000 00000200 "modem_st1"
# mmcblk0p27: 00400000 00000200 "modem_st2"
# mmcblk0p8:  00c00200 00000200 "wimax"
# mmcblk0p33: 007ffa00 00000200 "udata_wimax"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 435941376
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1394606080
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_CUSTOM_GRAPHICS := ../../../device/htc/shooter/recovery/graphics.c
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

TARGET_PREBUILT_KERNEL := device/htc/shooter/kernAl

TARGET_RECOVERY_INITRC := device/htc/shooter/recovery/init.rc
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := 1
