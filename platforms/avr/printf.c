// Copyright 2023 QMK
// SPDX-License-Identifier: GPL-2.0-or-later
#include "xprintf.h"
#include "sendchar.h"

void print_init(void) {
    sendchar_init();

    xdev_out(sendchar);
}
