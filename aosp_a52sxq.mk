#
# Copyright (C) 2023 The LineageOS Project
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

# Inherit device configuration
$(call inherit-product, device/samsung/a52sxq/device.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common AOSP stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true

# NFC
TARGET_HAVE_SEC_NFC := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_a52sxq
PRODUCT_DEVICE := a52sxq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A528B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_SHIPPING_API_LEVEL := 30

# Vendor fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint="samsung/a52sxqxx/a52sxq:11/RP1A.200720.012/A528BXXUAGXK8:user/release-keys" \
    BuildDesc="a52sxqxx-user 11 RP1A.200720.012 A528BXXUAGXK8 release-keys"
