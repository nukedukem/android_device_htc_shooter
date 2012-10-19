$(call inherit-product, device/htc/shooter/device.mk)

PRODUCT_RELEASE_NAME := Shooter

# Inherit some common cna stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common cna stuff.
$(call inherit-product, vendor/cna/config/cdma.mk)


PRODUCT_NAME := full_shooter
PRODUCT_DEVICE := shooter
PRODUCT_MODEL := PG86100
PRODUCT_MANUFACTURER := HTC
