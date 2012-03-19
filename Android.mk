LOCAL_PATH := $(my-dir)
subdir_makefiles := \
        $(LOCAL_PATH)/libcamera2/Android.mk \
        $(LOCAL_PATH)/libaudio-qsd8k/Android.mk \
        $(LOCAL_PATH)/gralloc-qsd8k/Android.mk

include $(subdir_makefiles)
