LOCAL_PATH := device/huawei/hi6210sft

# Supp 32 Bit Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/libagnssal.so:system/lib/libagnssal.so \
        $(LOCAL_PATH)/rootdir/lib/libgnssadapter.so:system/lib/libgnssadapter.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl10client.so:system/lib/libsupl10client.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20client.so:system/lib/libsupl20client.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20comon.so:system/lib/libsupl20comon.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20if.so:system/lib/libsupl20if.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1comn.so:system/lib/libsupl20oasn1comn.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1lpp.so:system/lib/libsupl20oasn1lpp.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1rrc.so:system/lib/libsupl20oasn1rrc.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1rrlp.so:system/lib/libsupl20oasn1rrlp.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1supl1.so:system/lib/libsupl20oasn1supl1.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1supl2.so:system/lib/libsupl20oasn1supl2.so \
        $(LOCAL_PATH)/rootdir/lib/libsupl20oasn1tia.so:system/lib/libsupl20oasn1tia.so \

# Supp 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/libagnssal.so:system/lib64/libagnssal.so \
        $(LOCAL_PATH)/rootdir/lib64/libgnssadapter.so:system/lib64/libgnssadapter.so \
