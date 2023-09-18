// Copyright 2023 QMK
// SPDX-License-Identifier: GPL-2.0-or-later
#pragma once

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * \brief Initialise any dependent functionality or drivers.
 */
void sendchar_init(void);

/**
 * \brief Transmit a character.
 *
 * \return 0 on success, -1 on error.
 */
int8_t sendchar(uint8_t c);

#ifdef __cplusplus
}
#endif
