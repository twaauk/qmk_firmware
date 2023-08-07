# As long as the users rules.mk has include $(KEYBOARD)/post_rules.mk this will be run after to properly setup any keyboard features and defines

ifeq ($(strip $(IOS_DEVICE_ENABLE)), yes)
    OPT_DEFS += -DIOS_DEVICE_ENABLE
else ifeq ($(strip $(RGBLIGHT_FULL_POWER)), yes)
    OPT_DEFS += -DRGBLIGHT_FULL_POWER
endif

ifeq ($(strip $(LED_MIRRORED)), yes)
    OPT_DEFS += -DLED_MIRRORED
endif
