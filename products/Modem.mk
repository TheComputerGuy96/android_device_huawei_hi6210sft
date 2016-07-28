LOCAL_PATH := device/huawei/hi6210sft

# Log
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/log,system/etc/log) \

# modemConfig
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/modemConfig,system/etc/modemConfig) \
