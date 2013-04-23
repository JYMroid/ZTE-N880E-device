# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit device configuration
$(call inherit-product, device/zte/n880e/n880e.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

# Setup device configuration
PRODUCT_NAME := cm_n880e
PRODUCT_DEVICE := n880e
PRODUCT_BRAND := zte
PRODUCT_MODEL := zte n880e
PRODUCT_MANUFACTURER := zte
PRODUCT_RELEASE_NAME := n880e

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=n880e \
	BUILD_FINGERPRINT=zte/n880e:4.1.2/IMM76L/223133:userdebug/test-keys \
	PRIVATE_BUILD_DESC="n880e-user 4.1.2 IMM76L 223133 test-keys" \
	BUILD_NUMBER=223135
