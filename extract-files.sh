#!/bin/sh

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

DEVICE=vision

mkdir -p ../../../vendor/htc/$DEVICE/proprietary

adb pull /system/app/MS-HTCVISION-KNT20-02.apk ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/akmd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/awb_camera ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/bma150_usr ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/htc_ebdlogd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/logcat2 ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/lsc_camera ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/rmt_storage ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/A1026_CFG.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AdieHWCodec.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AdieHWCodec_WA.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/agps_rm ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AudioBTID.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/mm_property.conf ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/pvasflocal.cfg ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/vomeComp.cfg ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/vomeplay.cfg ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/voVidDec.dat ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/vpimg ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libaudio.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libaudioalsa.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libaudioeq.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libganril.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgemini.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgsl.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libHTC_mm_property.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libhtc_ril.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libkineto.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libloc_api-rpc.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libloc_api.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libmmipl.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libOmxVdec.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libomx_wmadec_sharedlibrary.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libomx_wmvdec_sharedlibrary.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/librilswitch.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoAACDec.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoAMRNBDec.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoAMRWBDec.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoAndroid.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoH264Dec.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvomemedia.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoMMCCRRS.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoMP3Dec.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoMPEG4Dec.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoOMXME.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoOMXOne.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoPackUV.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoSrcRTSP.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libvoVidDec.so ../../../vendor/htc/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/htc/$DEVICE/$DEVICE-vendor-blobs.mk
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

# This file is generated by device/htc/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/libloc_api.so:obj/lib/libloc_api.so \\
    vendor/htc/__DEVICE__/proprietary/libloc_api-rpc.so:obj/lib/libloc_api-rpc.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libaudio.so:obj/lib/libaudio.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so

# All the blobs necessary for passion
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/A1026_CFG.csv:/system/etc/A1026_CFG.csv \\
    vendor/htc/__DEVICE__/proprietary/AdieHWCodec.csv:/system/etc/AdieHWCodec.csv \\
    vendor/htc/__DEVICE__/proprietary/AdieHWCodec_WA.csv:/system/etc/AdieHWCodec_WA.csv \\
    vendor/htc/__DEVICE__/proprietary/agps_rm:/system/etc/agps_rm \\
    vendor/htc/__DEVICE__/proprietary/akmd:/system/bin/akmd \\
    vendor/htc/__DEVICE__/proprietary/AudioBTID.csv:/system/etc/AudioBTID.csv \\
    vendor/htc/__DEVICE__/proprietary/awb_camera:/system/bin/awb_camera \\
    vendor/htc/__DEVICE__/proprietary/bma150_usr:/system/bin/bma150_usr \\
    vendor/htc/__DEVICE__/proprietary/htc_ebdlogd:/system/bin/htc_ebdlogd \\
    vendor/htc/__DEVICE__/proprietary/libaudio.so:/system/lib/libaudio.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioeq.so:/system/lib/libaudioeq.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:/system/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libganril.so:/system/lib/libganril.so \\
    vendor/htc/__DEVICE__/proprietary/libgemini.so:/system/lib/libgemini.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libgsl.so:/system/lib/libgsl.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_acoustic.so:/system/lib/libhtc_acoustic.so \\
    vendor/htc/__DEVICE__/proprietary/libHTC_mm_property.so:/system/lib/libHTC_mm_property.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_ril.so:/system/lib/libhtc_ril.so \\
    vendor/htc/__DEVICE__/proprietary/libkineto.so:/system/lib/libkineto.so \\
    vendor/htc/__DEVICE__/proprietary/libloc_api-rpc.so:/system/lib/libloc_api-rpc.so \\
    vendor/htc/__DEVICE__/proprietary/libloc_api.so:/system/lib/libloc_api.so \\
    vendor/htc/__DEVICE__/proprietary/libmmipl.so:/system/lib/libmmipl.so \\
    vendor/htc/__DEVICE__/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \\
    vendor/htc/__DEVICE__/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxVdec.so:/system/lib/libOmxVdec.so \\
    vendor/htc/__DEVICE__/proprietary/libomx_wmadec_sharedlibrary.so:/system/lib/libomx_wmadec_sharedlibrary.so \\
    vendor/htc/__DEVICE__/proprietary/libomx_wmvdec_sharedlibrary.so:/system/lib/libomx_wmvdec_sharedlibrary.so \\
    vendor/htc/__DEVICE__/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/librilswitch.so:/system/lib/librilswitch.so \\
    vendor/htc/__DEVICE__/proprietary/libvoAACDec.so:/system/lib/libvoAACDec.so \\
    vendor/htc/__DEVICE__/proprietary/libvoAMRNBDec.so:/system/lib/libvoAMRNBDec.so \\
    vendor/htc/__DEVICE__/proprietary/libvoAMRWBDec.so:/system/lib/libvoAMRWBDec.so \\
    vendor/htc/__DEVICE__/proprietary/libvoAndroid.so:/system/lib/libvoAndroid.so \\
    vendor/htc/__DEVICE__/proprietary/libvoH264Dec.so:/system/lib/libvoH264Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libvomemedia.so:/system/lib/libvomemedia.so \\
    vendor/htc/__DEVICE__/proprietary/libvoMMCCRRS.so:/system/lib/libvoMMCCRRS.so \\
    vendor/htc/__DEVICE__/proprietary/libvoMP3Dec.so:/system/lib/libvoMP3Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libvoMPEG4Dec.so:/system/lib/libvoMPEG4Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libvoOMXME.so:/system/lib/libvoOMXME.so \\
    vendor/htc/__DEVICE__/proprietary/libvoOMXOne.so:/system/lib/libvoOMXOne.so \\
    vendor/htc/__DEVICE__/proprietary/libvoPackUV.so:/system/lib/libvoPackUV.so \\
    vendor/htc/__DEVICE__/proprietary/libvoSrcRTSP.so:/system/lib/libvoSrcRTSP.so \\
    vendor/htc/__DEVICE__/proprietary/libvoVidDec.so:/system/lib/libvoVidDec.so \\
    vendor/htc/__DEVICE__/proprietary/logcat2:/system/bin/logcat2 \\
    vendor/htc/__DEVICE__/proprietary/lsc_camera:/system/bin/lsc_camera \\
    vendor/htc/__DEVICE__/proprietary/rmt_storage:/system/bin/rmt_storage \\
    vendor/htc/__DEVICE__/proprietary/mm_property.conf:/system/etc/mm_property.conf \\
    vendor/htc/__DEVICE__/proprietary/MS-HTCVISION-KNT20-02.apk:/system/app/MS-HTCVISION-KNT20-02.apk \\
    vendor/htc/__DEVICE__/proprietary/pvasflocal.cfg:/system/etc/pvasflocal.cfg \\
    vendor/htc/__DEVICE__/proprietary/vomeComp.cfg:/system/etc/vomeComp.cfg \\
    vendor/htc/__DEVICE__/proprietary/vomeplay.cfg:/system/etc/vomeplay.cfg \\
    vendor/htc/__DEVICE__/proprietary/voVidDec.dat:/system/etc/voVidDec.dat \\
    vendor/htc/__DEVICE__/proprietary/vpimg:/system/etc/vpimg
EOF

./setup-makefiles.sh
