#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true

# camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true
BOARD_VENDOR_USE_AKMD := akm8973

TARGET_BOOTLOADER_BOARD_NAME := s7

BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200n8 androidboot.hardware=qsd8k_s7
BOARD_KERNEL_BASE := 0x20000000
BOARD_PAGE_SIZE := 0x00000800

BOARD_EGL_CFG := device/huawei/s7/include/egl.cfg

# USB mass storage
BOARD_CUSTOM_USB_CONTROLLER := ../../device/huawei/s7/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# WiFi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/rtecdc-apsta-bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/rtecdc-apsta-bcm4329.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/rtecdc-bcm4329.bin nvram_path=/system/etc/wifi/nvram-bcm4329.txt"
WIFI_DRIVER_MODULE_NAME     := "dhd"
# fix work on old kernel
BOARD_WEXT_NO_COMBO_SCAN    := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# fix this up by examining /proc/mtd on a running device
# cat /proc/mtd
#dev:  size     erasesize name
mtd0: 00500000 00020000 "boot"
mtd1: 00500000 00020000 "recovery"
mtd2: 0fa00000 00020000 "system"
mtd3: 02100000 00020000 "cache"
mtd4: 0a000000 00020000 "userdata"
mtd5: 00200000 00020000 "logo"
mtd6: 000e0000 00020000 "splash"
mtd7: 00200000 00020000 "misc"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0a000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0af00000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_MISC_PARTITION := true

TARGET_PREBUILT_KERNEL := device/huawei/s7/prebuilt/kernel
#
BOARD_DATA_DEVICE := /dev/block/mtdblock4
BOARD_DATA_FILESYSTEM := yaffs2
#
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock2
BOARD_SYSTEM_FILESYSTEM := yaffs2
#
BOARD_CACHE_DEVICE := /dev/block/mtdblock3
BOARD_CACHE_FILESYSTEM := yaffs2
#storage
#BOARD_SDEXT_DEVICE := /dev/block/mmcblk0p2
#BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p1
#BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1
