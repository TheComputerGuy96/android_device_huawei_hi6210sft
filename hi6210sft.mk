# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# AAPT
PRODUCT_AAPT_CONFIG := xhdpi hdpi normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Bin
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/bin/,system/bin) \

# Bluetooth
PRODUCT_PACKAGES += \
	bluetooth.default \
	
# Boot
PRE_BOOT_FILES := isp.bin ons.bin phone.prop

PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/isp.bin:system/isp.bin \
       $(LOCAL_PATH)/rootdir/ons.bin:system/ons.bin \
       $(LOCAL_PATH)/rootdir/phone.prop:system/phone.prop

# Camera
$(call inherit-product, device/huawei/hi6210sft/products/Camera.mk)

PRODUCT_PACKAGES += \
	camera.hi6210sft

# Chrome
$(call inherit-product, device/huawei/hi6210sft/products/Chrome.mk)

# Codecs
$(call inherit-product, device/huawei/hi6210sft/products/Codecs.mk)

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
$(call inherit-product, device/huawei/hi6210sft/products/GPS.mk)

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

# Fix libWVStreamControlAPI
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
        $(LOCAL_PATH)/rootdir/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so

# LibNVME
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/libnvme.so:system/lib64/libnvme.so \

# Modem
$(call inherit-product, device/huawei/hi6210sft/products/Modem.mk)

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
$(call inherit-product, device/huawei/hi6210sft/products/Balong.mk)

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
$(call inherit-product, device/huawei/hi6210sft/products/Supl20client.mk)

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
$(call inherit-product, device/huawei/hi6210sft/products/Wifi.mk)

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
