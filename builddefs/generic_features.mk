# Copyright 2021 QMK
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

SPACE_CADET_ENABLE ?= yes
GRAVE_ESC_ENABLE ?= yes

GENERIC_FEATURES = \
    AUTO_SHIFT \
    AUTOCORRECT \
    CAPS_WORD \
    COMBO \
    COMMAND \
    CRC \
    DEFERRED_EXEC \
    DIGITIZER \
    DIP_SWITCH \
    DYNAMIC_KEYMAP \
    DYNAMIC_MACRO \
    DYNAMIC_TAPPING_TERM \
    ENCODER \
    ENCODER_MAP \
    GRAVE_ESC \
    HAPTIC \
    JOYSTICK \
    KEY_LOCK \
    KEY_OVERRIDE \
    LEADER \
    MAGIC \
    MUSIC \
    OS_DETECTION \
    OS_DETECTION_DEBUG \
    PROGRAMMABLE_BUTTON \
    REPEAT_KEY \
    SECURE \
    SLEEP_LED \
    SPACE_CADET \
    SWAP_HANDS \
    TAP_DANCE \
    TRI_LAYER \
    VELOCIKEY \
    VIA \
    VIRTSER \
    WPM \


define HANDLE_GENERIC_FEATURE
    # $$(info "Processing: $1_ENABLE $2.c")
    SRC += $$(wildcard $$(QUANTUM_DIR)/process_keycode/process_$2.c)
    SRC += $$(wildcard $$(QUANTUM_DIR)/$2/$2.c)
    SRC += $$(wildcard $$(QUANTUM_DIR)/$2.c)
    SRC += $$(wildcard $$(PLATFORM_COMMON_DIR)/$2.c)
    OPT_DEFS += -D$1_ENABLE
endef

$(foreach F,$(GENERIC_FEATURES),\
    $(if $(filter yes, $(strip $($(F)_ENABLE))),\
        $(eval $(call HANDLE_GENERIC_FEATURE,$(F),$(shell echo $(F) | tr '[:upper:]' '[:lower:]'))) \
    ) \
)
