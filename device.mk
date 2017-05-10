#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gt510wifi/gt510wifi-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gt-common/device-common.mk)

LOCAL_PATH := device/samsung/gt510wifi

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gt510wifi/overlay

# Audio configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/acdb/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
	$(LOCAL_PATH)/configs/audio/acdb/General_cal.acdb:system/etc/General_cal.acdb \
	$(LOCAL_PATH)/configs/audio/acdb/Global_cal.acdb:system/etc/Global_cal.acdb \
	$(LOCAL_PATH)/configs/audio/acdb/Handset_cal.acdb:system/etc/Handset_cal.acdb \
	$(LOCAL_PATH)/configs/audio/acdb/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
	$(LOCAL_PATH)/configs/audio/acdb/Headset_cal.acdb:system/etc/Headset_cal.acdb \
	$(LOCAL_PATH)/configs/audio/acdb/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
	$(LOCAL_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf \
	$(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
	$(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
	$(LOCAL_PATH)/configs/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

# Media configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
	$(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# Disable RIL
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.carrier=wifi-only \
	ro.radio.noril=1

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.model=SM-T550 \
	ro.product.device=gt510wifi

