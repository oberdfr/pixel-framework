# Inherit from pixel-framework config
TARGET_INCLUDE_PIXEL_FRAMEWORKS ?= true
ifeq ($(TARGET_INCLUDE_PIXEL_FRAMEWORKS),true)
PRODUCT_PACKAGES += \
    SystemUIGoogle \
    SettingsGoogle
endif

$(call inherit-product, vendor/pixel-framework/PixelParts/device.mk)
    

PRODUCT_PACKAGES += \
    ParanoidSense

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.face.sense_service=true