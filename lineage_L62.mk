# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from L62 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := spc
PRODUCT_DEVICE := L62
PRODUCT_MANUFACTURER := spc
PRODUCT_NAME := lineage_L62
PRODUCT_MODEL := L62

PRODUCT_GMS_CLIENTID_BASE := android-spc
TARGET_VENDOR := spc
TARGET_VENDOR_PRODUCT_NAME := L62
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sp9850ka_1h10_go-user 8.1.0 OPM2.171019.012 45117 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := SPC/L62/L62:8.1.0/OPM2.171019.012/45117:user/release-keys
