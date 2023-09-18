// Copyright 2023 QMK
// SPDX-License-Identifier: GPL-2.0-or-later
#include "sendchar.h"
#include "uart.h"

#ifndef SENDCHAR_BAUD_RATE
#    define SENDCHAR_BAUD_RATE 9600
#endif

void sendchar_init(void) {
    uart_init(SENDCHAR_BAUD_RATE);
}

int8_t sendchar(uint8_t c) {
    uart_write(c);
    return 0;
}
