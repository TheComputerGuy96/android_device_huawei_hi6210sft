LOCAL_PATH := device/huawei/hi6210sft

# Balong 32 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/libbalong_audio_ril.so:system/lib/libbalong_audio_ril.so \
        $(LOCAL_PATH)/rootdir/lib/libbalong-ril.so:system/lib/libbalong-ril.so \
        $(LOCAL_PATH)/rootdir/lib/libbalong-ril-1.so:system/lib/libbalong-ril-1.so \
        $(LOCAL_PATH)/rootdir/lib/libreference-ril.so:system/lib/libreference-ril.so \
        $(LOCAL_PATH)/rootdir/lib/librilutils.so:system/lib/librilutils.so \

# Balong 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/libbalong_audio_ril.so:system/lib64/libbalong_audio_ril.so \
        $(LOCAL_PATH)/rootdir/lib64/libbalong-ril.so:system/lib64/libbalong-ril.so \
        $(LOCAL_PATH)/rootdir/lib64/libbalong-ril-1.so:system/lib64/libbalong-ril-1.so \
        $(LOCAL_PATH)/rootdir/lib64/libreference-ril.so:system/lib64/libreference-ril.so \
        $(LOCAL_PATH)/rootdir/lib64/librilutils.so:system/lib64/librilutils.so

