$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)

$(call inherit-product-if-exists, vendor/zte/n880e/n880e-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/n880e/overlay
PRODUCT_LOCALES += hdpi
#PRODUCT_LOCALES := zh_CN zh_TW en_US

# Video decoding
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libstagefrighthw
    
# Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7627a \
    copybit.msm7627a \
	lights.msm7627a \
    hwcomposer.msm7627a \
    libtilerenderer \
    libQcomUI \
	liboverlay \
    libgenlock \
    libmemalloc \
	libI420colorconvert \
	libhwcexternal \
	libhwcservice \
	libqdutils \
	mm-vdec-omx-test \
	mm-video-driver-test \
	mm-venc-omx-test720p \
	mm-video-encdrv-test
# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7627a \
	audio_policy.msm7627a \
    audio.a2dp.default \
    libaudioutils

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    gps.msm7627a \
    libloc_api-rpc \
    Camera

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
    
PRODUCT_COPY_FILES += \
    device/zte/n880e/prebuilt/init:root/init \
    device/zte/n880e/prebuilt/init.atlas40.rc:root/init.atlas40.rc \
    device/zte/n880e/prebuilt/init.goldfish.rc:root/init.goldfish.rc \
    device/zte/n880e/prebuilt/init.qcom.rc:root/init.qcom.rc \
    device/zte/n880e/prebuilt/init.qcom.sh:root/init.qcom.sh \
    device/zte/n880e/prebuilt/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/zte/n880e/prebuilt/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/zte/n880e/prebuilt/init.rc:root/init.rc \
    device/zte/n880e/prebuilt/init.target.rc:root/init.target.rc \
    device/zte/n880e/prebuilt/init.trace.rc:root/init.trace.rc \
    device/zte/n880e/prebuilt/init.usb.rc:root/init.usb.rc \
    device/zte/n880e/prebuilt/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/zte/n880e/prebuilt/ueventd.rc:root/ueventd.rc


PRODUCT_COPY_FILES += \
    device/zte/n880e/prebuilt/system/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    device/zte/n880e/prebuilt/system/etc/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    device/zte/n880e/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf
    
PRODUCT_COPY_FILES += \
    device/zte/n880e/prebuilt/system/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
    device/zte/n880e/prebuilt/system/etc/bluetooth/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
    device/zte/n880e/prebuilt/system/etc/bluetooth/blacklist.conf:system/etc/bluetooth/blacklist.conf \
    device/zte/n880e/prebuilt/system/etc/bluetooth/input.conf:system/etc/bluetooth/input.conf \
    device/zte/n880e/prebuilt/system/etc/BCM4330B1_002.001.032.0518.0520.hcd:system/etc/BCM4330B1_002.001.032.0518.0520.hcd \
    device/zte/n880e/prebuilt/system/etc/bluetooth/network.conf:system/etc/bluetooth/network.conf

PRODUCT_COPY_FILES += \
    device/zte/n880e/prebuilt/system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf:system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
    device/zte/n880e/prebuilt/system/etc/dhcpcd/dhcpcd-hooks/95-configured:system/etc/dhcpcd/dhcpcd-hooks/95-configured \
    device/zte/n880e/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/zte/n880e/prebuilt/system/etc/dhcpcd/dhcpcd-run-hooks:system/etc/dhcpcd/dhcpcd-run-hooks \
    device/zte/n880e/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/zte/n880e/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/zte/n880e/prebuilt/system/etc/init.goldfish.sh:system/etc/init.goldfish.sh \
    device/zte/n880e/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/zte/n880e/prebuilt/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/zte/n880e/prebuilt/system/etc/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
    device/zte/n880e/prebuilt/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/zte/n880e/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/zte/n880e/prebuilt/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/zte/n880e/prebuilt/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/zte/n880e/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab

    

PRODUCT_COPY_FILES += \
    device/zte/n880e/prebuilt/system/etc/firmware/ATLAS40_PR1115996-s2202_Truly_32323038.img:system/etc/firmware/ATLAS40_PR1115996-s2202_Truly_32323038.img \
    device/zte/n880e/prebuilt/system/etc/firmware/Ver11_20120409_N880E_9980_ID0x57_ATLAS40_app.bin:system/etc/firmware/Ver11_20120409_N880E_9980_ID0x57_ATLAS40_app.bin \
    device/zte/n880e/prebuilt/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/zte/n880e/prebuilt/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

PRODUCT_COPY_FILES += \
    device/zte/n880e/prebuilt/system/usr/idc/ft5x0x_ts.idc:system/usr/idc/ft5x0x_ts \
    device/zte/n880e/prebuilt/system/usr/idc/Fts-touchscreen.idc:system/usr/idc/Fts-touchscreen.idc \
    device/zte/n880e/prebuilt/system/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/zte/n880e/prebuilt/system/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/zte/n880e/prebuilt/system/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/zte/n880e/prebuilt/system/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty \
    device/zte/n880e/prebuilt/system/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2 \
    device/zte/n880e/prebuilt/system/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    device/zte/n880e/prebuilt/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/zte/n880e/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/zte/n880e/prebuilt/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/zte/n880e/prebuilt/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl
    
PRODUCT_COPY_FILES += \
    device/zte/n880e/prebuilt/system/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/zte/n880e/prebuilt/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/zte/n880e/prebuilt/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/zte/n880e/prebuilt/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/zte/n880e/prebuilt/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/zte/n880e/prebuilt/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/zte/n880e/prebuilt/system/lib/libC2D2.so:system/lib/libC2D2.so \
    device/zte/n880e/prebuilt/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/zte/n880e/prebuilt/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/zte/n880e/prebuilt/system/lib/libgsl.so:system/lib/libgsl.so \
    device/zte/n880e/prebuilt/system/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/zte/n880e/prebuilt/system/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so

$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_NAME := cm_n880e
PRODUCT_DEVICE := n880e
PRODUCT_BRAND := zte

