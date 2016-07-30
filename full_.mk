# Inherit from the common Open Source product configuration
$(call inherit-product, device/huawei/hi6210sft/hi6210sft.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

PRODUCT_NAME := full_hi6210sft
PRODUCT_DEVICE := hi6210sft
PRODUCT_BRAND := hi6210sft
PRODUCT_MODEL := AOSP on hi6210sft by Haky86
PRODUCT_MANUFACTURER := HUAWEI
