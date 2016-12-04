LOCAL_PATH := $(call my-dir)

ifeq ($(filter lcsh6735m_35u_m,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif

