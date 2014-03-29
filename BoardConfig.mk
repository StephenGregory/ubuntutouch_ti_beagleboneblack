# Copyright (C) 2007 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

#added
BOARD_USES_GENERIC_AUDIO := true
BOARD_EGL_CFG := device/ti/beagleboneblack/egl.cfg

#TARGET_ARCH:= set to arm for almost all current Android devices.
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon#not for recovery
ARCH_ARM_HAVE_TLS_REGISTER := true#not for recovery

# Kernel Config
TARGET_PREBUILT_KERNEL := device/ti/beagleboneblack/zImage #specify path for prebuilt kernel
TARGET_NO_KERNEL := true #flag for whether or not to use prebuilt kernel
#TARGET_KERNEL_CONFIG := beagleboneblack_defconfig, configuration file for the BBB filename in linux-dev/KERNEL/arch/arm/config
TARGET_NO_BOOTLOADER := true#not for recovery, this is a non-fastboot indication

#BOARD_KERNEL_CMDLINE:= #not all devices pass boot parameters however if your device does this must be filled out properly in order to boot successfully.

BOARD_KERNEL_PAGESIZE:= 0x00002048 #the pagesize of the stock boot.img and must be set properly in order to boot. Typical values for this are 2048 and 4096 and this information can be extracted from the stock kernel.

BOARD_BOOTIMAGE_PARTITION_SIZE:= 10485760#something random, the number of bytes allocated to the kernel image partition.

BOARD_RECOVERYIMAGE_PARTITION_SIZE:= 10485760#something random #the number of bytes allocated to the recovery image partition.

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456 #the number of bytes allocated to the Android system filesystem partition.

BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912 #the number of bytes allocated to the Android data filesystem partition.
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 4096 #not recvoery

#BOARD_HAS_NO_SELECT_BUTTON: (optional), use this if your device needs to use its Power button to confirm selections in recovery.
#BOARD_MKBOOTIMG_ARGS: (optional), use these to force a specific address for the ramdisk. This is usually needed on larger partitions in order for the ramdisk to be loaded properly where it's expected to exist. This value can be obtained from the stock kernel. 

#BOARD_HAVE_BLUETOOTH := false

#TARGET_NO_RECOVERY := true

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := omap3
TARGET_BOOTLOADER_BOARD_NAME := beagleboneblack
BOARD_USB_CAMERA := true
#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

TARGET_PROVIDES_INIT_RC := true #this isn't enabled in old src

#this is all extra
#BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
#BOARD_HOSTAPD_DRIVER             := WEXT
#WPA_SUPPLICANT_VERSION           := VER_0_8_X
#BOARD_WLAN_DEVICE                := wlan0



############SAMSUNG#################

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE := si4709

# Bluetooth
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/galaxysbmtd/bluetooth

# Recovery
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/ti/beagleboneblack/recovery/recovery_keys.c

#TARGET_OTA_ASSERT_DEVICE := galaxysb,galaxysbmtd,GT-I9000B

# Import the aries-common BoardConfigCommon.mk
#include device/samsung/aries-common/BoardConfigCommon.mk
