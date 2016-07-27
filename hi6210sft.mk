# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# AAPT
PRODUCT_AAPT_CONFIG := xhdpi hdpi normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi


# Audio
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/etc/audio_effects.conf:system/etc/audio_effects.conf \
        $(LOCAL_PATH)/rootdir/etc/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PACKAGES += \
        audio.a2dp.default \
	audio.primary.hi6210st \
        audio.r_submix.default \
        audio.usb.default \
        tinyplay

# Blobs
#$(call inherit-product, vendor/hisi/hi6210sft/hi6210sft-vendor.mk)
#PRODUCT_RESTRICT_VENDOR_FILES := false

# Bluetooth
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/bluetooth,system/etc/bluetooth)

# Boot
PRE_BOOT_FILES := isp.bin ons.bin phone.prop

PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/isp.bin:system/isp.bin \
       $(LOCAL_PATH)/rootdir/ons.bin:system/ons.bin \
       $(LOCAL_PATH)/rootdir/phone.prop:system/phone.prop

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
#PRODUCT_COPY_FILES += \
#        $(LOCAL_PATH)/rootdir/etc/media_codecs.xml:system/etc/media_codecs.xml \
#        $(LOCAL_PATH)/rootdir/etc/media_profiles.xml:system/etc/media_profiles.xml

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
        $(LOCAL_PATH)/rootdir/usr/keylayout/hikey.kl:system/usr/keylayout/hikey.kl

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
        $(LOCAL_PATH)/rootdir/lib64/libbalong_audio_ril.so:system/lib64/libbalong_audio_ril.so \
        $(LOCAL_PATH)/rootdir/lib64/libbalong-ril.so:system/lib64/libbalong-ril.so \
        $(LOCAL_PATH)/rootdir/lib64/libbalong-ril-1.so:system/lib64/libbalong-ril-1.so \

PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libbalong-ril.so \
    	rild.libpath1=/system/lib/libbalong-ril.so \
	rild.libpath2=/system/lib64/libbalong-ril-1.so \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.dsds_mode=umts_gsm \
	ro.config.hw_device_mode=clg_mode \
	ro.multi.rild=false

# USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Wifi
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/wifi,system/etc/wifi) \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/vendor/firmware,system/vendor/firmware) \
        $(LOCAL_PATH)/rootdir/bin/hisi_connectivity.sh:system/bin/hisi_connectivity.sh \
        $(LOCAL_PATH)/rootdir/bin/hostapd:system/bin/hostapd \
        $(LOCAL_PATH)/rootdir/bin/oam_app:system/bin/oam_app \
        $(LOCAL_PATH)/rootdir/bin/octty:system/bin/octty \
        $(LOCAL_PATH)/rootdir/bin/start_110x_service.sh:system/bin/start_110x_service.sh \
        $(LOCAL_PATH)/rootdir/bin/wpa_cli_hisi:system/bin/wpa_cli_hisi \
        $(LOCAL_PATH)/rootdir/bin/wpa_supplicant:system/bin/wpa_supplicant_hisi \
        $(LOCAL_PATH)/rootdir/lib/libbt_factory_test.so:system/lib/libbt_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib/libbt_factory_test_hi110x.so:system/lib/libbt_factory_test_hi110x.so \
        $(LOCAL_PATH)/rootdir/lib/libwifi_factory_test.so:system/lib/libwifi_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib/libwifi_factory_test_hi110x.so:system/lib/libwifi_factory_test_hi110x.so \
        $(LOCAL_PATH)/rootdir/lib/libwpa_client_hisi.so:system/lib/libwpa_client_hisi.so \
        $(LOCAL_PATH)/rootdir/lib64/libbt_factory_test.so:system/lib64/libbt_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib64/libbt_factory_test_hi110x.so:system/lib64/libbt_factory_test_hi110x.so \
        $(LOCAL_PATH)/rootdir/lib64/libwifi_factory_test.so:system/lib64/libwifi_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib64/libwifi_factory_test_hi110x.so:system/lib64/libwifi_factory_test_hi110x.so \
        $(LOCAL_PATH)/rootdir/lib64/libwpa_client_hisi.so:system/lib64/libwpa_client_hisi.so \
        $(LOCAL_PATH)/rootdir/vendor/lib/libbt-vendor-hi110x.so:system/vendor/lib/libbt-vendor-hi110x.so \
        $(LOCAL_PATH)/rootdir/vendor/lib64/libbt-vendor-hi110x.so:system/vendor/lib64/libbt-vendor-hi110x.so

PRODUCT_PACKAGES += \
    	dhcpcd.conf \
    	hostapd \
	hostapd.conf \
    	libnetcmdiface \
    	libwpa_client \
	oam_app \
	octty \
	wpa_cli_hisi \
    	wpa_supplicant \
    	wpa_supplicant.conf \

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
