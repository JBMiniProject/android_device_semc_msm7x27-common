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

# Gps / Audio / Wifi / Sensors / Lights
PRODUCT_PACKAGES += \
    gps.delta \
    sensors.msm7x27 \
    lights.msm7x27 \
    audio.a2dp.default \
    libaudioutils \
    wlan_loader \
    wlan_cu \
    dhcpcd.conf

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

PRODUCT_PROPERTY_OVERRIDES += \
    persist.pmem.camera=4000000 \
    debug.camcorder.disablemeta=1

# Omx
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    libopencorehw \
    libQcomUI

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

# Bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug

# Compcache
PRODUCT_COPY_FILES += \
        device/semc/msm7x27-common/prebuilt/xbin/rzscontrol:system/xbin/rzscontrol

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
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Config files
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/semc/msm7x27-common/prebuilt/etc/hw_config.sh:system/etc/hw_config.sh \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Extra prebuilt binaries
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/framework/com.sonyericsson.suquashi.jar:system/framework/com.sonyericsson.suquashi.jar \
    device/semc/msm7x27-common/prebuilt/app/Radio.apk:system/app/Radio.apk \
    device/semc/msm7x27-common/prebuilt/app/SystemConnector.apk:system/app/SystemConnector.apk \
    device/semc/msm7x27-common/prebuilt/framework/SemcSmfmf.jar:system/framework/SemcSmfmf.jar \
    device/semc/msm7x27-common/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/semc/msm7x27-common/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/semc/msm7x27-common/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/semc/msm7x27-common/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/semc/msm7x27-common/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/semc/msm7x27-common/prebuilt/xbin/remount:system/xbin/remount \
    device/semc/msm7x27-common/prebuilt/bin/hciattach:system/bin/hciattach \
    device/semc/msm7x27-common/prebuilt/app/AntHalService.apk:system/app/AntHalService.apk \
    device/semc/msm7x27-common/prebuilt/lib/libcamera.so:system/lib/libcamera.so

# Keylayouts
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl \
    device/semc/msm7x27-common/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl

# Wifi and hotspot
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/bin/dhcpcd:system/bin/dhcpcd \
    device/semc/msm7x27-common/prebuilt/bin/tiap_loader.sh:system/bin/tiap_loader.sh \
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
    device/semc/msm7x27-common/prebuilt/xbinzipalign:system/xbin/zipalign

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
    device/semc/msm7x27-common/prebuilt/etc/adreno_config.txt:system/etc/adreno_config.txt

# Audio blobs from ICS
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/lib/hw/audio.primary.msm7x27.so:system/lib/hw/audio.primary.msm7x27.so \
    device/semc/msm7x27-common/prebuilt/lib/hw/audio_policy.msm7x27.so:system/lib/hw/audio_policy.msm7x27.so

