#
# Copyright (C) 2013 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
-include device/samsung/smdk4412-common/BoardCommonConfig.mk

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 androidboot.selinux=permissive

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2235564032
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12813598720

# F2FS filesystem
TARGET_USERIMAGES_USE_F2FS := true

# exFAT kernel support
KERNEL_EXFAT_MODULE_NAME := "exfat"

# Exynos4x12 Tablet
BOARD_EXYNOS4X12_TABLET := true

# Graphics
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := false
BOARD_USE_SYSFS_VSYNC_NOTIFICATION := false

# Camera
BOARD_USES_PROPRIETARY_LIBCAMERA := true

# Recovery
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_RECOVERY_SWIPE := true

# Sensors
BOARD_USE_LEGACY_SENSORS_FUSION := false

# Button backlight
BOARD_EXYNOS4X12_TABLET_HAS_LED_BUTTONS := true

# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

# Flip cover sensor
BOARD_HAS_EXTENDED_SWITCH := true

# inherit from the proprietary version
-include vendor/samsung/lt01-common/BoardConfigVendor.mk

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/lt01-common/selinux

BOARD_SEPOLICY_UNION += \
    file_contexts \
    te_macros \
    device.te \
    dhcp.te \
    domain.te \
    file.te \
    init.te \
    kickstart.te \
    mediaserver.te \
    netmgrd.te \
    qmux.te \
    rild.te \
    secril.te \
    system.te \
    ueventd.te \
    vold.te \
    wpa_supplicant.te

# TWRP Recovery
DEVICE_RESOLUTION := 800x1280
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
BOARD_HAS_NO_REAL_SDCARD := true
SP1_NAME := "efs"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
SP2_NAME := "modem"
SP2_BACKUP_METHOD := image
SP2_MOUNTABLE := 0
TARGET_USERIMAGES_USE_EXT4 := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_FUSE_EXFAT := true
HAVE_SELINUX := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_SCREEN_BLANK := true
TW_NO_SCREEN_TIMEOUT := true
HAVE_SELINUX := true

