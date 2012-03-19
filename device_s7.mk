DEVICE_PACKAGE_OVERLAYS += device/huawei/s7/overlay

LOCAL_KERNEL := device/huawei/s7/prebuilt/kernel

PRODUCT_COPY_FILES += $(LOCAL_KERNEL):kernel

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Product Packages
#PRODUCT_PACKAGES += \
#    libcamera
#
#    sensors.qsd8k 

PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so

PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# video
PRODUCT_COPY_FILES += \
    device/huawei/s7/include/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/s7/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/huawei/s7/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/huawei/s7/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/huawei/s7/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/huawei/s7/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/huawei/s7/prebuilt/lib/hw/gralloc.qsd8k.so:system/lib/hw/gralloc.qsd8k.so \
    device/huawei/s7/prebuilt/lib/hw/lights.qsd8k.so:system/lib/hw/lights.qsd8k.so \
    device/huawei/s7/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/huawei/s7/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# media
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    device/huawei/s7/prebuilt/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    device/huawei/s7/prebuilt/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    device/huawei/s7/prebuilt/lib/libOmxCore.so:system/lib/libOmxCore.so \
    device/huawei/s7/prebuilt/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    device/huawei/s7/prebuilt/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    device/huawei/s7/prebuilt/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    device/huawei/s7/prebuilt/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \
    device/huawei/s7/prebuilt/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    device/huawei/s7/prebuilt/lib/libOmxVdec.so:system/lib/libOmxVdec.so \
    device/huawei/s7/prebuilt/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so

# proprietar for radio
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/bin/port-bridge:system/bin/port-bridge \
    device/huawei/s7/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/huawei/s7/prebuilt/bin/test_oem_rapi:system/bin/test_oem_rapi \
    device/huawei/s7/prebuilt/bin/rild:system/bin/rild \
    device/huawei/s7/prebuilt/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    device/huawei/s7/prebuilt/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/huawei/s7/prebuilt/lib/liboncrpc.so:system/lib/liboncrpc.so \
    device/huawei/s7/prebuilt/lib/libdsm.so:system/lib/libdsm.so \
    device/huawei/s7/prebuilt/lib/libqueue.so:system/lib/libqueue.so \
    device/huawei/s7/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    device/huawei/s7/prebuilt/lib/libauth.so:system/lib/libauth.so \
    device/huawei/s7/prebuilt/lib/libcm.so:system/lib/libcm.so \
    device/huawei/s7/prebuilt/lib/libnv.so:system/lib/libnv.so \
    device/huawei/s7/prebuilt/lib/libpbmlib.so:system/lib/libpbmlib.so \
    device/huawei/s7/prebuilt/lib/libwms.so:system/lib/libwms.so \
    device/huawei/s7/prebuilt/lib/libwmsts.so:system/lib/libwmsts.so \
    device/huawei/s7/prebuilt/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    device/huawei/s7/prebuilt/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    device/huawei/s7/prebuilt/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    device/huawei/s7/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
    device/huawei/s7/prebuilt/lib/libdll.so:system/lib/libdll.so \
    device/huawei/s7/prebuilt/lib/libdss.so:system/lib/libdss.so \
    device/huawei/s7/prebuilt/lib/libril.so:system/lib/libril.so 

PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/usr/keylayout/s7_keypad.kl:system/usr/keylayout/s7_keypad.kl \
    device/huawei/s7/prebuilt/usr/keylayout/s7_handset.kl:system/usr/keylayout/s7_handset.kl \
    device/huawei/s7/prebuilt/usr/keychars/s7_keypad.kcm.bin:system/usr/keychars/s7_keypad.kcm.bin

# wifi
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/huawei/s7/prebuilt/etc/wifi/nvram_mfgtest-bcm4329.txt:system/etc/wifi/nvram_mfgtest-bcm4329.txt \
    device/huawei/s7/prebuilt/etc/wifi/nvram-bcm4329.txt:system/etc/wifi/nvram-bcm4329.txt \
    device/huawei/s7/prebuilt/etc/wifi/rtecdc-apsta-bcm4329.bin:system/etc/wifi/rtecdc-apsta-bcm4329.bin \
    device/huawei/s7/prebuilt/etc/wifi/rtecdc-bcm4319.bin:system/etc/wifi/rtecdc-bcm4319.bin \
    device/huawei/s7/prebuilt/etc/wifi/nvram_mfgtest-bcm4319.txt:system/etc/wifi/nvram_mfgtest-bcm4319.txt \
    device/huawei/s7/prebuilt/etc/wifi/nvram-bcm4319.txt:system/etc/wifi/nvram-bcm4319.txt \
    device/huawei/s7/prebuilt/etc/wifi/rtecdc-apsta-bcm4319.bin:system/etc/wifi/rtecdc-apsta-bcm4319.bin \
    device/huawei/s7/prebuilt/etc/wifi/rtecdc-mfgtest-bcm4319.bin:system/etc/wifi/rtecdc-mfgtest-bcm4319.bin \
    device/huawei/s7/prebuilt/etc/wifi/rtecdc-mfgtest-bcm4329.bin:system/etc/wifi/rtecdc-mfgtest-bcm4329.bin \
    device/huawei/s7/prebuilt/etc/wifi/rtecdc-bcm4329.bin:system/etc/wifi/rtecdc-bcm4329.bin

# Init and config files
PRODUCT_COPY_FILES += \
    device/huawei/s7/include/init.qsd8k_s7.rc:root/init.qsd8k_s7.rc \
    device/huawei/s7/include/init.rc:root/init.rc \
    device/huawei/s7/include/ueventd.rc:root/ueventd.rc \
    device/huawei/s7/include/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/s7/include/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

PRODUCT_PROPERTY_OVERRIDES := \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d/dev/smd0

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \
   device/huawei/s7/prebuilt/lib/liboemcamera.so:obj/lib/liboemcamera.so

#Copy camera libraries
PRODUCT_COPY_FILES += \
  device/huawei/s7/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
  device/huawei/s7/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
  device/huawei/s7/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := full_s7
PRODUCT_DEVICE := s7
PRODUCT_BRAND := Android
PRODUCT_MODEL := Full Android on s7
