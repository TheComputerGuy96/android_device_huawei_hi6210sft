LOCAL_PATH := device/huawei/hi6210sft

# GPS/ETC
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/gnss,system/etc/gnss) \
        $(LOCAL_PATH)/rootdir/etc/gps.conf:system/etc/gps.conf \
        $(LOCAL_PATH)/rootdir/etc/gpsconfig.xml:system/etc/gpsconfig.xml \
        $(LOCAL_PATH)/rootdir/etc/hisi_cfg.ini:system/etc/hisi_cfg.ini \
        $(LOCAL_PATH)/rootdir/etc/hisi_cfg_alice.ini:system/etc/hisi_cfg_alice.ini \
        $(LOCAL_PATH)/rootdir/etc/hisi_cfg_cherry.ini:system/etc/hisi_cfg_cherry.ini \

# GPS 32 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/hw/gps.hi110x.default.so:system/lib/hw/gps.hi110x.default.so \
        $(LOCAL_PATH)/rootdir/lib/libgps_factory_test.so:system/lib/libgps_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib/libgps_factory_test_hi110x.so:system/lib/libgps_factory_test_hi110x.so \

# GPS 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/hw/gps.hi110x.default.so:system/lib64/hw/gps.hi110x.default.so \
        $(LOCAL_PATH)/rootdir/lib64/hw/gps.hi6210sft.so:system/lib64/hw/gps.hi6210sft.so \
        $(LOCAL_PATH)/rootdir/lib64/libgps_factory_test.so:system/lib64/libgps_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib64/libgps_factory_test_hi110x.so:system/lib64/libgps_factory_test_hi110x.so

