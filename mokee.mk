# Copyright (C) 2014 The CyanogenMod Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit from 303sh device
$(call inherit-product, device/sharp/303sh/303sh.mk)


PRODUCT_NAME := mk_303sh
PRODUCT_DEVICE := 303sh
PRODUCT_BRAND := SHARP
PRODUCT_MANUFACTURER := SHARP
PRODUCT_MODEL := 303sh

PRODUCT_GMS_CLIENTID_BASE := android-sharp

TARGET_CONTINUOUS_SPLASH_ENABLED := true
