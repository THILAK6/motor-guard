// SDCC compatibility for SFR and SBIT
// Remove Keil macros, use SDCC syntax
/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/* SPDX-License-Identifier: Apache-2.0                                                                     */
/* Copyright(c) 2020 Nuvoton Technology Corp. All rights reserved.                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------*/
// #include <8051.h> // Not needed for SDCC, SFR/SBIT macros defined above
/*  MS51_16K.H                                                                          */
/*  Header file for Nuvoton MS51FB9AE / MS51XB9AE / MS51XB9BE                           */
/*--------------------------------------------------------------------------------------*/

/******************************************************************************/
/*                      Macro define  header files                            */
/******************************************************************************/
#include "SFR_Macro_MS51_16K.h"


// sfr TL0         = 0x8A;
// sfr TL1         = 0x8B;
// sfr TH0         = 0x8C;
// sfr TH1         = 0x8D;
// sfr CKCON       = 0x8E;
// sfr WKCON       = 0x8F;
// sfr P1          = 0x90;
// sfr SFRS        = 0x91; //TA Protection
// sfr CAPCON1     = 0x93;
// sfr CAPCON2     = 0x94;
// sfr CKDIV       = 0x95;
// sfr CKSWT       = 0x96; //TA Protection
// sfr SBUF        = 0x99;
// sfr SBUF_1      = 0x9A;
// sfr EIE         = 0x9B;
// sfr EIE1        = 0x9C;
// sfr CHPCON      = 0x9F; //TA Protection
// sfr AUXR1       = 0xA2;
// sfr BODCON0     = 0xA3; //TA Protection
// sfr IAPAH       = 0xA7;
// sfr IE          = 0xA8;
// sfr SADDR       = 0xA9;
// sfr WDCON       = 0xAA; //TA Protection
// sfr P3S         = 0xAC; //Page1
// sfr P3SR        = 0xAD; //Page1
// sfr IAPCN       = 0xAF;
// sfr P3          = 0xB0;
// sfr P0M1        = 0xB1;
// sfr P0S         = 0xB1; //Page1
// sfr P0SR        = 0xB2; //Page1
// sfr P1S         = 0xB3; //Page1
// sfr P1SR        = 0xB4; //Page1
// sfr IPH         = 0xB7;
// sfr PWMINTC      = 0xB7;  //Page1
// sfr SADEN       = 0xB9;
// sfr SADEN_1     = 0xBA;
// sfr SADDR_1     = 0xBB;
// sfr I2DAT       = 0xBC;
// sfr I2STAT      = 0xBD;
// sfr I2CLK       = 0xBE;
// sfr I2TOC       = 0xBF;
// sfr I2CON       = 0xC0;
// sfr I2ADDR      = 0xC1;
// sfr ADCRL       = 0xC2;
// sfr ADCRH       = 0xC3;
// sfr T3CON       = 0xC4;
// sfr PWM4H       = 0xC4; //Page1
// sfr PWM5H       = 0xC5;  //Page1
// sfr PIOCON1     = 0xC6; //Page1
// sfr T2CON       = 0xC8;
// sfr T2MOD       = 0xC9;
// sfr RCMP2L      = 0xCA;
// sfr RCMP2H      = 0xCB;
// sfr TL2         = 0xCC; 
// sfr PWM4L       = 0xCC; //Page1
// sfr PWM5L       = 0xCD; //Page1
// sfr ADCMPH      = 0xCF;
// sfr PSW         = 0xD0;
// sfr PWMPH       = 0xD1;
// sfr PWM0H        = 0xD2;
// sfr PWM1H        = 0xD3;
// sfr PWM2H        = 0xD4;
// sfr PWM3H        = 0xD5;
// sfr PNP          = 0xD6;
// sfr FBD          = 0xD7;
// sfr PWMCON0      = 0xD8;
// sfr PWMPL       = 0xD9;
// sfr PWM0L        = 0xDA;
// sfr PWM1L        = 0xDB;
// sfr PWM2L        = 0xDC;
// sfr PWM3L        = 0xDD;
// sfr PIOCON0      = 0xDE;
// sfr PWMCON1     = 0xDF;
// sfr ACC         = 0xE0;
// sfr ADCCON1     = 0xE1;
// sfr ADCCON2     = 0xE2;
// sfr ADCDLY      = 0xE3;
// sfr C0L         = 0xE4;
// sfr C0H         = 0xE5;
// sfr C1L         = 0xE6;
// sfr C1H         = 0xE7;
// sfr ADCCON0     = 0xE8;
// sfr PICON       = 0xE9;
// sfr PINEN       = 0xEA;
// sfr PIPEN       = 0xEB;
// sfr PIF         = 0xEC;
// sfr C2L         = 0xED;
// sfr C2H         = 0xEE;
// sfr EIP         = 0xEF;
// sfr B           = 0xF0;
// sfr CAPCON3      = 0xF1;
// sfr CAPCON4      = 0xF2;
// sfr SPCR        = 0xF3;
// sfr SPCR2        = 0xF3; //Page1
// sfr SPDR        = 0xF5;
// sfr AINDIDS      = 0xF6;
// sfr EIPH        = 0xF7;
// sfr SCON_1      = 0xF8;
// sfr PDTEN       = 0xF9; //TA Protection
// sfr PMD         = 0xFC;
// sfr EIP1        = 0xFE;
// sfr EIPH1       = 0xFF;
__sfr __at (0x89) TMOD;
__sfr __at (0x8A) TL0;
__sfr __at (0x8B) TL1;
__sfr __at (0x8C) TH0;
__sfr __at (0x8D) TH1;
__sfr __at (0x8E) CKCON;
__sfr __at (0x8F) WKCON;
__sfr __at (0x90) P1;
__sfr __at (0x91) SFRS;
__sfr __at (0x92) CAPCON0;
__sfr __at (0x93) CAPCON1;
__sfr __at (0x94) CAPCON2;
__sfr __at (0x95) CKDIV;
__sfr __at (0x96) CKSWT;
__sfr __at (0x97) CKEN;
__sfr __at (0x98) SCON;
__sfr __at (0x99) SBUF;
__sfr __at (0x9A) SBUF_1;
__sfr __at (0x9B) EIE;
__sfr __at (0x9C) EIE1;
__sfr __at (0x9F) CHPCON;
__sfr __at (0xA0) P2;
__sfr __at (0xA2) AUXR1;
__sfr __at (0xA3) BODCON0;
__sfr __at (0xA4) IAPTRG;
__sfr __at (0xA5) IAPUEN;
__sfr __at (0xA6) IAPAL;
__sfr __at (0xA7) IAPAH;
__sfr __at (0xA8) IE;
__sfr __at (0xA9) SADDR;
__sfr __at (0xAA) WDCON;
__sfr __at (0xAB) BODCON1;
__sfr __at (0xAC) P3M1;
__sfr __at (0xAC) P3S;
__sfr __at (0xAD) P3M2;
__sfr __at (0xAD) P3SR;
__sfr __at (0xAE) IAPFD;
__sfr __at (0xAF) IAPCN;
__sfr __at (0xB0) P3;
__sfr __at (0xB1) P0M1;
__sfr __at (0xB1) P0S;
__sfr __at (0xB2) P0M2;
__sfr __at (0xB2) P0SR;
__sfr __at (0xB3) P1M1;
__sfr __at (0xB3) P1S;
__sfr __at (0xB4) P1M2;
__sfr __at (0xB4) P1SR;
__sfr __at (0xB5) P2S;
__sfr __at (0xB7) IPH;
__sfr __at (0xB7) PWMINTC;
__sfr __at (0xB8) IP;
__sfr __at (0xB9) SADEN;
__sfr __at (0xBA) SADEN_1;
__sfr __at (0xBB) SADDR_1;
__sfr __at (0xBC) I2DAT;
__sfr __at (0xBD) I2STAT;
__sfr __at (0xBE) I2CLK;
__sfr __at (0xBF) I2TOC;
__sfr __at (0xC0) I2CON;
__sfr __at (0xC1) I2ADDR;
__sfr __at (0xC2) ADCRL;
__sfr __at (0xC3) ADCRH;
__sfr __at (0xC4) T3CON;
__sfr __at (0xC4) PWM4H;
__sfr __at (0xC5) RL3;
__sfr __at (0xC5) PWM5H;
__sfr __at (0xC6) RH3;
__sfr __at (0xC6) PIOCON1;
__sfr __at (0xC7) TA;
__sfr __at (0xC8) T2CON;
__sfr __at (0xC9) T2MOD;
__sfr __at (0xCA) RCMP2L;
__sfr __at (0xCB) RCMP2H;
__sfr __at (0xCC) TL2;
__sfr __at (0xCC) PWM4L;
__sfr __at (0xCD) TH2;
__sfr __at (0xCD) PWM5L;
__sfr __at (0xCE) ADCMPL;
__sfr __at (0xCF) ADCMPH;
__sfr __at (0xD0) PSW;
__sfr __at (0xD1) PWMPH;
__sfr __at (0xD2) PWM0H;
__sfr __at (0xD3) PWM1H;
__sfr __at (0xD4) PWM2H;
__sfr __at (0xD5) PWM3H;
__sfr __at (0xD6) PNP;
__sfr __at (0xD7) FBD;
__sfr __at (0xD8) PWMCON0;
__sfr __at (0xD9) PWMPL;
__sfr __at (0xDA) PWM0L;
__sfr __at (0xDB) PWM1L;
__sfr __at (0xDC) PWM2L;
__sfr __at (0xDD) PWM3L;
__sfr __at (0xDE) PIOCON0;
__sfr __at (0xDF) PWMCON1;
__sfr __at (0xE0) ACC;
__sfr __at (0xE1) ADCCON1;
__sfr __at (0xE2) ADCCON2;
__sfr __at (0xE3) ADCDLY;
__sfr __at (0xE4) C0L;
__sfr __at (0xE5) C0H;
__sfr __at (0xE6) C1L;
__sfr __at (0xE7) C1H;
__sfr __at (0xE8) ADCCON0;
__sfr __at (0xE9) PICON;
__sfr __at (0xEA) PINEN;
__sfr __at (0xEB) PIPEN;
__sfr __at (0xEC) PIF;
__sfr __at (0xED) C2L;
__sfr __at (0xEE) C2H;
__sfr __at (0xEF) EIP;
__sfr __at (0xF0) B;
__sfr __at (0xF1) CAPCON3;
__sfr __at (0xF2) CAPCON4;
__sfr __at (0xF3) SPCR;
__sfr __at (0xF3) SPCR2;
__sfr __at (0xF4) SPSR;
__sfr __at (0xF5) SPDR;
__sfr __at (0xF6) AINDIDS;
__sfr __at (0xF7) EIPH;
__sfr __at (0xF8) SCON_1;
__sfr __at (0xF9) PDTEN;
__sfr __at (0xFA) PDTCNT;
__sfr __at (0xFB) PMEN;
__sfr __at (0xFC) PMD;
__sfr __at (0xFE) EIP1;
__sfr __at (0xFF) EIPH1;
// ...existing code...

/*  BIT Registers  */
/*  SCON_1  */
// sbit FE_1       = SCON_1^7; 
// sbit SM1_1      = SCON_1^6; 
// sbit SM2_1      = SCON_1^5; 
// sbit REN_1      = SCON_1^4; 
// sbit TB8_1      = SCON_1^3; 
// sbit RB8_1      = SCON_1^2; 
// sbit TI_1       = SCON_1^1; 
// sbit RI_1       = SCON_1^0; 
__sbit __at (0xF8^7) SM0_1;
__sbit __at (0xF8^7) FE_1;
__sbit __at (0xF8^6) SM1_1;
__sbit __at (0xF8^5) SM2_1;
__sbit __at (0xF8^4) REN_1;
__sbit __at (0xF8^3) TB8_1;
__sbit __at (0xF8^2) RB8_1;
__sbit __at (0xF8^1) TI_1;
__sbit __at (0xF8^0) RI_1;

/*  ADCCON0  */
// sbit ADCS       = ADCCON0^6;
// sbit ETGSEL1    = ADCCON0^5;
// sbit ETGSEL0    = ADCCON0^4;
// sbit ADCHS3     = ADCCON0^3;
// sbit ADCHS2     = ADCCON0^2;
// sbit ADCHS1     = ADCCON0^1;
// sbit ADCHS0     = ADCCON0^0;
__sbit __at (0xE8^7) ADCF;
__sbit __at (0xE8^6) ADCS;
__sbit __at (0xE8^5) ETGSEL1;
__sbit __at (0xE8^4) ETGSEL0;
__sbit __at (0xE8^3) ADCHS3;
__sbit __at (0xE8^2) ADCHS2;
__sbit __at (0xE8^1) ADCHS1;
__sbit __at (0xE8^0) ADCHS0;

/*  PWMCON0  */
// sbit LOAD       = PWMCON0^6;
// sbit PWMF       = PWMCON0^5;
// sbit CLRPWM     = PWMCON0^4;
__sbit __at (0xD8^7) PWMRUN;
__sbit __at (0xD8^6) LOAD;
__sbit __at (0xD8^5) PWMF;
__sbit __at (0xD8^4) CLRPWM;


/*  PSW */
// sbit AC         = PSW^6;
// sbit F0         = PSW^5;
// sbit RS1        = PSW^4;
// sbit RS0        = PSW^3;
// sbit OV         = PSW^2;
// sbit P          = PSW^0;
__sbit __at (0xD0^7) CY;
__sbit __at (0xD0^6) AC;
__sbit __at (0xD0^5) F0;
__sbit __at (0xD0^4) RS1;
__sbit __at (0xD0^3) RS0;
__sbit __at (0xD0^2) OV;
__sbit __at (0xD0^0) P;

/*  T2CON  */
// sbit TR2        = T2CON^2;
// sbit CM_RL2     = T2CON^0;
__sbit __at (0xC8^7) TF2;
__sbit __at (0xC8^2) TR2;
__sbit __at (0xC8^0) CM_RL2;
 
/*  I2CON  */
// sbit STA        = I2CON^5;
// sbit STO        = I2CON^4;
// sbit SI         = I2CON^3;
// sbit AA         = I2CON^2;
// sbit I2CPX  = I2CON^0;
__sbit __at (0xC0^6) I2CEN;
__sbit __at (0xC0^5) STA;
__sbit __at (0xC0^4) STO;
__sbit __at (0xC0^3) SI;
__sbit __at (0xC0^2) AA;
__sbit __at (0xC0^0) I2CPX;

/*  IP  */  
// sbit PBOD       = IP^5;
// sbit PS         = IP^4;
// sbit PT1        = IP^3;
// sbit PX1        = IP^2;
// sbit PT0        = IP^1;
// sbit PX0        = IP^0;
__sbit __at (0xB8^6) PADC;
__sbit __at (0xB8^5) PBOD;
__sbit __at (0xB8^4) PS;
__sbit __at (0xB8^3) PT1;
__sbit __at (0xB8^2) PX1;
__sbit __at (0xB8^1) PT0;
__sbit __at (0xB8^0) PX0;

/*  P3  */  
__sbit __at (0xB0^0) P30;


/*  IE  */
// sbit EADC       = IE^6;
// sbit EBOD       = IE^5;
// sbit ES         = IE^4;
// sbit ET1        = IE^3;
// sbit EX1        = IE^2;
// sbit ET0        = IE^1;
// sbit EX0        = IE^0;
__sbit __at (0xA8^7) EA;
__sbit __at (0xA8^6) EADC;
__sbit __at (0xA8^5) EBOD;
__sbit __at (0xA8^4) ES;
__sbit __at (0xA8^3) ET1;
__sbit __at (0xA8^2) EX1;
__sbit __at (0xA8^1) ET0;
__sbit __at (0xA8^0) EX0;

/*  P2  */ 
__sbit __at (0xA0^0) P20;

// /*  SCON  */
// sbit FE         = SCON^7; 
// sbit SM1        = SCON^6; 
// sbit SM2        = SCON^5; 
// sbit REN        = SCON^4; 
// sbit TB8        = SCON^3; 
// sbit RB8        = SCON^2; 
// sbit TI         = SCON^1; 
// sbit RI         = SCON^0; 
__sbit __at (0x98^7) SM0;
__sbit __at (0x98^7) FE;
__sbit __at (0x98^6) SM1;
__sbit __at (0x98^5) SM2;
__sbit __at (0x98^4) REN;
__sbit __at (0x98^3) TB8;
__sbit __at (0x98^2) RB8;
__sbit __at (0x98^1) TI;
__sbit __at (0x98^0) RI;

// sbit P12        = P1^2; 
// sbit P11        = P1^1;
// sbit P10        = P1^0;
/*  P1  */
__sbit __at (0x97) P17;
__sbit __at (0x96) P16;
__sbit __at (0x96) TXD_1;
__sbit __at (0x95) P15;
__sbit __at (0x94) P14;
__sbit __at (0x94) SDA;
__sbit __at (0x93) P13;
__sbit __at (0x93) SCL;
__sbit __at (0x92) P12;
__sbit __at (0x91) P11;
__sbit __at (0x90) P10;

/*  TCON  */
__sbit __at (0x8F) TF1;
__sbit __at (0x8E) TR1;
__sbit __at (0x8D) TF0;
__sbit __at (0x8C) TR0;
__sbit __at (0x8B) IE1;
__sbit __at (0x8A) IT1;
__sbit __at (0x89) IE0;
__sbit __at (0x88) IT0;

// sbit RXD        = P0^7;
// sbit P06        = P0^6;
// sbit TXD        = P0^6;
// sbit P05        = P0^5;
// sbit P04        = P0^4;
// sbit STADC        = P0^4;
// sbit P03        = P0^3;
// sbit P02        = P0^2;
// sbit RXD_1        = P0^2;
// sbit P01        = P0^1;
// sbit MISO        = P0^1;
// sbit P00        = P0^0;
// sbit MOSI        = P0^0;
/*  P0  */
__sbit __at (0x87) P07;
__sbit __at (0x87) RXD;
__sbit __at (0x86) P06;
__sbit __at (0x86) TXD;
__sbit __at (0x85) P05;
__sbit __at (0x84) P04;
__sbit __at (0x84) STADC;
__sbit __at (0x83) P03;
__sbit __at (0x82) P02;
__sbit __at (0x82) RXD_1;
__sbit __at (0x81) P01;
__sbit __at (0x81) MISO;
__sbit __at (0x80) P00;
__sbit __at (0x80) MOSI;












