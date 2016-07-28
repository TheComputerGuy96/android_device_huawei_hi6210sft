# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# AAPT
PRODUCT_AAPT_CONFIG := xhdpi hdpi normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Audio
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/audio,system/etc/audio) \
        $(LOCAL_PATH)/rootdir/etc/audio_effects.conf:system/etc/audio_effects.conf \
        $(LOCAL_PATH)/rootdir/etc/audio_policy.conf:system/etc/audio_policy.conf \
        $(LOCAL_PATH)/rootdir/lib/hw/audio.primary.hi6210sft.so:system/lib/hw/audio.primary.hi6210sft.so \
        $(LOCAL_PATH)/rootdir/lib/libaudioflinger.huawei.so:system/lib/libaudioflinger.huawei.so \
        $(LOCAL_PATH)/rootdir/lib/libaudioroute.so:system/lib/libaudioroute.so \
        $(LOCAL_PATH)/rootdir/lib64/hw/audio.primary.hi6210sft.so:system/lib64/hw/audio.primary.hi6210sft.so \
        $(LOCAL_PATH)/rootdir/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf

PRODUCT_PACKAGES += \
        audio.a2dp.default \
	audio.primary.hi6210st \
        audio.r_submix.default \
        audio.usb.default \
	libaudioutils \
	libtinyalsa \
    	sound_trigger.primary.hi6210sft \
	tinycap	\
	tinymix \
	tinypcminfo \
        tinyplay

# Bin
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/bin/,system/bin) \

# Blobs
#$(call inherit-product, vendor/hisi/hi6210sft/hi6210sft-vendor.mk)
#PRODUCT_RESTRICT_VENDOR_FILES := false

# Bluetooth
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/bluetooth,system/etc/bluetooth)

PRODUCT_PACKAGES += \
	bluetooth.default \
	
# Boot
PRE_BOOT_FILES := isp.bin ons.bin phone.prop

PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/isp.bin:system/isp.bin \
       $(LOCAL_PATH)/rootdir/ons.bin:system/ons.bin \
       $(LOCAL_PATH)/rootdir/phone.prop:system/phone.prop

# Camera
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/camera,system/etc/camera) \
        $(LOCAL_PATH)/rootdir/etc/camera_orientation.cfg:system/etc/camera_orientation.cfg \
        $(LOCAL_PATH)/rootdir/etc/camera_resolutions.cfg:system/etc/camera_resolutions.cfg \
        $(LOCAL_PATH)/rootdir/etc/camera_videosnapshot.cfg:system/etc/camera_videosnapshot.cfg \
        $(LOCAL_PATH)/rootdir/lib/hw/camera.hi6210sft.so:system/lib/hw/camera.hi6210sft.so \
        $(LOCAL_PATH)/rootdir/lib64/hw/camera.hi6210sft.so:system/lib/lib64/hw/camera.hi6210sft.so

# Chromium 32 Bit
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/lib/libwebviewchromium.so:system/lib/libwebviewchromium.so \
       $(LOCAL_PATH)/rootdir/lib/libwebviewchromium_loader.so:system/lib/libwebviewchromium_loader.so \
       $(LOCAL_PATH)/rootdir/lib/libwebviewchromium_plat_support.so:system/lib/libwebviewchromium_plat_support.so

# Chromium 64 Bit
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/lib64/libwebviewchromium.so:system/lib64/libwebviewchromium.so \
       $(LOCAL_PATH)/rootdir/lib64/libwebviewchromium_loader.so:system/lib64/libwebviewchromium_loader.so \
       $(LOCAL_PATH)/rootdir/lib64/libwebviewchromium_plat_support.so:system/lib64/libwebviewchromium_plat_support.so

# Codecs
PRODUCT_COPY_FILES += \
        frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
        $(LOCAL_PATH)/rootdir/etc/hisi_omx.cfg:system/etc/hisi_omx.cfg \
        $(LOCAL_PATH)/rootdir/etc/media_codecs.xml:system/etc/media_codecs.xml \
        $(LOCAL_PATH)/rootdir/etc/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
        $(LOCAL_PATH)/rootdir/etc/media_profiles.xml:system/etc/media_profiles.xml \

# Codecs K3
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_ffmpeg.so:system/lib/lib_k3_ffmpeg.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_avc.so:system/lib/lib_k3_omx_avc.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_avcenc.so:system/lib/lib_k3_omx_avcenc.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omxcore.so:system/lib/lib_k3_omxcore.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_mpeg2.so:system/lib/lib_k3_omx_mpeg2.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_mpeg4.so:system/lib/lib_k3_omx_mpeg4.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_rv.so:system/lib/lib_k3_omx_rv.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_vc1.so:system/lib/lib_k3_omx_vc1.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_vp8.so:system/lib/lib_k3_omx_vp8.so \

# Codecs K3 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_ffmpeg.so:system/lib64/lib_k3_ffmpeg.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_avc.so:system/lib64/lib_k3_omx_avc.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_avcenc.so:system/lib64/lib_k3_omx_avcenc.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omxcore.so:system/lib64/lib_k3_omxcore.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_mpeg2.so:system/lib64/lib_k3_omx_mpeg2.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_mpeg4.so:system/lib64/lib_k3_omx_mpeg4.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_rv.so:system/lib64/lib_k3_omx_rv.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_vc1.so:system/lib64/lib_k3_omx_vc1.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_vp8.so:system/lib64/lib_k3_omx_vp8.so \

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_PROPERTY_OVERRIDES += \
    	hw.lcd.lcd_density=320 \
    	ro.sf.lcd_density=320

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# File System
PRODUCT_PACKAGES += \
    	make_ext4fs \
    	setup_fs

# GPS
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/gnss,system/etc/gnss) \
        $(LOCAL_PATH)/rootdir/etc/gps.conf:system/etc/gps.conf \
        $(LOCAL_PATH)/rootdir/etc/gpsconfig.xml:system/etc/gpsconfig.xml \
        $(LOCAL_PATH)/rootdir/etc/hisi_cfg.ini:system/etc/hisi_cfg.ini \
        $(LOCAL_PATH)/rootdir/etc/hisi_cfg_alice.ini:system/etc/hisi_cfg_alice.ini \
        $(LOCAL_PATH)/rootdir/etc/hisi_cfg_cherry.ini:system/etc/hisi_cfg_cherry.ini \
        $(LOCAL_PATH)/rootdir/lib/hw/gps.hi110x.default.so:system/lib/hw/gps.hi110x.default.so \
        $(LOCAL_PATH)/rootdir/lib/libgps_factory_test.so:system/lib/libgps_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib/libgps_factory_test_hi110x.so:system/lib/libgps_factory_test_hi110x.so \
        $(LOCAL_PATH)/rootdir/lib64/hw/gps.hi110x.default.so:system/lib64/hw/gps.hi110x.default.so \
        $(LOCAL_PATH)/rootdir/lib64/hw/gps.hi6210sft.so:system/lib64/hw/gps.hi6210sft.so \
        $(LOCAL_PATH)/rootdir/lib64/libgps_factory_test.so:system/lib64/libgps_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib64/libgps_factory_test_hi110x.so:system/lib64/libgps_factory_test_hi110x.so

# Graphics (Don't use hwcomposer.hi6210sft module for now or will not boot)
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/mali/lib/egl/libGLES_mali.so:system/lib/egl/libGLES_mali.so \
        $(LOCAL_PATH)/mali/lib/hw/gralloc.hi6210sft.so:system/lib/hw/gralloc.hi6210sft.so \
        $(LOCAL_PATH)/mali/lib/libion.so:system/lib/libion.so

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/mali/lib64/egl/libGLES_mali.so:system/lib64/egl/libGLES_mali.so \
        $(LOCAL_PATH)/mali/lib64/hw/gralloc.hi6210sft.so:system/lib64/hw/gralloc.hi6210sft.so \
        $(LOCAL_PATH)/mali/lib64/libion.so:system/lib64/libion.so

PRODUCT_PACKAGES += \
	gralloc.hi6210sft \
	libGLES_android \
	libGLES_mali \
	libion

PRODUCT_PROPERTY_OVERRIDES += \
    	debug.hwui.render_dirty_regions=false \
    	persist.sys.strictmode.disable=1 \
    	persist.sys.use_dithering=2 \
    	ro.opengles.version=131072

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Keylayout
PRODUCT_COPY_FILES += \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/usr/keylayout,system/usr/keylayout) \

# LibNVME
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/libnvme.so:system/lib64/libnvme.so \

# Log
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/log,system/etc/log) \

# modemConfig
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/modemConfig,system/etc/modemConfig) \

# Overlay
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    	frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    	frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
 	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
 	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

# Ramdisk
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
       $(LOCAL_PATH)/ramdisk/init.chip.hi6210sft.rc:root/init.chip.hi6210sft.rc \
       $(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
       $(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc

# RIL
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/libbalong_audio_ril.so:system/lib/libbalong_audio_ril.so \
        $(LOCAL_PATH)/rootdir/lib/libbalong-ril.so:system/lib/libbalong-ril.so \
        $(LOCAL_PATH)/rootdir/lib/libbalong-ril-1.so:system/lib/libbalong-ril-1.so \
        $(LOCAL_PATH)/rootdir/lib/libreference-ril.so:system/lib/libreference-ril.so \
        $(LOCAL_PATH)/rootdir/lib/librilutils.so:system/lib/librilutils.so \
        $(LOCAL_PATH)/rootdir/lib64/libbalong_audio_ril.so:system/lib64/libbalong_audio_ril.so \
        $(LOCAL_PATH)/rootdir/lib64/libbalong-ril.so:system/lib64/libbalong-ril.so \
        $(LOCAL_PATH)/rootdir/lib64/libbalong-ril-1.so:system/lib64/libbalong-ril-1.so \
        $(LOCAL_PATH)/rootdir/lib64/libreference-ril.so:system/lib64/libreference-ril.so \
        $(LOCAL_PATH)/rootdir/lib64/librilutils.so:system/lib64/librilutils.so

PRODUCT_PACKAGES += \
	hwcustTelephony-common \
	hwframework \
	hwServices\
	hwTelephony-common \
	hwWifi-services

PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libbalong-ril.so \
    	rild.libpath1=/system/lib/libbalong-ril.so \
	rild.libpath2=/system/lib64/libbalong-ril-1.so \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.dsds_mode=umts_gsm \
	ro.config.hw_device_mode=clg_mode \
	ro.multi.rild=false

# Supplicant
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/libagnssal.so:system/lib/libagnssal.so \
        $(LOCAL_PATH)/rootdir/lib/libgnssadapter.so:system/lib/libgnssadapter.so \
        $(LOCAL_PATH)/rootdir/lib64/libagnssal.so:system/lib64/libagnssal.so \
        $(LOCAL_PATH)/rootdir/lib64/libgnssadapter.so:system/lib64/libgnssadapter.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl10client.so:system/lib/libsupl10client.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20client.so:system/lib/libsupl20client.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20comon.so:system/lib/libsupl20comon.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20if.so:system/lib/libsupl20if.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1comn.so:system/lib/libsupl20oasn1comn.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1lpp.so:system/lib/libsupl20oasn1lpp.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1rrc.so:system/lib/libsupl20oasn1rrc.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1rrlp.so:system/lib/libsupl20oasn1rrlp.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1supl1.so:system/lib/libsupl20oasn1supl1.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1supl2.so:system/lib/libsupl20oasn1supl2.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1tia.so:system/lib/libsupl20oasn1tia.so \

# Thermald
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/etc/thermald.xml:system/etc/thermald.xml \
        $(LOCAL_PATH)/rootdir/etc/thermald_performance.xml:system/etc/thermald_performance.xml

# TP Huawei
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/tp_test_parameters,system/etc/tp_test_parameters) \

# USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Wifi
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/wifi,system/etc/wifi) \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/vendor/firmware,system/vendor/firmware) \
        $(LOCAL_PATH)/rootdir/lib/libbt_factory_test.so:system/lib/libbt_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib/libbt_factory_test_hi110x.so:system/lib/libbt_factory_test_hi110x.so \
        $(LOCAL_PATH)/rootdir/lib/libwifi_factory_test.so:system/lib/libwifi_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib/libwifi_factory_test_hi110x.so:system/lib/libwifi_factory_test_hi110x.so \
        $(LOCAL_PATH)/rootdir/lib/libwifipro.so:system/lib/libwifipro.so \
        $(LOCAL_PATH)/rootdir/lib/libwpa_client_hisi.so:system/lib/libwpa_client_hisi.so \
        $(LOCAL_PATH)/rootdir/lib64/libbt_factory_test.so:system/lib64/libbt_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib64/libbt_factory_test_hi110x.so:system/lib64/libbt_factory_test_hi110x.so \
        $(LOCAL_PATH)/rootdir/lib64/libwifi_factory_test.so:system/lib64/libwifi_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib64/libwifi_factory_test_hi110x.so:system/lib64/libwifi_factory_test_hi110x.so \
        $(LOCAL_PATH)/rootdir/lib64/libwifipro.so:system/lib64/libwifipro.so \
        $(LOCAL_PATH)/rootdir/lib64/libwpa_client_hisi.so:system/lib64/libwpa_client_hisi.so \
        $(LOCAL_PATH)/rootdir/vendor/lib/libbt-vendor-hi110x.so:system/vendor/lib/libbt-vendor-hi110x.so \
        $(LOCAL_PATH)/rootdir/vendor/lib64/libbt-vendor-hi110x.so:system/vendor/lib64/libbt-vendor-hi110x.so

PRODUCT_PACKAGES += \
	bt_vendor.conf \
	dhcpcd \
	hostapd_hisi.conf \
	oam_app \
	octty \
	wpa_cli_hisi \
	wpa_supplicant_hisi \
 	wpa_supplicant_hisi.conf \
    	wpa_supplicant.conf

PRODUCT_PROPERTY_OVERRIDES += \
    	wifi.interface=wlan0 \
    	wifi.supplicant_scan_interval=15

# Zygote
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.zygote=zygote64_32

PRODUCT_COPY_FILES += \
	system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.zygote=zygote64_32
