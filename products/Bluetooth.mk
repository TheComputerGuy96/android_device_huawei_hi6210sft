LOCAL_PATH := device/huawei/hi6210sft

# Bluetooth/ETC
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/bluetooth,system/etc/bluetooth)

# Bluetooth 32 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/libbt_factory_test.so:system/lib/libbt_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib/libbt_factory_test_hi110x.so:system/lib/libbt_factory_test_hi110x.so \

# Bluetooth 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/libbt_factory_test.so:system/lib64/libbt_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib64/libbt_factory_test_hi110x.so:system/lib64/libbt_factory_test_hi110x.so \

# BT Vendor Hi110x
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/vendor/lib/libbt-vendor-hi110x.so:system/vendor/lib/libbt-vendor-hi110x.so \
        $(LOCAL_PATH)/rootdir/vendor/lib64/libbt-vendor-hi110x.so:system/vendor/lib64/libbt-vendor-hi110x.so
