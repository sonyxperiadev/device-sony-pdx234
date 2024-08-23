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

# Device path
DEVICE_PATH := device/sony/pdx234/rootdir

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/pdx234/overlay

# Device Specific Permissions
PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

# Audio Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/microphone_characteristics.xml:$(TARGET_COPY_OUT_VENDOR)/etc/microphone_characteristics.xml \
    $(DEVICE_PATH)/vendor/etc/mixer_paths_kalama_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_kalama_qrd.xml \
    $(DEVICE_PATH)/vendor/etc/resourcemanager_kalama_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/resourcemanager_kalama_qrd.xml \
    $(DEVICE_PATH)/vendor/etc/usecaseKvManager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usecaseKvManager.xml

# Audio calibration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/acdbdata/ffv_models/ffv__5.0.1_0.1__eai_2.10_enpu3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/ffv_models/ffv__5.0.1_0.1__eai_2.10_enpu3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/ffv_models/ffv__5.0.1_0.1__3.0.0_0.0__eai_2.10_enpu3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/ffv_models/ffv__5.0.1_0.1__3.0.0_0.0__eai_2.10_enpu3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.6.3_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.1__eai_2.10_enpuv3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.6.3_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.1__eai_2.10_enpuv3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.7.8_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.1__eai_2.10_enpuv3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.7.8_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.1__eai_2.10_enpuv3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__4.8.4_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.0__eai_2.10_enpuv3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__4.8.4_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.0__eai_2.10_enpuv3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__4.8.4_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.1__eai_2.10_enpuv3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__4.8.4_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.1__eai_2.10_enpuv3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__4.8.3_0.0__3.0.0_0.0__3.1.0_0.0__3.2.0_0.0__eai_2.10_enpuv3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__4.8.3_0.0__3.0.0_0.0__3.1.0_0.0__3.2.0_0.0__eai_2.10_enpuv3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.6.5_0.0__3.0.0_0.0__3.1.0_0.0__3.2.0_0.0__eai_2.10_enpuv3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.6.5_0.0__3.0.0_0.0__3.1.0_0.0__3.2.0_0.0__eai_2.10_enpuv3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.0.0_0.1__3.0.0_0.0__eai_1.36_enpu2.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.0.0_0.1__3.0.0_0.0__eai_1.36_enpu2.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.0.0_0.1__3.0.0_0.0__3.1.0_0.0__3.2.0_0.0__eai_2.7_enpu3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.0.0_0.1__3.0.0_0.0__3.1.0_0.0__3.2.0_0.0__eai_2.7_enpu3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.6.5_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.0__eai_2.10_enpuv3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.6.5_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.0__eai_2.10_enpuv3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.6.3_0.0__3.0.0_0.0__3.1.1.0_0.0__3.2.0_0.0__eai_2.7_enpu_v3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.6.3_0.0__3.0.0_0.0__3.1.1.0_0.0__3.2.0_0.0__eai_2.7_enpu_v3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__4.8.2_0.0__3.0.0_0.0__3.1.1.0_0.0__3.2.0_0.0__eai_2.7_enpu_v3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__4.8.2_0.0__3.0.0_0.0__3.1.1.0_0.0__3.2.0_0.0__eai_2.7_enpu_v3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.3.0_0.1__3.0.0_0.0__eai_1.10.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.3.0_0.1__3.0.0_0.0__eai_1.10.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.7.5_0.0__3.0.0_0.0__3.1.1.0_0.0__3.2.0_0.0__eai_2.7_enpu_v3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.7.5_0.0__3.0.0_0.0__3.1.1.0_0.0__3.2.0_0.0__eai_2.7_enpu_v3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.7.8_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.0__eai_2.10_enpuv3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.7.8_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.0__eai_2.10_enpuv3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.7.8_0.0__3.0.0_0.0__3.1.0_0.0__3.2.0_0.0__eai_2.10_enpuv3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.7.8_0.0__3.0.0_0.0__3.1.0_0.0__3.2.0_0.0__eai_2.10_enpuv3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.7.20_0.0__3.0.0_0.0__eai_1.36_enpu2.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.7.20_0.0__3.0.0_0.0__eai_1.36_enpu2.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.7.5_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.1__eai_2.10_enpuv3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.7.5_0.0__3.0.0_0.0__3.1.1_0.0__3.2.0_0.1__eai_2.10_enpuv3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.7.2_0.0__3.0.0_0.0__eai_1.36_enpu2.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.7.2_0.0__3.0.0_0.0__eai_1.36_enpu2.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.3.0_0.1__3.0.0_0.0__eai_1.36_enpu2_comp.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.3.0_0.1__3.0.0_0.0__eai_1.36_enpu2_comp.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_ns_models/fai__2.7.2_0.0__3.0.0_0.0__eai_2.10_enpuv3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.7.2_0.0__3.0.0_0.0__eai_2.10_enpuv3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_vad_models/fai__3.0.0_0.0__eai_1.36_enpu2.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_vad_models/fai__3.0.0_0.0__eai_1.36_enpu2.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/nn_vad_models/fai__3.0.0_0.0__eai_2.10_enpuv3.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_vad_models/fai__3.0.0_0.0__eai_2.10_enpuv3.pmd \
    $(DEVICE_PATH)/vendor/etc/acdbdata/acdb_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/acdb_cal.acdb \
    $(DEVICE_PATH)/vendor/etc/acdbdata/workspaceFileXml.qwsp:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/workspaceFileXml.qwsp

# NFC Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# Touch firmware
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/firmware/touch_module_id_0x01.img:$(TARGET_COPY_OUT_VENDOR)/firmware/touch_module_id_0x01.img

# Audio calibration
PRODUCT_COPY_FILES += \

# Device-specific magnetometer and IMU orientation
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/sensors/config/sns_device_orient_somc_platform.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/sns_device_orient_somc_platform.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kailua_stk3x3x_0_somc_platform.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kailua_stk3x3x_0_somc_platform.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kailua_ak991x_0_somc_product.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kailua_ak991x_0_somc_product.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kailua_lsm6dso_0_somc_product.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kailua_lsm6dso_0_somc_product.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kailua_somc_default_sensors.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kailua_somc_default_sensors.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kailua_lsm6dso_0_somc_platform.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kailua_lsm6dso_0_somc_platform.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kailua_bmp5_0_somc_platform.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kailua_bmp5_0_somc_platform.json \
    $(DEVICE_PATH)/vendor/etc/sensors/config/kailua_ak991x_0_somc_platform.json:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/config/kailua_ak991x_0_somc_platform.json

# Device Init
PRODUCT_PACKAGES += \
    fstab.pdx234 \
    ramdisk-fstab.pdx234 \
    init.recovery.pdx234 \
    init.pdx234

# Telephony Packages (AOSP)
PRODUCT_PACKAGES += \
    InCallUI \
    Stk

# SAR
PRODUCT_PACKAGES += \
    TransPowerSensors

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=420 \
    ro.usb.pid_suffix=20d

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/yodo/platform.mk)

# copy NFC firmware
$(call inherit-product-if-exists, vendor/nxp/nxp-vendor.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/sony/yodo-common/yodo-partial.mk)
