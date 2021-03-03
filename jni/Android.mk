LOCAL_PATH := $(call my-dir)

LOCAL_SHORT_COMMANDS := true

include $(LOCAL_PATH)/Makefile.srcs

include $(CLEAR_VARS)
LOCAL_MODULE := crnlib
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../crnlib
LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES += $(SRCS)
LOCAL_LDLIBS := -llog
LOCAL_CFLAGS += -O3 -DDLL
LOCAL_CPPFLAGS += -O3 -DDLL

# build
include $(BUILD_SHARED_LIBRARY)