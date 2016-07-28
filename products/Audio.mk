LOCAL_PATH := device/huawei/hi6210sft

# Audio ETC
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/audio,system/etc/audio) \
        $(LOCAL_PATH)/rootdir/etc/audio_effects.conf:system/etc/audio_effects.conf \
        $(LOCAL_PATH)/rootdir/etc/audio_policy.conf:system/etc/audio_policy.conf \

# Audio 32 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/hw/audio.primary.hi6210sft.so:system/lib/hw/audio.primary.hi6210sft.so \
        $(LOCAL_PATH)/rootdir/lib/libaudioflinger.huawei.so:system/lib/libaudioflinger.huawei.so \
        $(LOCAL_PATH)/rootdir/lib/libaudioroute.so:system/lib/libaudioroute.so \

# Audio 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/hw/audio.primary.hi6210sft.so:system/lib64/hw/audio.primary.hi6210sft.so \

# Vendor/EtC
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf
