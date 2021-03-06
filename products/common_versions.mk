PRODUCT_VERSION_MAJOR = 7
PRODUCT_VERSION_MINOR = 2
PRODUCT_VERSION_MAINTENANCE = 0-RC0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=GWK74

ifdef CYANOGEN_NIGHTLY
    MODVERSION := CyanogenMod-$(PRODUCT_VERSION_MAJOR)-$(shell date +%m%d%Y)-NIGHTLY-$(PRODUCT_RELEASE_NAME)
    CMVERSION := CyanogenMod-$(PRODUCT_VERSION_MAJOR)-$(shell date +%m%d%Y)-NIGHTLY-$(CM_BUILD)
else
    ifdef CYANOGEN_RELEASE
        MODVERSION := CyanogenMod-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)
        CMVERSION := CyanogenMod-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(CM_BUILD)
    else
        MODVERSION := CyanogenMod-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)-KANG
        CMVERSION := CyanogenMod-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(CM_BUILD)-KANG
    endif
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(MODVERSION) \
    ro.cm.version=$(CMVERSION)