# Copyright (C) 2012 The Android Open Source Project
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

# Hardware
PRODUCT_PACKAGES += \
    gps.delta \
    sensors.msm7x27 \
    lights.msm7x27 \
    audio.a2dp.default \
    libaudioutils

# GPU
PRODUCT_PACKAGES += \
    gralloc.default \
    gralloc.msm7x27 \
    hwcomposer.default \
    hwcomposer.msm7x27 \
    copybit.msm7x27 \
    libgenlock \
    libmemalloc \
    libtilerenderer \
    libqdutils \
    liboverlay

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x27

# Omx
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    libopencorehw

# Extra packages
PRODUCT_PACKAGES += \
    screencap \
    hostap \
    rzscontrol \
    rild \
    com.android.future.usb.accessory \
    make_ext4fs \
    setup_fs \
    wlan_loader \
    wlan_cu \
    dhcpcd.conf

# OpenSSH
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# FM Radio
PRODUCT_PACKAGES += \
    fmreceiverif \
    com.ti.fm.fmreceiverif.xml \
    libfmrx \
    FmRxService \
    Fmapplication

# Bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distict.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    device/semc/msm7x27-common/prebuilt/etc/permissions/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    device/semc/msm7x27-common/prebuilt/etc/permissions/com.sonyericsson.smfmf.xml:system/etc/permissions/com.sonyericsson.smfmf.xml \
    device/semc/msm7x27-common/prebuilt/etc/permissions/com.sonyericsson.suquashi.xml:system/etc/permissions/com.sonyericsson.suquashi.xml

# Config files
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/etc/hw_config.sh:system/etc/hw_config.sh \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Extra prebuilt binaries
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/framework/com.sonyericsson.suquashi.jar:system/framework/com.sonyericsson.suquashi.jar \
    device/semc/msm7x27-common/prebuilt/app/SystemConnector.apk:system/app/SystemConnector.apk \
    device/semc/msm7x27-common/prebuilt/framework/SemcSmfmf.jar:system/framework/SemcSmfmf.jar \
    device/semc/msm7x27-common/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/semc/msm7x27-common/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/semc/msm7x27-common/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/semc/msm7x27-common/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/semc/msm7x27-common/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/semc/msm7x27-common/prebuilt/xbin/remount:system/xbin/remount \
    device/semc/msm7x27-common/prebuilt/bin/hciattach:system/bin/hciattach \
    device/semc/msm7x27-common/prebuilt/bin/mm-venc-omx-test:system/bin/mm-venc-omx-test \
    device/semc/msm7x27-common/prebuilt/bin/nvimport:system/bin/nvimport \
    device/semc/msm7x27-common/prebuilt/bin/port-bridge:system/bin/port-bridge \
    device/semc/msm7x27-common/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/semc/msm7x27-common/prebuilt/app/AntHalService.apk:system/app/AntHalService.apk \
    device/semc/msm7x27-common/prebuilt/bin/updatemiscta:system/bin/updatemiscta \
    device/semc/msm7x27-common/prebuilt/lib/hw/hal_seport.default.so:system/lib/hw/hal_seport.default.so \
    device/semc/msm7x27-common/prebuilt/lib/libsystemconnector/libuinputdevicejni.so:system/lib/libsystemconnector/libuinputdevicejni.so \
    device/semc/msm7x27-common/prebuilt/lib/libcamera.so:obj/lib/libcamera.so \
    device/semc/msm7x27-common/prebuilt/lib/libcamera.so:system/lib/libcamera.so \
    device/semc/msm7x27-common/prebuilt/lib/libanthal.so:system/lib/libanthal.so \
    device/semc/msm7x27-common/prebuilt/lib/libauth.so:system/lib/libauth.so \
    device/semc/msm7x27-common/prebuilt/lib/libcm.so:system/lib/libcm.so \
    device/semc/msm7x27-common/prebuilt/lib/libcommondefs.so:system/lib/libcommondefs.so \
    device/semc/msm7x27-common/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    device/semc/msm7x27-common/prebuilt/lib/libdll.so:system/lib/libdll.so \
    device/semc/msm7x27-common/prebuilt/lib/libdsm.so:system/lib/libdsm.so \
    device/semc/msm7x27-common/prebuilt/lib/libdss.so:system/lib/libdss.so \
    device/semc/msm7x27-common/prebuilt/lib/libfm_stack.so:system/lib/libfm_stack.so \
    device/semc/msm7x27-common/prebuilt/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    device/semc/msm7x27-common/prebuilt/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    device/semc/msm7x27-common/prebuilt/lib/libmiscta.so:system/lib/libmiscta.so \
    device/semc/msm7x27-common/prebuilt/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/semc/msm7x27-common/prebuilt/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    device/semc/msm7x27-common/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
    device/semc/msm7x27-common/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/semc/msm7x27-common/prebuilt/lib/libnv.so:system/lib/libnv.so \
    device/semc/msm7x27-common/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/semc/msm7x27-common/prebuilt/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    device/semc/msm7x27-common/prebuilt/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    device/semc/msm7x27-common/prebuilt/lib/liboncrpc.so:system/lib/liboncrpc.so \
    device/semc/msm7x27-common/prebuilt/lib/libopencore_common.so:system/lib/libopencore_common.so \
    device/semc/msm7x27-common/prebuilt/lib/libpbmlib.so:system/lib/libpbmlib.so \
    device/semc/msm7x27-common/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
    device/semc/msm7x27-common/prebuilt/lib/libqueue.so:system/lib/libqueue.so \
    device/semc/msm7x27-common/prebuilt/lib/libril.so:system/lib/libril.so \
    device/semc/msm7x27-common/prebuilt/lib/libsemc_ril.so:system/lib/libsemc_ril.so \
    device/semc/msm7x27-common/prebuilt/lib/libsystemconnector_hal_jni.so:system/lib/libsystemconnector_hal_jni.so \
    device/semc/msm7x27-common/prebuilt/lib/libuim.so:system/lib/libuim.so \
    device/semc/msm7x27-common/prebuilt/lib/libvdmfumo.so:system/lib/libvdmfumo.so \
    device/semc/msm7x27-common/prebuilt/lib/libwms.so:system/lib/libwms.so \
    device/semc/msm7x27-common/prebuilt/lib/libwmsts.so:system/lib/libwmsts.so \
    device/semc/msm7x27-common/prebuilt/lib/libZiEngine.so:system/lib/libZiEngine.so

# Firmwares
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/etc/firmware/fmc_init_1273.1.bts:system/etc/firmware/fmc_init_1273.1.bts \
    device/semc/msm7x27-common/prebuilt/etc/firmware/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \
    device/semc/msm7x27-common/prebuilt/etc/firmware/fm_rx_init_1273.1.bts:system/etc/firmware/fm_rx_init_1273.1.bts \
    device/semc/msm7x27-common/prebuilt/etc/firmware/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \
    device/semc/msm7x27-common/prebuilt/etc/firmware/fm_tx_init_1273.1.bts:system/etc/firmware/fm_tx_init_1273.1.bts \
    device/semc/msm7x27-common/prebuilt/etc/firmware/fm_tx_init_1273.2.bts:system/etc/firmware/fm_tx_init_1273.2.bts \
    device/semc/msm7x27-common/prebuilt/etc/firmware/TIInit_7.2.31.bts:system/etc/firmware/TIInit_7.2.31.bts

# Keylayouts
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl

# Wifi and hotspot
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/bin/dhcpcd:system/bin/dhcpcd \
    device/semc/msm7x27-common/prebuilt/bin/tiap_loader.sh:system/bin/tiap_loader.sh \
    device/semc/msm7x27-common/prebuilt/bin/tiwlan_loader:system/bin/tiwlan_loader \
    device/semc/msm7x27-common/prebuilt/etc/init.d/10dnsconf:system/etc/init.d/10dnsconf \
    device/semc/msm7x27-common/prebuilt/etc/init.d/10hostapconf:system/etc/init.d/10hostapconf \
    device/semc/msm7x27-common/prebuilt/etc/wifi/softap/hostapd.conf:system/etc/wifi/softap/hostapd.conf \
    device/semc/msm7x27-common/prebuilt/etc/wifi/dnsmasq.conf:system/etc/wifi/dnsmasq.conf \
    device/semc/msm7x27-common/prebuilt/etc/wifi/tiwlan_firmware.bin:system/etc/wifi/tiwlan_firmware.bin \
    device/semc/msm7x27-common/prebuilt/etc/wifi/softap/tiwlan_firmware_ap.bin:system/etc/wifi/softap/tiwlan_firmware_ap.bin

# A2SD and extra init files
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/bin/a2sd:system/bin/a2sd \
    device/semc/msm7x27-common/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    device/semc/msm7x27-common/prebuilt/etc/init.d/05mountext:system/etc/init.d/05mountext \
    device/semc/msm7x27-common/prebuilt/xbin/rzscontrol:system/xbin/rzscontrol \
    device/semc/msm7x27-common/prebuilt/xbin/zipalign:system/xbin/zipalign

# Adreno 200 files
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/semc/msm7x27-common/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/semc/msm7x27-common/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/semc/msm7x27-common/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/semc/msm7x27-common/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/semc/msm7x27-common/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/semc/msm7x27-common/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
    device/semc/msm7x27-common/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/semc/msm7x27-common/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/semc/msm7x27-common/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/semc/msm7x27-common/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/semc/msm7x27-common/prebuilt/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \
    device/semc/msm7x27-common/prebuilt/etc/adreno_config.txt:system/etc/adreno_config.txt

# OTA Update Center
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/app/OTAUpdater-1.0.2.apk:system/app/OTAUpdater-1.0.2.apk

# Audio blobs from ICS
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/lib/hw/audio.primary.msm7x27.so:system/lib/hw/audio.primary.msm7x27.so \
    device/semc/msm7x27-common/prebuilt/lib/hw/audio_policy.msm7x27.so:system/lib/hw/audio_policy.msm7x27.so
