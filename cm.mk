$(call inherit-product, device/htc/shooter/shooter.mk)

PRODUCT_RELEASE_NAME := Shooter

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit WiMAX stuff
#$(call inherit-product, vendor/cm/config/wimax.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooter BUILD_FINGERPRINT="sprint/htc_shooter/shooter:4.0.3/IML74K/409645.2:user/release-keys" PRIVATE_BUILD_DESC="2.89.651.2 CL409645 release-keys"

PRODUCT_NAME := cm_shooter
PRODUCT_DEVICE := shooter
PRODUCT_MODEL := PG86100
PRODUCT_MANUFACTURER := HTC

TARGET_BOOTANIMATION_NAME := vertical-540

# Release name and versioning
-include vendor/cm/config/common_versions.mk
