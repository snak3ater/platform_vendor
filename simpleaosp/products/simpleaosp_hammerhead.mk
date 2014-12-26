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
    BUILD_FINGERPRINT="google/hammerhead/hammerhead:5.0.1/LRX22C/1602158:user/release-keys" \
    PRIVATE_BUILD_DESC="hammerhead-user 5.0.1 LRX22C 1602158 release-keys"

# Module loading support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/init.d/88LoadMod:system/etc/init.d/88LoadMod \
    $(LOCAL_PATH)/etc/init.d/89InsMod:system/etc/init.d/89InsMod
