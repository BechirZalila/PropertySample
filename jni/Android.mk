LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := eng
 
LOCAL_MODULE := libnative-lib
LOCAL_SRC_FILES:= native-lib.cpp
LOCAL_SHARED_LIBRARIES := \
	libutils liblog libcutils
 
LOCAL_C_INCLUDES += \
	$(JNI_H_INCLUDE)
 
LOCAL_CFLAGS += -O0 -g3
 
include $(BUILD_SHARED_LIBRARY)
