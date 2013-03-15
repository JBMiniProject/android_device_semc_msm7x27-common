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
    audio.primary.msm7x27 \
    audio_policy.msm7x27 \
    audio.usb.default \
    libaudioutils

# PowerHAL
PRODUCT_PACKAGES += \
    power.msm7x27

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
    libstagefrighthw

# Wifi
PRODUCT_PACKAGES += \
    wpa_supplicant.conf \
    hostapd_cli \
    hostapd \
    calibrator \
    libnl \
    iw

# Extra packages
PRODUCT_PACKAGES += \
    screencap \
    rzscontrol \
    rild \
    com.android.future.usb.accessory \
    make_ext4fs \
    setup_fs

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
    device/semc/msm7x27-common/prebuilt/etc/permissions/com.sonyericsson.smfmf.xml:system/etc/permissions/com.sonyericsson.smfmf.xml


# Config files
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/etc/hw_config.sh:system/etc/hw_config.sh \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Wifi
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/semc/msm7x27-common/prebuilt/bin/wifiload:system/bin/wifiload \
    device/semc/msm7x27-common/prebuilt/etc/init.d/10dhcpcd:system/etc/init.d/10dhcpcd \
    device/semc/msm7x27-common/prebuilt/etc/firmware/wl1271-fw-multirole-roc.bin:system/etc/firmware/wl1271-fw-multirole-roc.bin 


# Extra prebuilt binaries
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/app/SystemConnector.apk:system/app/SystemConnector.apk \
    device/semc/msm7x27-common/prebuilt/framework/SemcSmfmf.jar:system/framework/SemcSmfmf.jar \
    device/semc/msm7x27-common/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/semc/msm7x27-common/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/semc/msm7x27-common/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/semc/msm7x27-common/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/semc/msm7x27-common/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/semc/msm7x27-common/prebuilt/xbin/remount:system/xbin/remount \
    device/semc/msm7x27-common/prebuilt/bin/mm-venc-omx-test:system/bin/mm-venc-omx-test \
    device/semc/msm7x27-common/prebuilt/bin/nvimport:system/bin/nvimport \
    device/semc/msm7x27-common/prebuilt/bin/port-bridge:system/bin/port-bridge \
    device/semc/msm7x27-common/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/semc/msm7x27-common/prebuilt/app/AntHalService.apk:system/app/AntHalService.apk \
    device/semc/msm7x27-common/prebuilt/bin/updatemiscta:system/bin/updatemiscta \
    device/semc/msm7x27-common/prebuilt/lib/hw/hal_seport.default.so:system/lib/hw/hal_seport.default.so \
    device/semc/msm7x27-common/prebuilt/lib/hw/lights.default.so:system/lib/hw/lights.default.so \
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
    device/semc/msm7x27-common/prebuilt/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
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
    device/semc/msm7x27-common/prebuilt/lib/libOmxCore.so:system/lib/libOmxCore.so \
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
    device/semc/msm7x27-common/prebuilt/lib/libwmsts.so:system/lib/libwmsts.so

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

# SEMC keyboard
ifeq ($(SEMC_KEYBOARD),true)
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/app/SuquashiInputMethod.apk:system/app/SuquashiInputMethod.apk \
    device/semc/msm7x27-common/prebuilt/etc/permissions/com.sonyericsson.suquashi.xml:system/etc/permissions/com.sonyericsson.suquashi.xml \
    device/semc/msm7x27-common/prebuilt/framework/com.sonyericsson.suquashi.jar:system/framework/com.sonyericsson.suquashi.jar \
    device/semc/msm7x27-common/prebuilt/lib/libZiEngine.so:system/lib/libZiEngine.so \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/ara.xml:system/usr/keyboard-config/languages/ara.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/bos.xml:system/usr/keyboard-config/languages/bod.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/bul.xml:system/usr/keyboard-config/languages/bul.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/cat.xml:system/usr/keyboard-config/languages/cat.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/ces.xml:system/usr/keyboard-config/languages/ces.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/dan.xml:system/usr/keyboard-config/languages/dan.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/deu.xml:system/usr/keyboard-config/languages/deu.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/ell.xml:system/usr/keyboard-config/languages/ell.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/eng_us.xml:system/usr/keyboard-config/languages/eng_us.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/eng.xml:system/usr/keyboard-config/languages/eng.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/est.xml:system/usr/keyboard-config/languages/est.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/eus.xml:system/usr/keyboard-config/languages/eus.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/fas.xml:system/usr/keyboard-config/languages/fas.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/fin.xml:system/usr/keyboard-config/languages/fin.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/fra_ca.xml:system/usr/keyboard-config/languages/fra_ca.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/fra.xml:system/usr/keyboard-config/languages/fra.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/glg.xml:system/usr/keyboard-config/languages/glg.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/heb.xml:system/usr/keyboard-config/languages/heb.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/hrv.xml:system/usr/keyboard-config/languages/hrv.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/hun.xml:system/usr/keyboard-config/languages/hun.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/ind.xml:system/usr/keyboard-config/languages/ind.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/isl.xml:system/usr/keyboard-config/languages/isl.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/ita.xml:system/usr/keyboard-config/languages/ita.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/jav.xml:system/usr/keyboard-config/languages/jav.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/kaz.xml:system/usr/keyboard-config/languages/kaz.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/lav.xml:system/usr/keyboard-config/languages/lav.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/lit.xml:system/usr/keyboard-config/languages/lit.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/msa.xml:system/usr/keyboard-config/languages/msa.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/nld.xml:system/usr/keyboard-config/languages/nld.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/nor.xml:system/usr/keyboard-config/languages/nor.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/numberDecimal.xml:system/usr/keyboard-config/languages/numberDecimal.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/numberInteger.xml:system/usr/keyboard-config/languages/numberInteger.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/numberNatural.xml:system/usr/keyboard-config/languages/numberNatural.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/phone.xml:system/usr/keyboard-config/languages/phone.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/pol.xml:system/usr/keyboard-config/languages/pol.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/por_br.xml:system/usr/keyboard-config/languages/por_br.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/por.xml:system/usr/keyboard-config/languages/por.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/ron.xml:system/usr/keyboard-config/languages/ron.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/rus.xml:system/usr/keyboard-config/languages/rus.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/slk.xml:system/usr/keyboard-config/languages/slk.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/slv.xml:system/usr/keyboard-config/languages/slv.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/spa_la.xml:system/usr/keyboard-config/languages/spa_la.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/spa.xml:system/usr/keyboard-config/languages/spa.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/sqi.xml:system/usr/keyboard-config/languages/sqi.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/srp.xml:system/usr/keyboard-config/languages/srp.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/sun.xml:system/usr/keyboard-config/languages/sun.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/swe.xml:system/usr/keyboard-config/languages/swe.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/tgl.xml:system/usr/keyboard-config/languages/tgl.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/tur.xml:system/usr/keyboard-config/languages/tur.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/languages/ukr.xml:system/usr/keyboard-config/languages/ukr.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/arabic.xml:system/usr/keyboard-config/layouts/arabic.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/azerty.xml:system/usr/keyboard-config/layouts/azerty.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/cyrillic.xml:system/usr/keyboard-config/layouts/cyrillic.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/greek.xml:system/usr/keyboard-config/layouts/greek.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/hebrew.xml:system/usr/keyboard-config/layouts/hebrew.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/latin-on-arabic-azerty.xml:system/usr/keyboard-config/layouts/latin-on-arabic-azerty.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/latin-on-arabic.xml:system/usr/keyboard-config/layouts/latin-on-arabic.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/latin-on-bopomofo.xml:system/usr/keyboard-config/layouts/latin-on-bopomofo.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/latin-on-cyrillic.xml:system/usr/keyboard-config/layouts/latin-on-cyrillic.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/latin-on-greek.xml:system/usr/keyboard-config/layouts/latin-on-greek.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/latin-on-hebrew.xml:system/usr/keyboard-config/layouts/latin-on-hebrew.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/latin-on-korean.xml:system/usr/keyboard-config/layouts/latin-on-korean.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/latin-on-pinyin.xml:system/usr/keyboard-config/layouts/latin-on-pinyin.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/latin-on-thai.xml:system/usr/keyboard-config/layouts/latin-on-thai.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/qwertz.xml:system/usr/keyboard-config/layouts/qwertz.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/qwerty-br.xml:system/usr/keyboard-config/layouts/qwerty-br.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/qwerty-en.xml:system/usr/keyboard-config/layouts/qwerty-en.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/qwerty-no-dk.xml:system/usr/keyboard-config/layouts/qwerty-no-dk.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/layouts/qwerty-se-fi.xml:system/usr/keyboard-config/layouts/qwerty-se-fi.xml \
    device/semc/msm7x27-common/prebuilt/usr/keyboard-config/keyprint.xml:system/usr/keyboard-config/keyprint.xml \
    device/semc/msm7x27-common/prebuilt/usr/zi/Arabic/Zi8DatARs.z8d:system/usr/zi/Arabic/Zi8DatARs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Basque/Zi8DatEUs.z8d:system/usr/zi/Basque/Zi8DatEUs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Bulgarian/Zi8DatBGs.z8d:system/usr/zi/Bulgarian/Zi8DatBGs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Catalan/Zi8DatCAs.z8d:system/usr/zi/Catalan/Zi8DatCAs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Croatian/Zi8DatHRs.z8d:system/usr/zi/Croatian/Zi8DatHRs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Czech/Zi8DatCSs.z8d:system/usr/zi/Czech/Zi8DatCSs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Danish/Zi8DatDAs.z8d:system/usr/zi/Danish/Zi8DatDAs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Dutch/Zi8DatNLs.z8d:system/usr/zi/Dutch/Zi8DatNLs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/English_AM/Zi8DatENAMs.z8d:system/usr/zi/English_AM/Zi8DatENAMs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/English_UK/Zi8DatENUKs.z8d:system/usr/zi/English_UK/Zi8DatENUKs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Estonian/Zi8DatETs.z8d:system/usr/zi/Estonian/Zi8DatETs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Farsi/Zi8DatFAs.z8d:system/usr/zi/Farsi/Zi8DatFAs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Finnish/Zi8DatFIs.z8d:system/usr/zi/Finnish/Zi8DatFIs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/French_CA/Zi8DatFRCAs.z8d:system/usr/zi/French_CA/Zi8DatFRCAs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/French_EU/Zi8DatFREUs.z8d:system/usr/zi/French_EU/Zi8DatFREUs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Galician/Zi8DatGLs.z8d:system/usr/zi/Galician/Zi8DatGLs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/German/Zi8DatDEs.z8d:system/usr/zi/German/Zi8DatDEs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Greek/Zi8DatELs.z8d:system/usr/zi/Greek/Zi8DatELs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Hebrew/Zi8DatIWs.z8d:system/usr/zi/Hebrew/Zi8DatIWs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Hungarian/Zi8DatHUs.z8d:system/usr/zi/Hungarian/Zi8DatHUs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Indonesian/Zi8DatINs.z8d:system/usr/zi/Indonesian/Zi8DatINs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Italian/Zi8DatITs.z8d:system/usr/zi/Italian/Zi8DatITs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Latvian/Zi8DatLVs.z8d:system/usr/zi/Latvian/Zi8DatLVs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Lithuanian/Zi8DatLTs.z8d:system/usr/zi/Lithuanian/Zi8DatLTs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Malay/Zi8DatMSs.z8d:system/usr/zi/Malay/Zi8DatMSs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Norwegian/Zi8DatNOs.z8d:system/usr/zi/Norwegian/Zi8DatNOs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Polish/Zi8DatPLs.z8d:system/usr/zi/Polish/Zi8DatPLs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Portuguese_BZ/Zi8DatPTBZs.z8d:system/usr/zi/Portuguese_BZ/Zi8DatPTBZs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Portuguese_EU/Zi8DatPTEUs.z8d:system/usr/zi/Portuguese_EU/Zi8DatPTEUs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Romanian/Zi8DatROs.z8d:system/usr/zi/Romanian/Zi8DatROs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Russian/Zi8DatRU.z8d:system/usr/zi/Russian/Zi8DatRU.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Serbian/Zi8DatSRLAs.z8d:system/usr/zi/Serbian/Zi8DatSRLAs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Slovak/Zi8DatSKs.z8d:system/usr/zi/Slovak/Zi8DatSKs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Slovenian/Zi8DatSLs.z8d:system/usr/zi/Slovenian/Zi8DatSLs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Spanish_EU/Zi8DatESEUs.z8d:system/usr/zi/Spanish_EU/Zi8DatESEUs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Spanish_SA/Zi8DatESSAs.z8d:system/usr/zi/Spanish_SA/Zi8DatESSAs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Swedish/Zi8DatSVs.z8d:system/usr/zi/Swedish/Zi8DatSVs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Tagalog/Zi8DatTLs.z8d:system/usr/zi/Tagalog/Zi8DatTLs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Turkish/Zi8DatTRs.z8d:system/usr/zi/Turkish/Zi8DatTRs.z8d \
    device/semc/msm7x27-common/prebuilt/usr/zi/Ukrainian/Zi8DatUKs.z8d:system/usr/zi/Ukrainian/Zi8DatUKs.z8d
endif

# A2SD and extra init files
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/bin/a2sd:system/bin/a2sd \
    device/semc/msm7x27-common/prebuilt/etc/init.d/05mountext:system/etc/init.d/05mountext \
    device/semc/msm7x27-common/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    device/semc/msm7x27-common/prebuilt/etc/init.d/20link2sd:system/etc/init.d/20link2sd \
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

# SRS Audio
ifeq ($(TARGET_USES_SRS),true)
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/app/PlayMusic.apk:system/app/PlayMusic.apk \
    device/semc/msm7x27-common/prebuilt/app/SRSPanel.apk:system/app/SRSPanel.apk \
    device/semc/msm7x27-common/prebuilt/etc/audio_effects.conf:system/etc/audio_effects.conf \
    device/semc/msm7x27-common/prebuilt/etc/SRSAudioFilter.csv:system/etc/SRSAudioFilter.csv \
    device/semc/msm7x27-common/prebuilt/lib/soundfx/libsrsfx.so:system/lib/soundfx/libsrsfx.so \
    device/semc/msm7x27-common/prebuilt/lib/soundfx/libsrstb.so:system/lib/soundfx/libsrstb.so
endif

# OTA Update Center
PRODUCT_COPY_FILES += \
    device/semc/msm7x27-common/prebuilt/app/OTAUpdater.apk:system/app/OTAUpdater.apk
