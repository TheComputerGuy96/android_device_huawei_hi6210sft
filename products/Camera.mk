LOCAL_PATH := device/huawei/hi6210sft

# Camera/ETC
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/camera,system/etc/camera) \
        $(LOCAL_PATH)/rootdir/etc/camera_orientation.cfg:system/etc/camera_orientation.cfg \
        $(LOCAL_PATH)/rootdir/etc/camera_resolutions.cfg:system/etc/camera_resolutions.cfg \
        $(LOCAL_PATH)/rootdir/etc/camera_videosnapshot.cfg:system/etc/camera_videosnapshot.cfg \

# Camera 32 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/hw/camera.hi6210sft.so:system/lib/hw/camera.hi6210sft.so \
        $(LOCAL_PATH)/rootdir/lib/libcamera_core.so:system/lib/libcamera_core.so \
        $(LOCAL_PATH)/rootdir/lib/libCameraHwCallBack.so:system/lib/libCameraHwCallBack.so \
        $(LOCAL_PATH)/rootdir/lib/libCameraHwParam.so:system/lib/libCameraHwParam.so \
        $(LOCAL_PATH)/rootdir/lib/libCameraHwSendCmd.so:system/lib/libCameraHwSendCmd.so \
        $(LOCAL_PATH)/rootdir/lib/libcamera_omron.so:system/lib/libcamera_omron.so \
        $(LOCAL_PATH)/rootdir/lib/libgnuexif.so:system/lib/libgnuexif.so \
        $(LOCAL_PATH)/rootdir/lib/libjpegenchw.so:system/lib/libjpegenchw.so \
        $(LOCAL_PATH)/rootdir/lib/libjpu.so:system/lib/libjpu.so \

# Camera 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/hw/camera.hi6210sft.so:system/lib64/hw/camera.hi6210sft.so \
        $(LOCAL_PATH)/rootdir/lib64/libCameraHwCallBack.so:system/lib64/libCameraHwCallBack.so \
        $(LOCAL_PATH)/rootdir/lib64/libCameraHwParam.so:system/lib64/libCameraHwParam.so \
        $(LOCAL_PATH)/rootdir/lib64/libCameraHwSendCmd.so:system/lib64/libCameraHwSendCmd.so \
        $(LOCAL_PATH)/rootdir/lib64/libgnuexif.so:system/lib64/libgnuexif.so \
        $(LOCAL_PATH)/rootdir/lib64/libjpu.so:system/lib64/libjpu.so
