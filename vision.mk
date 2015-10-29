#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/htc/vision/gps.conf:system/etc/gps.conf

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

PRODUCT_COPY_FILES += \
    device/htc/vision/init.vision.rc:root/init.vision.rc \
    device/htc/vision/ueventd.vision.rc:root/ueventd.vision.rc

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/vision/vision-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-tmobile-us \
    ro.com.google.clientidbase.vs=android-hms-tmobile-us \
    ro.com.google.clientidbase.ms=android-hms-tmobile-us \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.2_r5 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

DEVICE_PACKAGE_OVERLAYS += device/htc/vision/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_PACKAGES += \
    lights.vision \
    sensors.vision \
    gps.vision

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/vision/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/vision/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/vision/keychars/vision-keypad-ara.kcm.bin:system/usr/keychars/vision-keypad-ara.kcm.bin \
    device/htc/vision/keychars/vision-keypad-ell.kcm.bin:system/usr/keychars/vision-keypad-ell.kcm.bin \
    device/htc/vision/keychars/vision-keypad-esn.kcm.bin:system/usr/keychars/vision-keypad-esn.kcm.bin \
    device/htc/vision/keychars/vision-keypad-fra.kcm.bin:system/usr/keychars/vision-keypad-fra.kcm.bin \
    device/htc/vision/keychars/vision-keypad-ger.kcm.bin:system/usr/keychars/vision-keypad-ger.kcm.bin \
    device/htc/vision/keychars/vision-keypad-hk.kcm.bin:system/usr/keychars/vision-keypad-hk.kcm.bin \
    device/htc/vision/keychars/vision-keypad-ita.kcm.bin:system/usr/keychars/vision-keypad-ita.kcm.bin \
    device/htc/vision/keychars/vision-keypad.kcm.bin:system/usr/keychars/vision-keypad.kcm.bin \
    device/htc/vision/keychars/vision-keypad-nor.kcm.bin:system/usr/keychars/vision-keypad-nor.kcm.bin \
    device/htc/vision/keychars/vision-keypad-rus.kcm.bin:system/usr/keychars/vision-keypad-rus.kcm.bin \
    device/htc/vision/keychars/vision-keypad-sea.kcm.bin:system/usr/keychars/vision-keypad-sea.kcm.bin \
    device/htc/vision/keychars/vision-keypad-tur.kcm.bin:system/usr/keychars/vision-keypad-tur.kcm.bin \
    device/htc/vision/keychars/vision-keypad-wwe-bopomo.kcm.bin:system/usr/keychars/vision-keypad-wwe-bopomo.kcm.bin \
    device/htc/vision/keychars/vision-keypad-wwe.kcm.bin:system/usr/keychars/vision-keypad-wwe.kcm.bin \
    device/htc/vision/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/vision/keylayout/vision-keypad-ara.kl:system/usr/keylayout/vision-keypad-ara.kl \
    device/htc/vision/keylayout/vision-keypad-ell.kl:system/usr/keylayout/vision-keypad-ell.kl \
    device/htc/vision/keylayout/vision-keypad-esn.kl:system/usr/keylayout/vision-keypad-esn.kl \
    device/htc/vision/keylayout/vision-keypad-fra.kl:system/usr/keylayout/vision-keypad-fra.kl \
    device/htc/vision/keylayout/vision-keypad-ger.kl:system/usr/keylayout/vision-keypad-ger.kl \
    device/htc/vision/keylayout/vision-keypad-hk.kl:system/usr/keylayout/vision-keypad-hk.kl \
    device/htc/vision/keylayout/vision-keypad-ita.kl:system/usr/keylayout/vision-keypad-ita.kl \
    device/htc/vision/keylayout/vision-keypad.kl:system/usr/keylayout/vision-keypad.kl \
    device/htc/vision/keylayout/vision-keypad-nor.kl:system/usr/keylayout/vision-keypad-nor.kl \
    device/htc/vision/keylayout/vision-keypad-rus.kl:system/usr/keylayout/vision-keypad-rus.kl \
    device/htc/vision/keylayout/vision-keypad-sea.kl:system/usr/keylayout/vision-keypad-sea.kl \
    device/htc/vision/keylayout/vision-keypad-tur.kl:system/usr/keylayout/vision-keypad-tur.kl \
    device/htc/vision/keylayout/vision-keypad-wwe-bopomo.kl:system/usr/keylayout/vision-keypad-wwe-bopomo.kl \
    device/htc/vision/keylayout/vision-keypad-wwe.kl:system/usr/keylayout/vision-keypad-wwe.kl

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/vision/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \
    device/htc/vision/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/vision/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
    device/htc/vision/firmware/default_org_WA.acdb:system/etc/firmware/default_org_WA.acdb \
    device/htc/vision/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/htc/vision/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/htc/vision/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/htc/vision/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/htc/vision/firmware/vidc_720p_mp2_dec_mc.fw:system/etc/firmware/vidc_720p_mp2_dec_mc.fw \
    device/htc/vision/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/htc/vision/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/htc/vision/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/htc/vision/firmware/Vision_SPK.acdb:system/etc/firmware/Vision_SPK.acdb \
    device/htc/vision/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/vision/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# Certificates
PRODUCT_COPY_FILES += \
    device/htc/vision/certs/T-Mobile_USA_Intermediate_CA_01.der:system/etc/T-Mobile_USA_Intermediate_CA_01.der \
    device/htc/vision/certs/T-Mobile_USA_Issuer_CA_01.der:system/etc/T-Mobile_USA_Issuer_CA_01.der \
    device/htc/vision/certs/T-Mobile_USA_Issuer_CA_02.der:system/etc/T-Mobile_USA_Issuer_CA_02.der \
    device/htc/vision/certs/T-Mobile_USA_Root_CA.der:system/etc/T-Mobile_USA_Root_CA.der

PRODUCT_COPY_FILES += \
    device/htc/vision/vold.fstab:system/etc/vold.fstab

# Kernel modules
#PRODUCT_COPY_FILES += \

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/vision/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/htc/vision/modules/bcm4329.ko:system/lib/modules/bcm4329.ko

$(call inherit-product-if-exists, vendor/htc/vision/vision-vendor.mk)

# common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# media profiles and capabilities spec
$(call inherit-product, device/htc/vision/media_a1026.mk)

# htc audio settings
$(call inherit-product, device/htc/vision/media_htcaudio.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base.mk)


PRODUCT_NAME := htc_vision
PRODUCT_DEVICE := vision
PRODUCT_MODEL := HTC Vision
PRODUCT_MANUFACTURER := HTC

