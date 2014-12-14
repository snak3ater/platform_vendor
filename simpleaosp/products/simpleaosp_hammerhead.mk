# Local path for hammerhead prebuilts
LOCAL_PATH := vendor/simpleaosp/prebuilts/hammerhead/system

# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files
$(call inherit-product, vendor/simpleaosp/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := simpleaosp_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="hammerhead" \
    BUILD_FINGERPRINT="google/hammerhead/hammerhead:5.0/LRX21O/1570415:user/release-keys" \
    PRIVATE_BUILD_DESC="hammerhead-user 5.0 LRX21O 1570415 release-keys"

# Hammerhead greenbar camera recording fix & time update fix
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/app/TimeService/TimeService.apk:system/app/TimeService/TimeService.apk \
    $(LOCAL_PATH)/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so
