LOCAL_PATH := device/huawei/hi6210sft

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
