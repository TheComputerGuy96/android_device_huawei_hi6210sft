# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# AAPT
PRODUCT_AAPT_CONFIG := xhdpi hdpi normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

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
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/etc/gps.conf:system/etc/gps.conf \
        $(LOCAL_PATH)/rootdir/etc/gpsconfig.xml:system/etc/gpsconfig.xml \
        $(LOCAL_PATH)/rootdir/etc/hisi_cfg.ini:system/etc/hisi_cfg.ini \
        $(LOCAL_PATH)/rootdir/etc/hisi_cfg_alice.ini:system/etc/hisi_cfg_alice.ini \
        $(LOCAL_PATH)/rootdir/etc/hisi_cfg_cherry.ini:system/etc/hisi_cfg_cherry.ini \

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/hw/gps.hi110x.default.so:system/lib/hw/gps.hi110x.default.so \
        $(LOCAL_PATH)/rootdir/lib64/hw/gps.hi110x.default.so:system/lib64/hw/gps.hi110x.default.so \
        $(LOCAL_PATH)/rootdir/lib64/hw/gps.hi6210sft.so:system/lib64/hw/gps.hi6210sft.so

PRODUCT_PACKAGES += \
	gps.hi110x.default \
	gps.hi6210sft

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

# Live Wallpaper
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    librs_jni

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
 	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
 	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
 	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
 	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
 	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
 	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \

# Ramdisk
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
       $(LOCAL_PATH)/ramdisk/init.chip.hi6210sft.rc:root/init.chip.hi6210sft.rc \
       $(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
       $(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc

# Ramdisk/Connectivity
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.hi110x.rc:root/init.connectivity.hi110x.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc

PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.dsds_mode=umts_gsm \
	ro.config.hw_device_mode=clg_mode \
	ro.multi.rild=false

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    	audioril.lib=libhuawei-audio-ril.so \
    	ro.telephony.ril_class=HuaweiRIL

PRODUCT_PROPERTY_OVERRIDES += \
    	telephony.lteOnCdmaDevice=0 \
    	telephony.lteOnGsmDevice=1 \
    	ro.telephony.default_network=9

# USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# USB Interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    	persist.sys.usb.config=mtp

# USB OTG
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.isUsbOtgEnabled=true

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
