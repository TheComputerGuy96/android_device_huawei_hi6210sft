LOCAL_PATH := device/huawei/hi6210sft

# Wifi/ETC
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/wifi,system/etc/wifi) \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/vendor/firmware,system/vendor/firmware) \

# Wifi 32 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/libwifi_factory_test.so:system/lib/libwifi_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib/libwifi_factory_test_hi110x.so:system/lib/libwifi_factory_test_hi110x.so \
        $(LOCAL_PATH)/rootdir/lib/libwifipro.so:system/lib/libwifipro.so \
        $(LOCAL_PATH)/rootdir/lib/libwpa_client_hisi.so:system/lib/libwpa_client_hisi.so \

# Wifi 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/libwifi_factory_test.so:system/lib64/libwifi_factory_test.so \
        $(LOCAL_PATH)/rootdir/lib64/libwifi_factory_test_hi110x.so:system/lib64/libwifi_factory_test_hi110x.so \
        $(LOCAL_PATH)/rootdir/lib64/libwifipro.so:system/lib64/libwifipro.so \
        $(LOCAL_PATH)/rootdir/lib64/libwpa_client_hisi.so:system/lib64/libwpa_client_hisi.so \
