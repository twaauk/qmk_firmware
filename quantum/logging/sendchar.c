// Copyright 2023 QMK
// SPDX-License-Identifier: GPL-2.0-or-later
#include "sendchar.h"

/**
 * \file
 *
 * Default noop "null" implementation
 */

__attribute__((weak)) void sendchar_init(void) {
    // do nothing
}

__attribute__((weak)) int8_t sendchar(uint8_t c) {
    return 0;
}
