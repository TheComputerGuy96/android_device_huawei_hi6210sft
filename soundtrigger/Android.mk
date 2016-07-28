LOCAL_PATH := $(call my-dir)

# Stub sound_trigger HAL module, used for tests
include $(CLEAR_VARS)

LOCAL_MODULE := sound_trigger.primary.hi6210sft
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := sound_trigger_hw.c
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_MODULE_TAGS := optional
LOCAL_32_BIT_ONLY := true

include $(BUILD_SHARED_LIBRARY)
