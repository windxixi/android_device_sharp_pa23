#
# Copyright (C) 2015 The CyanogenMod Project
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
BOARD_VENDOR := sharp

LOCAL_PATH := device/sharp/303sh

# ReleaseTools
TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)/releasetools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_303sh

# Bootloader
TARGET_HARDWARE_3D := false
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_BOOTLOADER         := true
TARGET_NO_RADIOIMAGE         := true

# Platform
TARGET_BOARD_PLATFORM     := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

USE_CLANG_PLATFORM_BUILD := true

# Architecture
TARGET_ARCH                  := arm
TARGET_NO_BOOTLOADER         := true
TARGET_BOOTLOADER_BOARD_NAME := msm8974
TARGET_BOARD_PLATFORM        := msm8974
TARGET_CPU_ABI               := armeabi-v7a
TARGET_CPU_ABI2              := armeabi
TARGET_ARCH_VARIANT          := armv7-a-neon
TARGET_CPU_VARIANT           := generic
TARGET_HARDWARE              := qcom
ARCH_ARM_HAVE_TLS_REGISTER   := true

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
#BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_CMDLINE               := androidboot.hardware=qcom user_debug=31 maxcpus=2 msm_rtb.filter=0x3F ehci-hcd.park=3
BOARD_KERNEL_SEPARATED_DT          := true
BOARD_KERNEL_BASE                  := 0x00000000
BOARD_KERNEL_PAGESIZE              := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --second_offset 0x00f00000 --tags_offset 0x01e00000
#TARGET_KERNEL_SOURCE               := kernel/sharp/msm8974
#TARGET_KERNEL_SOURCE               := kernel/sharp/303sh
TARGET_KERNEL_ARCH                 := arm
#TARGET_KERNEL_CONFIG               := mokee_303sh_defconfig
#TARGET_KERNEL_CONFIG               := pa23_defconfig
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-
#BOARD_DTBTOOL_ARGS                 := -2

# Vendor Init
TARGET_UNIFIED_DEVICE       := true
TARGET_INIT_VENDOR_LIB      := libinit_303sh
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_303sh.cpp

# QCOM hardware
BOARD_USES_QCOM_HARDWARE            := true
TARGET_POWERHAL_VARIANT             := qcom
TARGET_POWERHAL_SET_INTERACTIVE_EXT := $(LOCAL_PATH)/power/power_ext.c

# Audio
BOARD_USES_ALSA_AUDIO                      := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true

# FM Radio
TARGET_FM_LEGACY_PATCHLOADER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH                        := true
BOARD_HAVE_BLUETOOTH_QCOM                   := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
QCOM_BT_USE_SMD_TTY                         := true
BLUETOOTH_HCI_USE_MCT                       := true

# Radio
TARGET_RIL_VARIANT                := caf
FEATURE_QCRIL_UIM_SAP_SERVER_MODE := true

# Graphics
USE_OPENGL_RENDERER               := true
TARGET_CONTINUOUS_SPLASH_ENABLED  := true
TARGET_USES_C2D_COMPOSITION       := true
TARGET_USE_COMPAT_GRALLOC_PERFORM := true
TARGET_USES_ION                   := true
OVERRIDE_RS_DRIVER                := libRSDriver_adreno.so
NUM_FRAMEBUFFER_SURFACE_BUFFERS   := 3
#BOARD_EGL_CFG := device/sharp/303sh/egl.cfg

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
TARGET_PROVIDES_WCNSS_QMI        := true
TARGET_USES_QCOM_WCNSS_QMI       := true
TARGET_USES_WCNSS_CTRL           := true

# Filesystem
# Use signed boot and TARGET_BOOTIMG_SIGNEDrecovery image
TARGET_BOOTIMG_SIGNED                := false
TARGET_USERIMAGES_USE_EXT4           := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE    := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE       := 17825792
BOARD_RECOVERYIMAGE_PARTITION_SIZE   := 26214400
BOARD_SYSTEMIMAGE_PARTITION_SIZE     := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE   := 12549357568
BOARD_CACHEIMAGE_PARTITION_SIZE      := 281018368
BOARD_PERSISTIMAGE_PARTITION_SIZE    := 33554432
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE := 268435456
BOARD_FLASH_BLOCK_SIZE               := 131072

# Recovery
RECOVERY_FSTAB_VERSION             := 2
TARGET_RECOVERY_FSTAB              := $(LOCAL_PATH)/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT       := "RGBX_8888"
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

#TWRP
DEVICE_RESOLUTION := 1080x1920
#TW_THEME := portrait_hdpi
#RECOVERY_VARIANT := twrp
TW_USE_TOOLBOX := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN
TW_NO_REBOOT_BOOTLOADER := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := false
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_EXCLUDE_MTP := true
TW_EXCLUDE_SUPERSU := true

# MK Hardware
BOARD_USES_MOKEE_HARDWARE = true
BOARD_HARDWARE_CLASS += \
    hardware/mokee/mkhw \
    $(LOCAL_PATH)/mkhw

# No old RPC for prop
TARGET_NO_RPC := true

# GPS HAL lives here
TARGET_GPS_HAL_PATH         := $(LOCAL_PATH)/gps
TARGET_PROVIDES_GPS_LOC_API := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

#for zip
BLOCK_BASED_OTA := true

# Use HW crypto for ODE
TARGET_HW_DISK_ENCRYPTION := false

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Keymaster
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Simple time service client
BOARD_USES_QC_TIME_SERVICES := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
DONT_DEXPREOPT_PREBUILTS := true

# SELinux policies
# qcom sepolicy
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
        $(LOCAL_PATH)/sepolicy

-include vendor/sharp/303sh/BoardConfigVendor.mk
