# Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ace

# Inherit some common aokp stuff.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)
$(call inherit-product, vendor/aokp/configs/common_versions.mk)

# Inherit the endeavoru device
$(call inherit-product, device/htc/ace/full_ace.mk)

PRODUCT_PACKAGES += \
Camera

# Device naming
PRODUCT_DEVICE := ace
PRODUCT_NAME := full_aokp_ace
PRODUCT_BRAND := HTC
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ace BUILD_FINGERPRINT="HTC/aokp_ace/ace:4.1.1/wolverine2k/1:userdebug/test-keys" PRIVATE_BUILD_DESC="wolverine2k 4.1.1 1 test-keys"

# Copy over prebuilt boot animation
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip

DEVICE_PACKAGE_OVERLAYS += vendor/aokp/overlay/ace

PRODUCT_COPY_FILES += \
