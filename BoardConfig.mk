#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8150-common
include device/xiaomi/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/vayu

# Assert
TARGET_OTA_ASSERT_DEVICE := vayu,bhima

# Display
TARGET_SCREEN_DENSITY := 410

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_vayu
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_vayu

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/vayu.config

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/vayu/BoardConfigVendor.mk
