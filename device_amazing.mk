# Copyright (C) 2010 The Android Open Source Project
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

# Init files
PRODUCT_COPY_FILES += \
   	device/samsung/amazing/ramdisk/init.gt-s6802board.sensors.rc:root/init.gt-s6802board.sensors.rc \
   	device/samsung/amazing/ramdisk/init.gt-s6802board.gps.rc:root/init.gt-s6802board.gps.rc \
   	device/samsung/amazing/ramdisk/init.gt-s6802board.fs.rc:root/init.gt-s6802board.fs.rc \
   	device/samsung/amazing/ramdisk/fstab.gt-s6802board:root/fstab.gt-s6802board \
   	device/samsung/amazing/ramdisk/ueventd.gt-s6802board.rc:root/ueventd.gt-s6802board.rc \
   	device/samsung/amazing/ramdisk/init.gt-s6802board.rc:root/init.gt-s6802board.rc
   	
# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml

# Enable repeatable keys in CWM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true \
    ro.cwm.repeatable_keys=114,115

# MDPI assets
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/mdpi-common/mdpi.mk)

# Inherit products
$(call inherit-product, device/samsung/bcm21553-common/common.mk)
$(call inherit-product, vendor/samsung/amazing/vendor.mk)

# Add device package overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/amazing/overlay
