LOCAL_PATH := device/lenovo/lcsh6735m_35u_m

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_DEVICE := lcsh6735m_35u_m
PRODUCT_NAME := full_lcsh6735m_35u_m
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo K10a40
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery.fstab:root/etc/recovery.fstab \
    # $(LOCAL_PATH)/fstab.goldfish:root/recovery/fstab.goldfish \
    # $(LOCAL_PATH)/ueventd.goldfish.fstab:root/recovery/ueventd.goldfish.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := full_lcsh6735m_35u_m
