/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/* SPDX-License-Identifier: Apache-2.0                                                                     */
/* Copyright(c) 2020 Nuvoton Technology Corp. All rights reserved.                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/

extern __xdata unsigned char IAPSPDataBuf[127];

void Erase_SPROM(void);
void Erase_Verify_SPROM(unsigned int u16IAPDataSize);
void Program_SPROM(unsigned int u16IAPDataSize);
void Read_Verify_SPROM( unsigned int u16IAPDataSize);
