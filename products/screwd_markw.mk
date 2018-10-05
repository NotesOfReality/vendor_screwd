# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

#COPY THIS FILE IN "/vendor/screwd/products" AND ADD THE FOLLOWING UNCOMMENTED (Two times because it's coolest this way) LINES TO "/vendor/screwd/products/AndroidProducts.mk"
##ifeq (screwd_markw,$(TARGET_PRODUCT))
##    PRODUCT_MAKEFILES += $(LOCAL_DIR)/screwd_markw.mk
##endif

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

ifeq (screwd_markw,$(TARGET_PRODUCT))

# Include Screw'd common configuration
include vendor/screwd/main.mk

# Inherit from markw device
$(call inherit-product, device/xiaomi/markw/device.mk)

PRODUCT_NAME := screwd_markw
PRODUCT_DEVICE := markw
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR := Xiaomi

TARGET_KERNEL_SOURCE := kernel/xiaomi/markw
TARGET_KERNEL_CONFIG := markw_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-opt-linux-android-

endif

