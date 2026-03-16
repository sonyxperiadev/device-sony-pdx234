# Copyright 2014 The Android Open Source Project
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

# Platform
PRODUCT_PLATFORM := yodo

include device/sony/yodo/PlatformConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := unknown
ifneq (,$(filter %xqdq54,$(TARGET_PRODUCT)))
TARGET_BOOTLOADER_BOARD_NAME := XQ-DQ54
else
TARGET_BOOTLOADER_BOARD_NAME := XQ-DQ54
$(warning Unrecognized value for TARGET_PRODUCT: "$(TARGET_PRODUCT)", using default value: "$(TARGET_BOOTLOADER_BOARD_NAME)")
endif

# Kernel cmdline
BOARD_BOOTCONFIG += androidboot.hardware=pdx234
BOARD_KERNEL_CMDLINE += androidboot.fstab_suffix=pdx234

# FB console
#BOARD_KERNEL_CMDLINE += earlycon=simplefb,0xb8000000,1096,2560

# Partition information
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x06000000
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE := 0x00800000
BOARD_DTBOIMG_PARTITION_SIZE := 0x01800000
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 0x06000000

BOARD_SUPER_PARTITION_SIZE := 14495514624

# Set error limit to SUPER_PARTITION_SIZE - 500MiB
BOARD_SUPER_PARTITION_ERROR_LIMIT := 13971226624

# DYNAMIC_PARTITIONS_SIZE = (SUPER_PARTITION_SIZE / 2) - 4MiB
BOARD_SOD_DYNAMIC_PARTITIONS_SIZE := 7243563008

# Reserve space for data encryption (0x35E7AA5000-0x4000)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 231519948800
