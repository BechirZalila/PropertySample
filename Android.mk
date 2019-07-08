LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := eng
LOCAL_SRC_FILES := $(call all-java-files-under,src)
LOCAL_PACKAGE_NAME := PropertySample
LOCAL_JNI_SHARED_LIBRARIES := libnative-lib
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true 
LOCAL_PROGUARD_ENABLED := disabled
 
include $(BUILD_PACKAGE)
 
include $(call all-makefiles-under,$(LOCAL_PATH))
