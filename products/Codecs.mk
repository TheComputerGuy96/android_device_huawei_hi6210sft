LOCAL_PATH := device/huawei/hi6210sft

# Codecs
PRODUCT_COPY_FILES += \
        frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
        $(LOCAL_PATH)/rootdir/etc/hisi_omx.cfg:system/etc/hisi_omx.cfg \
        $(LOCAL_PATH)/rootdir/etc/media_codecs.xml:system/etc/media_codecs.xml \
        $(LOCAL_PATH)/rootdir/etc/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
        $(LOCAL_PATH)/rootdir/etc/media_profiles.xml:system/etc/media_profiles.xml \

# Codecs K3
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_ffmpeg.so:system/lib/lib_k3_ffmpeg.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_avc.so:system/lib/lib_k3_omx_avc.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_avcenc.so:system/lib/lib_k3_omx_avcenc.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omxcore.so:system/lib/lib_k3_omxcore.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_mpeg2.so:system/lib/lib_k3_omx_mpeg2.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_mpeg4.so:system/lib/lib_k3_omx_mpeg4.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_rv.so:system/lib/lib_k3_omx_rv.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_vc1.so:system/lib/lib_k3_omx_vc1.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_vp8.so:system/lib/lib_k3_omx_vp8.so \

# Codecs K3 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_ffmpeg.so:system/lib64/lib_k3_ffmpeg.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_avc.so:system/lib64/lib_k3_omx_avc.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_avcenc.so:system/lib64/lib_k3_omx_avcenc.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omxcore.so:system/lib64/lib_k3_omxcore.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_mpeg2.so:system/lib64/lib_k3_omx_mpeg2.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_mpeg4.so:system/lib64/lib_k3_omx_mpeg4.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_rv.so:system/lib64/lib_k3_omx_rv.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_vc1.so:system/lib64/lib_k3_omx_vc1.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_vp8.so:system/lib64/lib_k3_omx_vp8.so \

