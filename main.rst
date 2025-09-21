                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X ppc)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Flash_Write_Byte_PARM_2
                                     12 	.globl _led_val
                                     13 	.globl __MINUS
                                     14 	.globl __DP
                                     15 	.globl __ZZ
                                     16 	.globl __YY
                                     17 	.globl __XX
                                     18 	.globl __WW
                                     19 	.globl __VV
                                     20 	.globl __UU
                                     21 	.globl __TT
                                     22 	.globl __SS
                                     23 	.globl __RR
                                     24 	.globl __QQ
                                     25 	.globl __PP
                                     26 	.globl __OO
                                     27 	.globl __NN
                                     28 	.globl __MM
                                     29 	.globl __LL
                                     30 	.globl __KK
                                     31 	.globl __JJ
                                     32 	.globl __II
                                     33 	.globl __HH
                                     34 	.globl __GG
                                     35 	.globl __FF
                                     36 	.globl __EE
                                     37 	.globl __DD
                                     38 	.globl __CC
                                     39 	.globl __BB
                                     40 	.globl __AA
                                     41 	.globl __NV
                                     42 	.globl _main
                                     43 	.globl _Flash_Read
                                     44 	.globl _Flash_Read_Byte
                                     45 	.globl _Flash_Write
                                     46 	.globl _Flash_Write_Byte
                                     47 	.globl _Flash_Erase
                                     48 	.globl _IAP_Disable
                                     49 	.globl _IAP_Enable
                                     50 	.globl _tm1638_read_byte
                                     51 	.globl _ADC_ISR
                                     52 	.globl _get_peak_voltage
                                     53 	.globl _ADC_Init
                                     54 	.globl _Init_ports
                                     55 	.globl _Init_application
                                     56 	.globl _Timer0_ISR
                                     57 	.globl _Timer0_Delay1ms
                                     58 	.globl _RunVirtualTimer
                                     59 	.globl _Init_Timer
                                     60 	.globl _DIO
                                     61 	.globl _CLK
                                     62 	.globl _STB
                                     63 	.globl _MOSI
                                     64 	.globl _P00
                                     65 	.globl _MISO
                                     66 	.globl _P01
                                     67 	.globl _RXD_1
                                     68 	.globl _P02
                                     69 	.globl _P03
                                     70 	.globl _STADC
                                     71 	.globl _P04
                                     72 	.globl _P05
                                     73 	.globl _TXD
                                     74 	.globl _P06
                                     75 	.globl _RXD
                                     76 	.globl _P07
                                     77 	.globl _IT0
                                     78 	.globl _IE0
                                     79 	.globl _IT1
                                     80 	.globl _IE1
                                     81 	.globl _TR0
                                     82 	.globl _TF0
                                     83 	.globl _TR1
                                     84 	.globl _TF1
                                     85 	.globl _P10
                                     86 	.globl _P11
                                     87 	.globl _P12
                                     88 	.globl _SCL
                                     89 	.globl _P13
                                     90 	.globl _SDA
                                     91 	.globl _P14
                                     92 	.globl _P15
                                     93 	.globl _TXD_1
                                     94 	.globl _P16
                                     95 	.globl _P17
                                     96 	.globl _RI
                                     97 	.globl _TI
                                     98 	.globl _RB8
                                     99 	.globl _TB8
                                    100 	.globl _REN
                                    101 	.globl _SM2
                                    102 	.globl _SM1
                                    103 	.globl _FE
                                    104 	.globl _SM0
                                    105 	.globl _P20
                                    106 	.globl _EX0
                                    107 	.globl _ET0
                                    108 	.globl _EX1
                                    109 	.globl _ET1
                                    110 	.globl _ES
                                    111 	.globl _EBOD
                                    112 	.globl _EADC
                                    113 	.globl _EA
                                    114 	.globl _P30
                                    115 	.globl _PX0
                                    116 	.globl _PT0
                                    117 	.globl _PX1
                                    118 	.globl _PT1
                                    119 	.globl _PS
                                    120 	.globl _PBOD
                                    121 	.globl _PADC
                                    122 	.globl _I2CPX
                                    123 	.globl _AA
                                    124 	.globl _SI
                                    125 	.globl _STO
                                    126 	.globl _STA
                                    127 	.globl _I2CEN
                                    128 	.globl _CM_RL2
                                    129 	.globl _TR2
                                    130 	.globl _TF2
                                    131 	.globl _P
                                    132 	.globl _OV
                                    133 	.globl _RS0
                                    134 	.globl _RS1
                                    135 	.globl _F0
                                    136 	.globl _AC
                                    137 	.globl _CY
                                    138 	.globl _CLRPWM
                                    139 	.globl _PWMF
                                    140 	.globl _LOAD
                                    141 	.globl _PWMRUN
                                    142 	.globl _ADCHS0
                                    143 	.globl _ADCHS1
                                    144 	.globl _ADCHS2
                                    145 	.globl _ADCHS3
                                    146 	.globl _ETGSEL0
                                    147 	.globl _ETGSEL1
                                    148 	.globl _ADCS
                                    149 	.globl _ADCF
                                    150 	.globl _RI_1
                                    151 	.globl _TI_1
                                    152 	.globl _RB8_1
                                    153 	.globl _TB8_1
                                    154 	.globl _REN_1
                                    155 	.globl _SM2_1
                                    156 	.globl _SM1_1
                                    157 	.globl _FE_1
                                    158 	.globl _SM0_1
                                    159 	.globl _EIPH1
                                    160 	.globl _EIP1
                                    161 	.globl _PMD
                                    162 	.globl _PMEN
                                    163 	.globl _PDTCNT
                                    164 	.globl _PDTEN
                                    165 	.globl _SCON_1
                                    166 	.globl _EIPH
                                    167 	.globl _AINDIDS
                                    168 	.globl _SPDR
                                    169 	.globl _SPSR
                                    170 	.globl _SPCR2
                                    171 	.globl _SPCR
                                    172 	.globl _CAPCON4
                                    173 	.globl _CAPCON3
                                    174 	.globl _B
                                    175 	.globl _EIP
                                    176 	.globl _C2H
                                    177 	.globl _C2L
                                    178 	.globl _PIF
                                    179 	.globl _PIPEN
                                    180 	.globl _PINEN
                                    181 	.globl _PICON
                                    182 	.globl _ADCCON0
                                    183 	.globl _C1H
                                    184 	.globl _C1L
                                    185 	.globl _C0H
                                    186 	.globl _C0L
                                    187 	.globl _ADCDLY
                                    188 	.globl _ADCCON2
                                    189 	.globl _ADCCON1
                                    190 	.globl _ACC
                                    191 	.globl _PWMCON1
                                    192 	.globl _PIOCON0
                                    193 	.globl _PWM3L
                                    194 	.globl _PWM2L
                                    195 	.globl _PWM1L
                                    196 	.globl _PWM0L
                                    197 	.globl _PWMPL
                                    198 	.globl _PWMCON0
                                    199 	.globl _FBD
                                    200 	.globl _PNP
                                    201 	.globl _PWM3H
                                    202 	.globl _PWM2H
                                    203 	.globl _PWM1H
                                    204 	.globl _PWM0H
                                    205 	.globl _PWMPH
                                    206 	.globl _PSW
                                    207 	.globl _ADCMPH
                                    208 	.globl _ADCMPL
                                    209 	.globl _PWM5L
                                    210 	.globl _TH2
                                    211 	.globl _PWM4L
                                    212 	.globl _TL2
                                    213 	.globl _RCMP2H
                                    214 	.globl _RCMP2L
                                    215 	.globl _T2MOD
                                    216 	.globl _T2CON
                                    217 	.globl _TA
                                    218 	.globl _PIOCON1
                                    219 	.globl _RH3
                                    220 	.globl _PWM5H
                                    221 	.globl _RL3
                                    222 	.globl _PWM4H
                                    223 	.globl _T3CON
                                    224 	.globl _ADCRH
                                    225 	.globl _ADCRL
                                    226 	.globl _I2ADDR
                                    227 	.globl _I2CON
                                    228 	.globl _I2TOC
                                    229 	.globl _I2CLK
                                    230 	.globl _I2STAT
                                    231 	.globl _I2DAT
                                    232 	.globl _SADDR_1
                                    233 	.globl _SADEN_1
                                    234 	.globl _SADEN
                                    235 	.globl _IP
                                    236 	.globl _PWMINTC
                                    237 	.globl _IPH
                                    238 	.globl _P2S
                                    239 	.globl _P1SR
                                    240 	.globl _P1M2
                                    241 	.globl _P1S
                                    242 	.globl _P1M1
                                    243 	.globl _P0SR
                                    244 	.globl _P0M2
                                    245 	.globl _P0S
                                    246 	.globl _P0M1
                                    247 	.globl _P3
                                    248 	.globl _IAPCN
                                    249 	.globl _IAPFD
                                    250 	.globl _P3SR
                                    251 	.globl _P3M2
                                    252 	.globl _P3S
                                    253 	.globl _P3M1
                                    254 	.globl _BODCON1
                                    255 	.globl _WDCON
                                    256 	.globl _SADDR
                                    257 	.globl _IE
                                    258 	.globl _IAPAH
                                    259 	.globl _IAPAL
                                    260 	.globl _IAPUEN
                                    261 	.globl _IAPTRG
                                    262 	.globl _BODCON0
                                    263 	.globl _AUXR1
                                    264 	.globl _P2
                                    265 	.globl _CHPCON
                                    266 	.globl _EIE1
                                    267 	.globl _EIE
                                    268 	.globl _SBUF_1
                                    269 	.globl _SBUF
                                    270 	.globl _SCON
                                    271 	.globl _CKEN
                                    272 	.globl _CKSWT
                                    273 	.globl _CKDIV
                                    274 	.globl _CAPCON2
                                    275 	.globl _CAPCON1
                                    276 	.globl _CAPCON0
                                    277 	.globl _SFRS
                                    278 	.globl _P1
                                    279 	.globl _WKCON
                                    280 	.globl _CKCON
                                    281 	.globl _TH1
                                    282 	.globl _TH0
                                    283 	.globl _TL1
                                    284 	.globl _TL0
                                    285 	.globl _TMOD
                                    286 	.globl _scaled
                                    287 	.globl _div_volt
                                    288 	.globl _max_val
                                    289 	.globl _data_ready
                                    290 	.globl _adc_index
                                    291 	.globl _read_data
                                    292 	.globl _temp_v
                                    293 	.globl _peak
                                    294 	.globl _cnt_sample
                                    295 	.globl _volt
                                    296 	.globl _curr
                                    297 	.globl _ADC_CHANNEL_SWITCHING
                                    298 	.globl _ADCconversion
                                    299 	.globl _adc_buffer
                                    300 	.globl _i
                                    301 	.globl _flag
                                    302 	.globl _Flash_Read_PARM_3
                                    303 	.globl _Flash_Read_PARM_2
                                    304 	.globl _Flash_Write_PARM_3
                                    305 	.globl _Flash_Write_PARM_2
                                    306 	.globl _display_PARM_2
                                    307 	.globl _writeData_PARM_2
                                    308 	.globl _write_data
                                    309 	.globl _LoadDispBuffer
                                    310 	.globl _adc_value
                                    311 	.globl _bb
                                    312 	.globl _y
                                    313 	.globl _m
                                    314 	.globl _TimerElaspsed_200ms
                                    315 	.globl _TimerElaspsed_100ms
                                    316 	.globl _TimerElaspsed_1sec
                                    317 	.globl _TimerElaspsed_1min
                                    318 	.globl _key_press
                                    319 	.globl _Cnt_200ms
                                    320 	.globl _Cnt_100ms
                                    321 	.globl _Cnt_1m
                                    322 	.globl _Cnt_1s
                                    323 	.globl _TM1638_Write
                                    324 	.globl _writeCMD
                                    325 	.globl _writeData
                                    326 	.globl _display
                                    327 	.globl _tm1638_read_key
                                    328 	.globl _delay_ms
                                    329 	.globl _ChangeDisplay
                                    330 ;--------------------------------------------------------
                                    331 ; special function registers
                                    332 ;--------------------------------------------------------
                                    333 	.area RSEG    (ABS,DATA)
      000000                        334 	.org 0x0000
                           000089   335 _TMOD	=	0x0089
                           00008A   336 _TL0	=	0x008a
                           00008B   337 _TL1	=	0x008b
                           00008C   338 _TH0	=	0x008c
                           00008D   339 _TH1	=	0x008d
                           00008E   340 _CKCON	=	0x008e
                           00008F   341 _WKCON	=	0x008f
                           000090   342 _P1	=	0x0090
                           000091   343 _SFRS	=	0x0091
                           000092   344 _CAPCON0	=	0x0092
                           000093   345 _CAPCON1	=	0x0093
                           000094   346 _CAPCON2	=	0x0094
                           000095   347 _CKDIV	=	0x0095
                           000096   348 _CKSWT	=	0x0096
                           000097   349 _CKEN	=	0x0097
                           000098   350 _SCON	=	0x0098
                           000099   351 _SBUF	=	0x0099
                           00009A   352 _SBUF_1	=	0x009a
                           00009B   353 _EIE	=	0x009b
                           00009C   354 _EIE1	=	0x009c
                           00009F   355 _CHPCON	=	0x009f
                           0000A0   356 _P2	=	0x00a0
                           0000A2   357 _AUXR1	=	0x00a2
                           0000A3   358 _BODCON0	=	0x00a3
                           0000A4   359 _IAPTRG	=	0x00a4
                           0000A5   360 _IAPUEN	=	0x00a5
                           0000A6   361 _IAPAL	=	0x00a6
                           0000A7   362 _IAPAH	=	0x00a7
                           0000A8   363 _IE	=	0x00a8
                           0000A9   364 _SADDR	=	0x00a9
                           0000AA   365 _WDCON	=	0x00aa
                           0000AB   366 _BODCON1	=	0x00ab
                           0000AC   367 _P3M1	=	0x00ac
                           0000AC   368 _P3S	=	0x00ac
                           0000AD   369 _P3M2	=	0x00ad
                           0000AD   370 _P3SR	=	0x00ad
                           0000AE   371 _IAPFD	=	0x00ae
                           0000AF   372 _IAPCN	=	0x00af
                           0000B0   373 _P3	=	0x00b0
                           0000B1   374 _P0M1	=	0x00b1
                           0000B1   375 _P0S	=	0x00b1
                           0000B2   376 _P0M2	=	0x00b2
                           0000B2   377 _P0SR	=	0x00b2
                           0000B3   378 _P1M1	=	0x00b3
                           0000B3   379 _P1S	=	0x00b3
                           0000B4   380 _P1M2	=	0x00b4
                           0000B4   381 _P1SR	=	0x00b4
                           0000B5   382 _P2S	=	0x00b5
                           0000B7   383 _IPH	=	0x00b7
                           0000B7   384 _PWMINTC	=	0x00b7
                           0000B8   385 _IP	=	0x00b8
                           0000B9   386 _SADEN	=	0x00b9
                           0000BA   387 _SADEN_1	=	0x00ba
                           0000BB   388 _SADDR_1	=	0x00bb
                           0000BC   389 _I2DAT	=	0x00bc
                           0000BD   390 _I2STAT	=	0x00bd
                           0000BE   391 _I2CLK	=	0x00be
                           0000BF   392 _I2TOC	=	0x00bf
                           0000C0   393 _I2CON	=	0x00c0
                           0000C1   394 _I2ADDR	=	0x00c1
                           0000C2   395 _ADCRL	=	0x00c2
                           0000C3   396 _ADCRH	=	0x00c3
                           0000C4   397 _T3CON	=	0x00c4
                           0000C4   398 _PWM4H	=	0x00c4
                           0000C5   399 _RL3	=	0x00c5
                           0000C5   400 _PWM5H	=	0x00c5
                           0000C6   401 _RH3	=	0x00c6
                           0000C6   402 _PIOCON1	=	0x00c6
                           0000C7   403 _TA	=	0x00c7
                           0000C8   404 _T2CON	=	0x00c8
                           0000C9   405 _T2MOD	=	0x00c9
                           0000CA   406 _RCMP2L	=	0x00ca
                           0000CB   407 _RCMP2H	=	0x00cb
                           0000CC   408 _TL2	=	0x00cc
                           0000CC   409 _PWM4L	=	0x00cc
                           0000CD   410 _TH2	=	0x00cd
                           0000CD   411 _PWM5L	=	0x00cd
                           0000CE   412 _ADCMPL	=	0x00ce
                           0000CF   413 _ADCMPH	=	0x00cf
                           0000D0   414 _PSW	=	0x00d0
                           0000D1   415 _PWMPH	=	0x00d1
                           0000D2   416 _PWM0H	=	0x00d2
                           0000D3   417 _PWM1H	=	0x00d3
                           0000D4   418 _PWM2H	=	0x00d4
                           0000D5   419 _PWM3H	=	0x00d5
                           0000D6   420 _PNP	=	0x00d6
                           0000D7   421 _FBD	=	0x00d7
                           0000D8   422 _PWMCON0	=	0x00d8
                           0000D9   423 _PWMPL	=	0x00d9
                           0000DA   424 _PWM0L	=	0x00da
                           0000DB   425 _PWM1L	=	0x00db
                           0000DC   426 _PWM2L	=	0x00dc
                           0000DD   427 _PWM3L	=	0x00dd
                           0000DE   428 _PIOCON0	=	0x00de
                           0000DF   429 _PWMCON1	=	0x00df
                           0000E0   430 _ACC	=	0x00e0
                           0000E1   431 _ADCCON1	=	0x00e1
                           0000E2   432 _ADCCON2	=	0x00e2
                           0000E3   433 _ADCDLY	=	0x00e3
                           0000E4   434 _C0L	=	0x00e4
                           0000E5   435 _C0H	=	0x00e5
                           0000E6   436 _C1L	=	0x00e6
                           0000E7   437 _C1H	=	0x00e7
                           0000E8   438 _ADCCON0	=	0x00e8
                           0000E9   439 _PICON	=	0x00e9
                           0000EA   440 _PINEN	=	0x00ea
                           0000EB   441 _PIPEN	=	0x00eb
                           0000EC   442 _PIF	=	0x00ec
                           0000ED   443 _C2L	=	0x00ed
                           0000EE   444 _C2H	=	0x00ee
                           0000EF   445 _EIP	=	0x00ef
                           0000F0   446 _B	=	0x00f0
                           0000F1   447 _CAPCON3	=	0x00f1
                           0000F2   448 _CAPCON4	=	0x00f2
                           0000F3   449 _SPCR	=	0x00f3
                           0000F3   450 _SPCR2	=	0x00f3
                           0000F4   451 _SPSR	=	0x00f4
                           0000F5   452 _SPDR	=	0x00f5
                           0000F6   453 _AINDIDS	=	0x00f6
                           0000F7   454 _EIPH	=	0x00f7
                           0000F8   455 _SCON_1	=	0x00f8
                           0000F9   456 _PDTEN	=	0x00f9
                           0000FA   457 _PDTCNT	=	0x00fa
                           0000FB   458 _PMEN	=	0x00fb
                           0000FC   459 _PMD	=	0x00fc
                           0000FE   460 _EIP1	=	0x00fe
                           0000FF   461 _EIPH1	=	0x00ff
                                    462 ;--------------------------------------------------------
                                    463 ; special function bits
                                    464 ;--------------------------------------------------------
                                    465 	.area RSEG    (ABS,DATA)
      000000                        466 	.org 0x0000
                           0000FF   467 _SM0_1	=	0x00ff
                           0000FF   468 _FE_1	=	0x00ff
                           0000FE   469 _SM1_1	=	0x00fe
                           0000FD   470 _SM2_1	=	0x00fd
                           0000FC   471 _REN_1	=	0x00fc
                           0000FB   472 _TB8_1	=	0x00fb
                           0000FA   473 _RB8_1	=	0x00fa
                           0000F9   474 _TI_1	=	0x00f9
                           0000F8   475 _RI_1	=	0x00f8
                           0000EF   476 _ADCF	=	0x00ef
                           0000EE   477 _ADCS	=	0x00ee
                           0000ED   478 _ETGSEL1	=	0x00ed
                           0000EC   479 _ETGSEL0	=	0x00ec
                           0000EB   480 _ADCHS3	=	0x00eb
                           0000EA   481 _ADCHS2	=	0x00ea
                           0000E9   482 _ADCHS1	=	0x00e9
                           0000E8   483 _ADCHS0	=	0x00e8
                           0000DF   484 _PWMRUN	=	0x00df
                           0000DE   485 _LOAD	=	0x00de
                           0000DD   486 _PWMF	=	0x00dd
                           0000DC   487 _CLRPWM	=	0x00dc
                           0000D7   488 _CY	=	0x00d7
                           0000D6   489 _AC	=	0x00d6
                           0000D5   490 _F0	=	0x00d5
                           0000D4   491 _RS1	=	0x00d4
                           0000D3   492 _RS0	=	0x00d3
                           0000D2   493 _OV	=	0x00d2
                           0000D0   494 _P	=	0x00d0
                           0000CF   495 _TF2	=	0x00cf
                           0000CA   496 _TR2	=	0x00ca
                           0000C8   497 _CM_RL2	=	0x00c8
                           0000C6   498 _I2CEN	=	0x00c6
                           0000C5   499 _STA	=	0x00c5
                           0000C4   500 _STO	=	0x00c4
                           0000C3   501 _SI	=	0x00c3
                           0000C2   502 _AA	=	0x00c2
                           0000C0   503 _I2CPX	=	0x00c0
                           0000BE   504 _PADC	=	0x00be
                           0000BD   505 _PBOD	=	0x00bd
                           0000BC   506 _PS	=	0x00bc
                           0000BB   507 _PT1	=	0x00bb
                           0000BA   508 _PX1	=	0x00ba
                           0000B9   509 _PT0	=	0x00b9
                           0000B8   510 _PX0	=	0x00b8
                           0000B0   511 _P30	=	0x00b0
                           0000AF   512 _EA	=	0x00af
                           0000AE   513 _EADC	=	0x00ae
                           0000AD   514 _EBOD	=	0x00ad
                           0000AC   515 _ES	=	0x00ac
                           0000AB   516 _ET1	=	0x00ab
                           0000AA   517 _EX1	=	0x00aa
                           0000A9   518 _ET0	=	0x00a9
                           0000A8   519 _EX0	=	0x00a8
                           0000A0   520 _P20	=	0x00a0
                           00009F   521 _SM0	=	0x009f
                           00009F   522 _FE	=	0x009f
                           00009E   523 _SM1	=	0x009e
                           00009D   524 _SM2	=	0x009d
                           00009C   525 _REN	=	0x009c
                           00009B   526 _TB8	=	0x009b
                           00009A   527 _RB8	=	0x009a
                           000099   528 _TI	=	0x0099
                           000098   529 _RI	=	0x0098
                           000097   530 _P17	=	0x0097
                           000096   531 _P16	=	0x0096
                           000096   532 _TXD_1	=	0x0096
                           000095   533 _P15	=	0x0095
                           000094   534 _P14	=	0x0094
                           000094   535 _SDA	=	0x0094
                           000093   536 _P13	=	0x0093
                           000093   537 _SCL	=	0x0093
                           000092   538 _P12	=	0x0092
                           000091   539 _P11	=	0x0091
                           000090   540 _P10	=	0x0090
                           00008F   541 _TF1	=	0x008f
                           00008E   542 _TR1	=	0x008e
                           00008D   543 _TF0	=	0x008d
                           00008C   544 _TR0	=	0x008c
                           00008B   545 _IE1	=	0x008b
                           00008A   546 _IT1	=	0x008a
                           000089   547 _IE0	=	0x0089
                           000088   548 _IT0	=	0x0088
                           000087   549 _P07	=	0x0087
                           000087   550 _RXD	=	0x0087
                           000086   551 _P06	=	0x0086
                           000086   552 _TXD	=	0x0086
                           000085   553 _P05	=	0x0085
                           000084   554 _P04	=	0x0084
                           000084   555 _STADC	=	0x0084
                           000083   556 _P03	=	0x0083
                           000082   557 _P02	=	0x0082
                           000082   558 _RXD_1	=	0x0082
                           000081   559 _P01	=	0x0081
                           000081   560 _MISO	=	0x0081
                           000080   561 _P00	=	0x0080
                           000080   562 _MOSI	=	0x0080
                           000095   563 _STB	=	0x0095
                           000096   564 _CLK	=	0x0096
                           000097   565 _DIO	=	0x0097
                                    566 ;--------------------------------------------------------
                                    567 ; overlayable register banks
                                    568 ;--------------------------------------------------------
                                    569 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        570 	.ds 8
                                    571 ;--------------------------------------------------------
                                    572 ; internal ram data
                                    573 ;--------------------------------------------------------
                                    574 	.area DSEG    (DATA)
      000008                        575 _Cnt_1s::
      000008                        576 	.ds 2
      00000A                        577 _Cnt_1m::
      00000A                        578 	.ds 2
      00000C                        579 _Cnt_100ms::
      00000C                        580 	.ds 2
      00000E                        581 _Cnt_200ms::
      00000E                        582 	.ds 2
      000010                        583 _key_press::
      000010                        584 	.ds 2
      000012                        585 _TimerElaspsed_1min::
      000012                        586 	.ds 1
      000013                        587 _TimerElaspsed_1sec::
      000013                        588 	.ds 1
      000014                        589 _TimerElaspsed_100ms::
      000014                        590 	.ds 1
      000015                        591 _TimerElaspsed_200ms::
      000015                        592 	.ds 1
      000016                        593 _m::
      000016                        594 	.ds 1
      000017                        595 _y::
      000017                        596 	.ds 1
      000018                        597 _bb::
      000018                        598 	.ds 1
      000019                        599 _adc_value::
      000019                        600 	.ds 2
      00001B                        601 _LoadDispBuffer::
      00001B                        602 	.ds 10
      000025                        603 _write_data::
      000025                        604 	.ds 16
      000035                        605 _writeData_PARM_2:
      000035                        606 	.ds 1
      000036                        607 _display_PARM_2:
      000036                        608 	.ds 1
      000037                        609 _Flash_Write_PARM_2:
      000037                        610 	.ds 3
      00003A                        611 _Flash_Write_PARM_3:
      00003A                        612 	.ds 1
      00003B                        613 _Flash_Read_PARM_2:
      00003B                        614 	.ds 3
      00003E                        615 _Flash_Read_PARM_3:
      00003E                        616 	.ds 1
      00003F                        617 _flag::
      00003F                        618 	.ds 1
      000040                        619 _i::
      000040                        620 	.ds 1
      000041                        621 _ChangeDisplay_a_10000_219:
      000041                        622 	.ds 2
      000043                        623 _ChangeDisplay_b_10000_219:
      000043                        624 	.ds 2
      000045                        625 _ChangeDisplay_c_10000_219:
      000045                        626 	.ds 2
      000047                        627 _ChangeDisplay_d_10000_219:
      000047                        628 	.ds 2
      000049                        629 _ChangeDisplay_sloc0_1_0:
      000049                        630 	.ds 1
                                    631 ;--------------------------------------------------------
                                    632 ; overlayable items in internal ram
                                    633 ;--------------------------------------------------------
                                    634 	.area	OSEG    (OVR,DATA)
                                    635 	.area	OSEG    (OVR,DATA)
                                    636 	.area	OSEG    (OVR,DATA)
                                    637 	.area	OSEG    (OVR,DATA)
      00004A                        638 _Flash_Write_Byte_PARM_2:
      00004A                        639 	.ds 1
                                    640 	.area	OSEG    (OVR,DATA)
                                    641 ;--------------------------------------------------------
                                    642 ; Stack segment in internal ram
                                    643 ;--------------------------------------------------------
                                    644 	.area SSEG
      00004C                        645 __start__stack:
      00004C                        646 	.ds	1
                                    647 
                                    648 ;--------------------------------------------------------
                                    649 ; indirectly addressable internal ram data
                                    650 ;--------------------------------------------------------
                                    651 	.area ISEG    (DATA)
                                    652 ;--------------------------------------------------------
                                    653 ; absolute internal ram data
                                    654 ;--------------------------------------------------------
                                    655 	.area IABS    (ABS,DATA)
                                    656 	.area IABS    (ABS,DATA)
                                    657 ;--------------------------------------------------------
                                    658 ; bit data
                                    659 ;--------------------------------------------------------
                                    660 	.area BSEG    (BIT)
                                    661 ;--------------------------------------------------------
                                    662 ; paged external ram data
                                    663 ;--------------------------------------------------------
                                    664 	.area PSEG    (PAG,XDATA)
                                    665 ;--------------------------------------------------------
                                    666 ; uninitialized external ram data
                                    667 ;--------------------------------------------------------
                                    668 	.area XSEG    (XDATA)
      000000                        669 _adc_buffer::
      000000                        670 	.ds 50
      000032                        671 _ADCconversion::
      000032                        672 	.ds 1
      000033                        673 _ADC_CHANNEL_SWITCHING::
      000033                        674 	.ds 1
      000034                        675 _curr::
      000034                        676 	.ds 2
      000036                        677 _volt::
      000036                        678 	.ds 2
      000038                        679 _cnt_sample::
      000038                        680 	.ds 1
      000039                        681 _peak::
      000039                        682 	.ds 4
      00003D                        683 _temp_v::
      00003D                        684 	.ds 2
      00003F                        685 _read_data::
      00003F                        686 	.ds 16
                                    687 ;--------------------------------------------------------
                                    688 ; absolute external ram data
                                    689 ;--------------------------------------------------------
                                    690 	.area XABS    (ABS,XDATA)
                                    691 ;--------------------------------------------------------
                                    692 ; initialized external ram data
                                    693 ;--------------------------------------------------------
                                    694 	.area XISEG   (XDATA)
      00004F                        695 _adc_index::
      00004F                        696 	.ds 2
      000051                        697 _data_ready::
      000051                        698 	.ds 1
      000052                        699 _max_val::
      000052                        700 	.ds 2
      000054                        701 _div_volt::
      000054                        702 	.ds 2
      000056                        703 _scaled::
      000056                        704 	.ds 2
                                    705 	.area HOME    (CODE)
                                    706 	.area GSINIT0 (CODE)
                                    707 	.area GSINIT1 (CODE)
                                    708 	.area GSINIT2 (CODE)
                                    709 	.area GSINIT3 (CODE)
                                    710 	.area GSINIT4 (CODE)
                                    711 	.area GSINIT5 (CODE)
                                    712 	.area GSINIT  (CODE)
                                    713 	.area GSFINAL (CODE)
                                    714 	.area CSEG    (CODE)
                                    715 ;--------------------------------------------------------
                                    716 ; interrupt vector
                                    717 ;--------------------------------------------------------
                                    718 	.area HOME    (CODE)
      000000                        719 __interrupt_vect:
      000000 02 00 A4         [24]  720 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  721 	reti
      000004                        722 	.ds	7
      00000B 02 01 47         [24]  723 	ljmp	_Timer0_ISR
      00000E                        724 	.ds	5
      000013 32               [24]  725 	reti
      000014                        726 	.ds	7
      00001B 32               [24]  727 	reti
      00001C                        728 	.ds	7
      000023 32               [24]  729 	reti
      000024                        730 	.ds	7
      00002B 32               [24]  731 	reti
      00002C                        732 	.ds	7
      000033 32               [24]  733 	reti
      000034                        734 	.ds	7
      00003B 32               [24]  735 	reti
      00003C                        736 	.ds	7
      000043 32               [24]  737 	reti
      000044                        738 	.ds	7
      00004B 32               [24]  739 	reti
      00004C                        740 	.ds	7
      000053 32               [24]  741 	reti
      000054                        742 	.ds	7
      00005B 02 02 6F         [24]  743 	ljmp	_ADC_ISR
                                    744 ; restartable atomic support routines
      00005E                        745 	.ds	2
      000060                        746 sdcc_atomic_exchange_rollback_start::
      000060 00               [12]  747 	nop
      000061 00               [12]  748 	nop
      000062                        749 sdcc_atomic_exchange_pdata_impl:
      000062 E2               [24]  750 	movx	a, @r0
      000063 FB               [12]  751 	mov	r3, a
      000064 EA               [12]  752 	mov	a, r2
      000065 F2               [24]  753 	movx	@r0, a
      000066 80 2C            [24]  754 	sjmp	sdcc_atomic_exchange_exit
      000068 00               [12]  755 	nop
      000069 00               [12]  756 	nop
      00006A                        757 sdcc_atomic_exchange_xdata_impl:
      00006A E0               [24]  758 	movx	a, @dptr
      00006B FB               [12]  759 	mov	r3, a
      00006C EA               [12]  760 	mov	a, r2
      00006D F0               [24]  761 	movx	@dptr, a
      00006E 80 24            [24]  762 	sjmp	sdcc_atomic_exchange_exit
      000070                        763 sdcc_atomic_compare_exchange_idata_impl:
      000070 E6               [12]  764 	mov	a, @r0
      000071 B5 02 02         [24]  765 	cjne	a, ar2, .+#5
      000074 EB               [12]  766 	mov	a, r3
      000075 F6               [12]  767 	mov	@r0, a
      000076 22               [24]  768 	ret
      000077 00               [12]  769 	nop
      000078                        770 sdcc_atomic_compare_exchange_pdata_impl:
      000078 E2               [24]  771 	movx	a, @r0
      000079 B5 02 02         [24]  772 	cjne	a, ar2, .+#5
      00007C EB               [12]  773 	mov	a, r3
      00007D F2               [24]  774 	movx	@r0, a
      00007E 22               [24]  775 	ret
      00007F 00               [12]  776 	nop
      000080                        777 sdcc_atomic_compare_exchange_xdata_impl:
      000080 E0               [24]  778 	movx	a, @dptr
      000081 B5 02 02         [24]  779 	cjne	a, ar2, .+#5
      000084 EB               [12]  780 	mov	a, r3
      000085 F0               [24]  781 	movx	@dptr, a
      000086 22               [24]  782 	ret
      000087                        783 sdcc_atomic_exchange_rollback_end::
                                    784 
      000087                        785 sdcc_atomic_exchange_gptr_impl::
      000087 30 F6 E0         [24]  786 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00008A A8 82            [24]  787 	mov	r0, dpl
      00008C 20 F5 D3         [24]  788 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00008F                        789 sdcc_atomic_exchange_idata_impl:
      00008F EA               [12]  790 	mov	a, r2
      000090 C6               [12]  791 	xch	a, @r0
      000091 F5 82            [12]  792 	mov	dpl, a
      000093 22               [24]  793 	ret
      000094                        794 sdcc_atomic_exchange_exit:
      000094 8B 82            [24]  795 	mov	dpl, r3
      000096 22               [24]  796 	ret
      000097                        797 sdcc_atomic_compare_exchange_gptr_impl::
      000097 30 F6 E6         [24]  798 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00009A A8 82            [24]  799 	mov	r0, dpl
      00009C 20 F5 D9         [24]  800 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00009F 80 CF            [24]  801 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    802 ;--------------------------------------------------------
                                    803 ; global & static initialisations
                                    804 ;--------------------------------------------------------
                                    805 	.area HOME    (CODE)
                                    806 	.area GSINIT  (CODE)
                                    807 	.area GSFINAL (CODE)
                                    808 	.area GSINIT  (CODE)
                                    809 	.globl __sdcc_gsinit_startup
                                    810 	.globl __sdcc_program_startup
                                    811 	.globl __start__stack
                                    812 	.globl __mcs51_genXINIT
                                    813 	.globl __mcs51_genXRAMCLEAR
                                    814 	.globl __mcs51_genRAMCLEAR
                                    815 ;	src/main.c:25: volatile uint16_t adc_value = 0;
      0000FD E4               [12]  816 	clr	a
      0000FE F5 19            [12]  817 	mov	_adc_value,a
      000100 F5 1A            [12]  818 	mov	(_adc_value + 1),a
                                    819 ;	src/main.c:85: unsigned char write_data[USER_DATA_LEN] = {
      000102 75 25 11         [24]  820 	mov	_write_data,#0x11
      000105 75 26 22         [24]  821 	mov	(_write_data + 0x0001),#0x22
      000108 75 27 33         [24]  822 	mov	(_write_data + 0x0002),#0x33
      00010B 75 28 44         [24]  823 	mov	(_write_data + 0x0003),#0x44
      00010E 75 29 55         [24]  824 	mov	(_write_data + 0x0004),#0x55
      000111 75 2A 66         [24]  825 	mov	(_write_data + 0x0005),#0x66
      000114 75 2B 77         [24]  826 	mov	(_write_data + 0x0006),#0x77
      000117 75 2C 88         [24]  827 	mov	(_write_data + 0x0007),#0x88
      00011A 75 2D 99         [24]  828 	mov	(_write_data + 0x0008),#0x99
      00011D 75 2E AA         [24]  829 	mov	(_write_data + 0x0009),#0xaa
      000120 75 2F BB         [24]  830 	mov	(_write_data + 0x000a),#0xbb
      000123 75 30 CC         [24]  831 	mov	(_write_data + 0x000b),#0xcc
      000126 75 31 DD         [24]  832 	mov	(_write_data + 0x000c),#0xdd
      000129 75 32 EE         [24]  833 	mov	(_write_data + 0x000d),#0xee
      00012C 75 33 FF         [24]  834 	mov	(_write_data + 0x000e),#0xff
      00012F F5 34            [12]  835 	mov	(_write_data + 0x000f),a
                                    836 	.area GSFINAL (CODE)
      000131 02 00 A1         [24]  837 	ljmp	__sdcc_program_startup
                                    838 ;--------------------------------------------------------
                                    839 ; Home
                                    840 ;--------------------------------------------------------
                                    841 	.area HOME    (CODE)
                                    842 	.area HOME    (CODE)
      0000A1                        843 __sdcc_program_startup:
      0000A1 02 05 7D         [24]  844 	ljmp	_main
                                    845 ;	return from main will return to caller
                                    846 ;--------------------------------------------------------
                                    847 ; code
                                    848 ;--------------------------------------------------------
                                    849 	.area CSEG    (CODE)
                                    850 ;------------------------------------------------------------
                                    851 ;Allocation info for local variables in function 'Timer0_Delay1ms'
                                    852 ;------------------------------------------------------------
                                    853 ;	src/main.c:105: void Timer0_Delay1ms() {
                                    854 ;	-----------------------------------------
                                    855 ;	 function Timer0_Delay1ms
                                    856 ;	-----------------------------------------
      000134                        857 _Timer0_Delay1ms:
                           000007   858 	ar7 = 0x07
                           000006   859 	ar6 = 0x06
                           000005   860 	ar5 = 0x05
                           000004   861 	ar4 = 0x04
                           000003   862 	ar3 = 0x03
                           000002   863 	ar2 = 0x02
                           000001   864 	ar1 = 0x01
                           000000   865 	ar0 = 0x00
                                    866 ;	src/main.c:106: TMOD |= 0x01;      // Timer 0 Mode 1 (16bit)
      000134 43 89 01         [24]  867 	orl	_TMOD,#0x01
                                    868 ;	src/main.c:107: TL0 = 0x30;        // Load Timer 0 low byte
      000137 75 8A 30         [24]  869 	mov	_TL0,#0x30
                                    870 ;	src/main.c:108: TH0 = 0xF8;        // Load Timer 0 high byte
      00013A 75 8C F8         [24]  871 	mov	_TH0,#0xf8
                                    872 ;	src/main.c:109: TR0 = 1;           // Start Timer 0
                                    873 ;	assignBit
      00013D D2 8C            [12]  874 	setb	_TR0
                                    875 ;	src/main.c:110: while (TF0 == 0);  // Wait for overflow
      00013F                        876 00101$:
      00013F 30 8D FD         [24]  877 	jnb	_TF0,00101$
                                    878 ;	src/main.c:111: TR0 = 0;           // Stop Timer 0
                                    879 ;	assignBit
      000142 C2 8C            [12]  880 	clr	_TR0
                                    881 ;	src/main.c:112: TF0 = 0;           // Clear Timer 0 overflow flag
                                    882 ;	assignBit
      000144 C2 8D            [12]  883 	clr	_TF0
                                    884 ;	src/main.c:113: }
      000146 22               [24]  885 	ret
                                    886 ;------------------------------------------------------------
                                    887 ;Allocation info for local variables in function 'Timer0_ISR'
                                    888 ;------------------------------------------------------------
                                    889 ;	src/main.c:116: void Timer0_ISR(void) __interrupt(1)   // Vector 1 = Timer0
                                    890 ;	-----------------------------------------
                                    891 ;	 function Timer0_ISR
                                    892 ;	-----------------------------------------
      000147                        893 _Timer0_ISR:
      000147 C0 E0            [24]  894 	push	acc
      000149 C0 07            [24]  895 	push	ar7
      00014B C0 06            [24]  896 	push	ar6
      00014D C0 D0            [24]  897 	push	psw
      00014F 75 D0 00         [24]  898 	mov	psw,#0x00
                                    899 ;	src/main.c:119: Cnt_200ms++;
      000152 05 0E            [12]  900 	inc	_Cnt_200ms
      000154 E4               [12]  901 	clr	a
      000155 B5 0E 02         [24]  902 	cjne	a,_Cnt_200ms,00127$
      000158 05 0F            [12]  903 	inc	(_Cnt_200ms + 1)
      00015A                        904 00127$:
                                    905 ;	src/main.c:120: if(Cnt_200ms>=75) //130
      00015A AE 0E            [24]  906 	mov	r6,_Cnt_200ms
      00015C AF 0F            [24]  907 	mov	r7,(_Cnt_200ms + 1)
      00015E C3               [12]  908 	clr	c
      00015F EE               [12]  909 	mov	a,r6
      000160 94 4B            [12]  910 	subb	a,#0x4b
      000162 EF               [12]  911 	mov	a,r7
      000163 94 00            [12]  912 	subb	a,#0x00
      000165 40 08            [24]  913 	jc	00102$
                                    914 ;	src/main.c:122: TimerElaspsed_200ms=1;
      000167 75 15 01         [24]  915 	mov	_TimerElaspsed_200ms,#0x01
                                    916 ;	src/main.c:123: Cnt_200ms=0;
      00016A E4               [12]  917 	clr	a
      00016B F5 0E            [12]  918 	mov	_Cnt_200ms,a
      00016D F5 0F            [12]  919 	mov	(_Cnt_200ms + 1),a
      00016F                        920 00102$:
                                    921 ;	src/main.c:126: Cnt_1s++;  
      00016F 05 08            [12]  922 	inc	_Cnt_1s
      000171 E4               [12]  923 	clr	a
      000172 B5 08 02         [24]  924 	cjne	a,_Cnt_1s,00129$
      000175 05 09            [12]  925 	inc	(_Cnt_1s + 1)
      000177                        926 00129$:
                                    927 ;	src/main.c:127: if(Cnt_1s>=1000)   //650   
      000177 AE 08            [24]  928 	mov	r6,_Cnt_1s
      000179 AF 09            [24]  929 	mov	r7,(_Cnt_1s + 1)
      00017B C3               [12]  930 	clr	c
      00017C EE               [12]  931 	mov	a,r6
      00017D 94 E8            [12]  932 	subb	a,#0xe8
      00017F EF               [12]  933 	mov	a,r7
      000180 94 03            [12]  934 	subb	a,#0x03
      000182 40 08            [24]  935 	jc	00104$
                                    936 ;	src/main.c:129: TimerElaspsed_1sec = 1;				     
      000184 75 13 01         [24]  937 	mov	_TimerElaspsed_1sec,#0x01
                                    938 ;	src/main.c:130: Cnt_1s=0; 
      000187 E4               [12]  939 	clr	a
      000188 F5 08            [12]  940 	mov	_Cnt_1s,a
      00018A F5 09            [12]  941 	mov	(_Cnt_1s + 1),a
      00018C                        942 00104$:
                                    943 ;	src/main.c:133: Cnt_100ms++;
      00018C 05 0C            [12]  944 	inc	_Cnt_100ms
      00018E E4               [12]  945 	clr	a
      00018F B5 0C 02         [24]  946 	cjne	a,_Cnt_100ms,00131$
      000192 05 0D            [12]  947 	inc	(_Cnt_100ms + 1)
      000194                        948 00131$:
                                    949 ;	src/main.c:134: if(Cnt_100ms>=1)//65 //16
      000194 AE 0C            [24]  950 	mov	r6,_Cnt_100ms
      000196 AF 0D            [24]  951 	mov	r7,(_Cnt_100ms + 1)
      000198 C3               [12]  952 	clr	c
      000199 EE               [12]  953 	mov	a,r6
      00019A 94 01            [12]  954 	subb	a,#0x01
      00019C EF               [12]  955 	mov	a,r7
      00019D 94 00            [12]  956 	subb	a,#0x00
      00019F 40 1D            [24]  957 	jc	00106$
                                    958 ;	src/main.c:136: Cnt_100ms=0;
      0001A1 E4               [12]  959 	clr	a
      0001A2 F5 0C            [12]  960 	mov	_Cnt_100ms,a
      0001A4 F5 0D            [12]  961 	mov	(_Cnt_100ms + 1),a
                                    962 ;	src/main.c:138: set_ADCCON0_ADCS;  
                                    963 ;	assignBit
      0001A6 A2 AF            [12]  964 	mov	c,_EA
      0001A8 92 00            [24]  965 	mov	_BIT_TMP,c
                                    966 ;	assignBit
      0001AA C2 AF            [12]  967 	clr	_EA
      0001AC 75 C7 AA         [24]  968 	mov	_TA,#0xaa
      0001AF 75 C7 55         [24]  969 	mov	_TA,#0x55
      0001B2 75 91 00         [24]  970 	mov	_SFRS,#0x00
                                    971 ;	assignBit
      0001B5 A2 00            [12]  972 	mov	c,_BIT_TMP
      0001B7 92 AF            [24]  973 	mov	_EA,c
                                    974 ;	assignBit
      0001B9 D2 EE            [12]  975 	setb	_ADCS
                                    976 ;	src/main.c:139: TimerElaspsed_100ms=1;   
      0001BB 75 14 01         [24]  977 	mov	_TimerElaspsed_100ms,#0x01
      0001BE                        978 00106$:
                                    979 ;	src/main.c:141: TH0 = 0xF8;     // Initial reload high byte
      0001BE 75 8C F8         [24]  980 	mov	_TH0,#0xf8
                                    981 ;	src/main.c:142: TL0 = 0x30;     // Initial reload low byte 
      0001C1 75 8A 30         [24]  982 	mov	_TL0,#0x30
                                    983 ;	src/main.c:146: }
      0001C4 D0 D0            [24]  984 	pop	psw
      0001C6 D0 06            [24]  985 	pop	ar6
      0001C8 D0 07            [24]  986 	pop	ar7
      0001CA D0 E0            [24]  987 	pop	acc
      0001CC 32               [24]  988 	reti
                                    989 ;	eliminated unneeded push/pop dpl
                                    990 ;	eliminated unneeded push/pop dph
                                    991 ;	eliminated unneeded push/pop b
                                    992 ;------------------------------------------------------------
                                    993 ;Allocation info for local variables in function 'Init_application'
                                    994 ;------------------------------------------------------------
                                    995 ;	src/main.c:149: void Init_application(void)
                                    996 ;	-----------------------------------------
                                    997 ;	 function Init_application
                                    998 ;	-----------------------------------------
      0001CD                        999 _Init_application:
                                   1000 ;	src/main.c:151: T_SV[ADC_SAMPLE_INTERVAL_TIMER] = SV_ADC_SAMPLE_INTERVAL_TIME; 
      0001CD 75 00 01         [24] 1001 	mov	(_T_SV + 0),#0x01
      0001D0 75 01 00         [24] 1002 	mov	(_T_SV + 1),#0x00
                                   1003 ;	src/main.c:152: T_SV[REFRESH_DISP_TIMER]                = SV_curr_disp_TIME;
      0001D3 75 02 64         [24] 1004 	mov	((_T_SV + 0x0002) + 0),#0x64
      0001D6 75 03 00         [24] 1005 	mov	((_T_SV + 0x0002) + 1),#0x00
                                   1006 ;	src/main.c:153: T_SV[ADC_CH_TRIGGER_SV]	           = ADC_CH_TRIGGER;
      0001D9 75 04 D0         [24] 1007 	mov	((_T_SV + 0x0004) + 0),#0xd0
      0001DC 75 05 07         [24] 1008 	mov	((_T_SV + 0x0004) + 1),#0x07
                                   1009 ;	src/main.c:154: T_SV[TM1638_Read_Key_index]        = SV_TM1638_Read_Key;
      0001DF 75 06 64         [24] 1010 	mov	((_T_SV + 0x0006) + 0),#0x64
      0001E2 75 07 00         [24] 1011 	mov	((_T_SV + 0x0006) + 1),#0x00
                                   1012 ;	src/main.c:156: T0P= ON;
      0001E5 75 00 01         [24] 1013 	mov	_T0P,#0x01
                                   1014 ;	src/main.c:157: T1P= ON;
      0001E8 75 00 01         [24] 1015 	mov	_T1P,#0x01
                                   1016 ;	src/main.c:158: T2P = ON;
      0001EB 75 00 01         [24] 1017 	mov	_T2P,#0x01
                                   1018 ;	src/main.c:159: T3P = ON;
      0001EE 75 00 01         [24] 1019 	mov	_T3P,#0x01
                                   1020 ;	src/main.c:160: }
      0001F1 22               [24] 1021 	ret
                                   1022 ;------------------------------------------------------------
                                   1023 ;Allocation info for local variables in function 'Init_ports'
                                   1024 ;------------------------------------------------------------
                                   1025 ;	src/main.c:163: void Init_ports(void)
                                   1026 ;	-----------------------------------------
                                   1027 ;	 function Init_ports
                                   1028 ;	-----------------------------------------
      0001F2                       1029 _Init_ports:
                                   1030 ;	src/main.c:165: P02_PUSHPULL_MODE;
      0001F2 53 B1 FB         [24] 1031 	anl	_P0M1,#0xfb
      0001F5 43 B2 04         [24] 1032 	orl	_P0M2,#0x04
                                   1033 ;	src/main.c:166: }
      0001F8 22               [24] 1034 	ret
                                   1035 ;------------------------------------------------------------
                                   1036 ;Allocation info for local variables in function 'ADC_Init'
                                   1037 ;------------------------------------------------------------
                                   1038 ;	src/main.c:169: void ADC_Init(void)
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function ADC_Init
                                   1041 ;	-----------------------------------------
      0001F9                       1042 _ADC_Init:
                                   1043 ;	src/main.c:229: ADCconversion = PROCESS_NEXT_CHANNEL;
      0001F9 90 00 32         [24] 1044 	mov	dptr,#_ADCconversion
      0001FC 74 03            [12] 1045 	mov	a,#0x03
      0001FE F0               [24] 1046 	movx	@dptr,a
                                   1047 ;	src/main.c:230: ADC_CHANNEL_SWITCHING = 1;
      0001FF 90 00 33         [24] 1048 	mov	dptr,#_ADC_CHANNEL_SWITCHING
      000202 74 01            [12] 1049 	mov	a,#0x01
      000204 F0               [24] 1050 	movx	@dptr,a
                                   1051 ;	src/main.c:231: }
      000205 22               [24] 1052 	ret
                                   1053 ;------------------------------------------------------------
                                   1054 ;Allocation info for local variables in function 'get_peak_voltage'
                                   1055 ;------------------------------------------------------------
                                   1056 ;	src/main.c:234: float get_peak_voltage(void)
                                   1057 ;	-----------------------------------------
                                   1058 ;	 function get_peak_voltage
                                   1059 ;	-----------------------------------------
      000206                       1060 _get_peak_voltage:
                                   1061 ;	src/main.c:236: max_val = 0;
      000206 90 00 52         [24] 1062 	mov	dptr,#_max_val
      000209 E4               [12] 1063 	clr	a
      00020A F0               [24] 1064 	movx	@dptr,a
      00020B A3               [24] 1065 	inc	dptr
      00020C F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	src/main.c:239: for ( cnt_sample = 0; cnt_sample < NUM_SAMPLES; cnt_sample++)
      00020D 90 00 38         [24] 1068 	mov	dptr,#_cnt_sample
      000210 F0               [24] 1069 	movx	@dptr,a
      000211                       1070 00104$:
                                   1071 ;	src/main.c:241: if (adc_buffer[cnt_sample] > max_val)
      000211 90 00 38         [24] 1072 	mov	dptr,#_cnt_sample
      000214 E0               [24] 1073 	movx	a,@dptr
      000215 75 F0 02         [24] 1074 	mov	b,#0x02
      000218 A4               [48] 1075 	mul	ab
      000219 FE               [12] 1076 	mov	r6,a
      00021A AF F0            [24] 1077 	mov	r7,b
      00021C 24 00            [12] 1078 	add	a, #_adc_buffer
      00021E F5 82            [12] 1079 	mov	dpl,a
      000220 EF               [12] 1080 	mov	a,r7
      000221 34 00            [12] 1081 	addc	a, #(_adc_buffer >> 8)
      000223 F5 83            [12] 1082 	mov	dph,a
      000225 E0               [24] 1083 	movx	a,@dptr
      000226 FC               [12] 1084 	mov	r4,a
      000227 A3               [24] 1085 	inc	dptr
      000228 E0               [24] 1086 	movx	a,@dptr
      000229 FD               [12] 1087 	mov	r5,a
      00022A 90 00 52         [24] 1088 	mov	dptr,#_max_val
      00022D E0               [24] 1089 	movx	a,@dptr
      00022E FA               [12] 1090 	mov	r2,a
      00022F A3               [24] 1091 	inc	dptr
      000230 E0               [24] 1092 	movx	a,@dptr
      000231 FB               [12] 1093 	mov	r3,a
      000232 C3               [12] 1094 	clr	c
      000233 EA               [12] 1095 	mov	a,r2
      000234 9C               [12] 1096 	subb	a,r4
      000235 EB               [12] 1097 	mov	a,r3
      000236 9D               [12] 1098 	subb	a,r5
      000237 50 17            [24] 1099 	jnc	00105$
                                   1100 ;	src/main.c:242: max_val = adc_buffer[cnt_sample];
      000239 EE               [12] 1101 	mov	a,r6
      00023A 24 00            [12] 1102 	add	a, #_adc_buffer
      00023C F5 82            [12] 1103 	mov	dpl,a
      00023E EF               [12] 1104 	mov	a,r7
      00023F 34 00            [12] 1105 	addc	a, #(_adc_buffer >> 8)
      000241 F5 83            [12] 1106 	mov	dph,a
      000243 E0               [24] 1107 	movx	a,@dptr
      000244 FE               [12] 1108 	mov	r6,a
      000245 A3               [24] 1109 	inc	dptr
      000246 E0               [24] 1110 	movx	a,@dptr
      000247 FF               [12] 1111 	mov	r7,a
      000248 90 00 52         [24] 1112 	mov	dptr,#_max_val
      00024B EE               [12] 1113 	mov	a,r6
      00024C F0               [24] 1114 	movx	@dptr,a
      00024D EF               [12] 1115 	mov	a,r7
      00024E A3               [24] 1116 	inc	dptr
      00024F F0               [24] 1117 	movx	@dptr,a
      000250                       1118 00105$:
                                   1119 ;	src/main.c:239: for ( cnt_sample = 0; cnt_sample < NUM_SAMPLES; cnt_sample++)
      000250 90 00 38         [24] 1120 	mov	dptr,#_cnt_sample
      000253 E0               [24] 1121 	movx	a,@dptr
      000254 24 01            [12] 1122 	add	a, #0x01
      000256 F0               [24] 1123 	movx	@dptr,a
      000257 E0               [24] 1124 	movx	a,@dptr
      000258 FF               [12] 1125 	mov	r7,a
      000259 BF 19 00         [24] 1126 	cjne	r7,#0x19,00127$
      00025C                       1127 00127$:
      00025C 40 B3            [24] 1128 	jc	00104$
                                   1129 ;	src/main.c:249: return max_val;
      00025E 90 00 52         [24] 1130 	mov	dptr,#_max_val
      000261 E0               [24] 1131 	movx	a,@dptr
      000262 C0 E0            [24] 1132 	push	acc
      000264 A3               [24] 1133 	inc	dptr
      000265 E0               [24] 1134 	movx	a,@dptr
      000266 C0 E0            [24] 1135 	push	acc
      000268 D0 83            [24] 1136 	pop	dph
      00026A D0 82            [24] 1137 	pop	dpl
                                   1138 ;	src/main.c:250: }
      00026C 02 0B AC         [24] 1139 	ljmp	___uint2fs
                                   1140 ;------------------------------------------------------------
                                   1141 ;Allocation info for local variables in function 'ADC_ISR'
                                   1142 ;------------------------------------------------------------
                                   1143 ;	src/main.c:255: void ADC_ISR(void) __interrupt(11)
                                   1144 ;	-----------------------------------------
                                   1145 ;	 function ADC_ISR
                                   1146 ;	-----------------------------------------
      00026F                       1147 _ADC_ISR:
      00026F C0 E0            [24] 1148 	push	acc
      000271 C0 82            [24] 1149 	push	dpl
      000273 C0 83            [24] 1150 	push	dph
      000275 C0 07            [24] 1151 	push	ar7
      000277 C0 06            [24] 1152 	push	ar6
      000279 C0 05            [24] 1153 	push	ar5
      00027B C0 04            [24] 1154 	push	ar4
      00027D C0 D0            [24] 1155 	push	psw
      00027F 75 D0 00         [24] 1156 	mov	psw,#0x00
                                   1157 ;	src/main.c:257: clr_ADCCON0_ADCF;
                                   1158 ;	assignBit
      000282 A2 AF            [12] 1159 	mov	c,_EA
      000284 92 00            [24] 1160 	mov	_BIT_TMP,c
                                   1161 ;	assignBit
      000286 C2 AF            [12] 1162 	clr	_EA
      000288 75 C7 AA         [24] 1163 	mov	_TA,#0xaa
      00028B 75 C7 55         [24] 1164 	mov	_TA,#0x55
      00028E 75 91 00         [24] 1165 	mov	_SFRS,#0x00
                                   1166 ;	assignBit
      000291 A2 00            [12] 1167 	mov	c,_BIT_TMP
      000293 92 AF            [24] 1168 	mov	_EA,c
                                   1169 ;	assignBit
      000295 C2 EF            [12] 1170 	clr	_ADCF
                                   1171 ;	src/main.c:259: if ( !data_ready)//hadc->Instance == ADC1 &&
      000297 90 00 51         [24] 1172 	mov	dptr,#_data_ready
      00029A E0               [24] 1173 	movx	a,@dptr
      00029B 70 6A            [24] 1174 	jnz	00107$
                                   1175 ;	src/main.c:261: if (adc_index < NUM_SAMPLES)
      00029D 90 00 4F         [24] 1176 	mov	dptr,#_adc_index
      0002A0 E0               [24] 1177 	movx	a,@dptr
      0002A1 FE               [12] 1178 	mov	r6,a
      0002A2 A3               [24] 1179 	inc	dptr
      0002A3 E0               [24] 1180 	movx	a,@dptr
      0002A4 FF               [12] 1181 	mov	r7,a
      0002A5 C3               [12] 1182 	clr	c
      0002A6 EE               [12] 1183 	mov	a,r6
      0002A7 94 19            [12] 1184 	subb	a,#0x19
      0002A9 EF               [12] 1185 	mov	a,r7
      0002AA 94 00            [12] 1186 	subb	a,#0x00
      0002AC 50 42            [24] 1187 	jnc	00102$
                                   1188 ;	src/main.c:263: adc_buffer[adc_index++] = (ADCRH << 4) | (ADCRL & 0x0F); //
      0002AE 90 00 4F         [24] 1189 	mov	dptr,#_adc_index
      0002B1 E0               [24] 1190 	movx	a,@dptr
      0002B2 FE               [12] 1191 	mov	r6,a
      0002B3 A3               [24] 1192 	inc	dptr
      0002B4 E0               [24] 1193 	movx	a,@dptr
      0002B5 FF               [12] 1194 	mov	r7,a
      0002B6 90 00 4F         [24] 1195 	mov	dptr,#_adc_index
      0002B9 74 01            [12] 1196 	mov	a,#0x01
      0002BB 2E               [12] 1197 	add	a, r6
      0002BC F0               [24] 1198 	movx	@dptr,a
      0002BD E4               [12] 1199 	clr	a
      0002BE 3F               [12] 1200 	addc	a, r7
      0002BF A3               [24] 1201 	inc	dptr
      0002C0 F0               [24] 1202 	movx	@dptr,a
      0002C1 EE               [12] 1203 	mov	a,r6
      0002C2 2E               [12] 1204 	add	a,r6
      0002C3 FE               [12] 1205 	mov	r6,a
      0002C4 EF               [12] 1206 	mov	a,r7
      0002C5 33               [12] 1207 	rlc	a
      0002C6 FF               [12] 1208 	mov	r7,a
      0002C7 EE               [12] 1209 	mov	a,r6
      0002C8 24 00            [12] 1210 	add	a, #_adc_buffer
      0002CA F5 82            [12] 1211 	mov	dpl,a
      0002CC EF               [12] 1212 	mov	a,r7
      0002CD 34 00            [12] 1213 	addc	a, #(_adc_buffer >> 8)
      0002CF F5 83            [12] 1214 	mov	dph,a
      0002D1 AE C3            [24] 1215 	mov	r6,_ADCRH
      0002D3 E4               [12] 1216 	clr	a
      0002D4 CE               [12] 1217 	xch	a,r6
      0002D5 C4               [12] 1218 	swap	a
      0002D6 CE               [12] 1219 	xch	a,r6
      0002D7 6E               [12] 1220 	xrl	a,r6
      0002D8 CE               [12] 1221 	xch	a,r6
      0002D9 54 F0            [12] 1222 	anl	a,#0xf0
      0002DB CE               [12] 1223 	xch	a,r6
      0002DC 6E               [12] 1224 	xrl	a,r6
      0002DD FF               [12] 1225 	mov	r7,a
      0002DE AC C2            [24] 1226 	mov	r4,_ADCRL
      0002E0 53 04 0F         [24] 1227 	anl	ar4,#0x0f
      0002E3 7D 00            [12] 1228 	mov	r5,#0x00
      0002E5 EC               [12] 1229 	mov	a,r4
      0002E6 42 06            [12] 1230 	orl	ar6,a
      0002E8 ED               [12] 1231 	mov	a,r5
      0002E9 42 07            [12] 1232 	orl	ar7,a
      0002EB EE               [12] 1233 	mov	a,r6
      0002EC F0               [24] 1234 	movx	@dptr,a
      0002ED EF               [12] 1235 	mov	a,r7
      0002EE A3               [24] 1236 	inc	dptr
      0002EF F0               [24] 1237 	movx	@dptr,a
      0002F0                       1238 00102$:
                                   1239 ;	src/main.c:267: if (adc_index >= NUM_SAMPLES)
      0002F0 90 00 4F         [24] 1240 	mov	dptr,#_adc_index
      0002F3 E0               [24] 1241 	movx	a,@dptr
      0002F4 FE               [12] 1242 	mov	r6,a
      0002F5 A3               [24] 1243 	inc	dptr
      0002F6 E0               [24] 1244 	movx	a,@dptr
      0002F7 FF               [12] 1245 	mov	r7,a
      0002F8 C3               [12] 1246 	clr	c
      0002F9 EE               [12] 1247 	mov	a,r6
      0002FA 94 19            [12] 1248 	subb	a,#0x19
      0002FC EF               [12] 1249 	mov	a,r7
      0002FD 94 00            [12] 1250 	subb	a,#0x00
      0002FF 40 06            [24] 1251 	jc	00107$
                                   1252 ;	src/main.c:269: data_ready = 1;
      000301 90 00 51         [24] 1253 	mov	dptr,#_data_ready
      000304 74 01            [12] 1254 	mov	a,#0x01
      000306 F0               [24] 1255 	movx	@dptr,a
      000307                       1256 00107$:
                                   1257 ;	src/main.c:273: }
      000307 D0 D0            [24] 1258 	pop	psw
      000309 D0 04            [24] 1259 	pop	ar4
      00030B D0 05            [24] 1260 	pop	ar5
      00030D D0 06            [24] 1261 	pop	ar6
      00030F D0 07            [24] 1262 	pop	ar7
      000311 D0 83            [24] 1263 	pop	dph
      000313 D0 82            [24] 1264 	pop	dpl
      000315 D0 E0            [24] 1265 	pop	acc
      000317 32               [24] 1266 	reti
                                   1267 ;	eliminated unneeded push/pop b
                                   1268 ;------------------------------------------------------------
                                   1269 ;Allocation info for local variables in function 'TM1638_Write'
                                   1270 ;------------------------------------------------------------
                                   1271 ;_data         Allocated to registers r7 
                                   1272 ;i             Allocated to registers r6 
                                   1273 ;------------------------------------------------------------
                                   1274 ;	src/main.c:278: void TM1638_Write(uint8_t _data)
                                   1275 ;	-----------------------------------------
                                   1276 ;	 function TM1638_Write
                                   1277 ;	-----------------------------------------
      000318                       1278 _TM1638_Write:
      000318 AF 82            [24] 1279 	mov	r7, dpl
                                   1280 ;	src/main.c:281: P17_PUSHPULL_MODE;  // Set as output
      00031A 53 B3 7F         [24] 1281 	anl	_P1M1,#0x7f
      00031D 43 B4 80         [24] 1282 	orl	_P1M2,#0x80
                                   1283 ;	src/main.c:282: for(i=0;i<8;i++)
      000320 7E 00            [12] 1284 	mov	r6,#0x00
      000322                       1285 00105$:
                                   1286 ;	src/main.c:284: CLK_OFF;
                                   1287 ;	assignBit
      000322 C2 96            [12] 1288 	clr	_P16
                                   1289 ;	src/main.c:285: if(_data&0x01)
      000324 EF               [12] 1290 	mov	a,r7
      000325 30 E0 04         [24] 1291 	jnb	acc.0,00102$
                                   1292 ;	src/main.c:286: DIO_ON;
                                   1293 ;	assignBit
      000328 D2 97            [12] 1294 	setb	_P17
      00032A 80 02            [24] 1295 	sjmp	00103$
      00032C                       1296 00102$:
                                   1297 ;	src/main.c:288: DIO_OFF;
                                   1298 ;	assignBit
      00032C C2 97            [12] 1299 	clr	_P17
      00032E                       1300 00103$:
                                   1301 ;	src/main.c:290: __asm nop __endasm; // SDCC inline assembly for NOP
      00032E 00               [12] 1302 	nop	
                                   1303 ;	src/main.c:291: _data>>=1;
      00032F EF               [12] 1304 	mov	a,r7
      000330 C3               [12] 1305 	clr	c
      000331 13               [12] 1306 	rrc	a
      000332 FF               [12] 1307 	mov	r7,a
                                   1308 ;	src/main.c:292: CLK_ON;
                                   1309 ;	assignBit
      000333 D2 96            [12] 1310 	setb	_P16
                                   1311 ;	src/main.c:282: for(i=0;i<8;i++)
      000335 0E               [12] 1312 	inc	r6
      000336 BE 08 00         [24] 1313 	cjne	r6,#0x08,00129$
      000339                       1314 00129$:
      000339 40 E7            [24] 1315 	jc	00105$
                                   1316 ;	src/main.c:294: P17_QUASI_MODE;  // Restore bidirectional
      00033B 53 B3 7F         [24] 1317 	anl	_P1M1,#0x7f
      00033E 53 B4 7F         [24] 1318 	anl	_P1M2,#0x7f
                                   1319 ;	src/main.c:295: }
      000341 22               [24] 1320 	ret
                                   1321 ;------------------------------------------------------------
                                   1322 ;Allocation info for local variables in function 'writeCMD'
                                   1323 ;------------------------------------------------------------
                                   1324 ;cmd           Allocated to registers 
                                   1325 ;------------------------------------------------------------
                                   1326 ;	src/main.c:297: void writeCMD(uint8_t cmd)
                                   1327 ;	-----------------------------------------
                                   1328 ;	 function writeCMD
                                   1329 ;	-----------------------------------------
      000342                       1330 _writeCMD:
                                   1331 ;	src/main.c:299: STB_OFF;
                                   1332 ;	assignBit
      000342 C2 95            [12] 1333 	clr	_P15
                                   1334 ;	src/main.c:300: TM1638_Write(cmd);
      000344 12 03 18         [24] 1335 	lcall	_TM1638_Write
                                   1336 ;	src/main.c:301: STB_ON;
                                   1337 ;	assignBit
      000347 D2 95            [12] 1338 	setb	_P15
                                   1339 ;	src/main.c:302: }
      000349 22               [24] 1340 	ret
                                   1341 ;------------------------------------------------------------
                                   1342 ;Allocation info for local variables in function 'writeData'
                                   1343 ;------------------------------------------------------------
                                   1344 ;_data         Allocated with name '_writeData_PARM_2'
                                   1345 ;add           Allocated to registers r7 
                                   1346 ;------------------------------------------------------------
                                   1347 ;	src/main.c:304: void writeData(uint8_t add,uint8_t _data)
                                   1348 ;	-----------------------------------------
                                   1349 ;	 function writeData
                                   1350 ;	-----------------------------------------
      00034A                       1351 _writeData:
      00034A AF 82            [24] 1352 	mov	r7, dpl
                                   1353 ;	src/main.c:306: writeCMD(0x44);//????,????
      00034C 75 82 44         [24] 1354 	mov	dpl, #0x44
      00034F C0 07            [24] 1355 	push	ar7
      000351 12 03 42         [24] 1356 	lcall	_writeCMD
      000354 D0 07            [24] 1357 	pop	ar7
                                   1358 ;	src/main.c:307: STB_OFF;
                                   1359 ;	assignBit
      000356 C2 95            [12] 1360 	clr	_P15
                                   1361 ;	src/main.c:308: TM1638_Write(0xc0|add);
      000358 74 C0            [12] 1362 	mov	a,#0xc0
      00035A 4F               [12] 1363 	orl	a,r7
      00035B F5 82            [12] 1364 	mov	dpl,a
      00035D 12 03 18         [24] 1365 	lcall	_TM1638_Write
                                   1366 ;	src/main.c:309: TM1638_Write(_data);
      000360 85 35 82         [24] 1367 	mov	dpl, _writeData_PARM_2
      000363 12 03 18         [24] 1368 	lcall	_TM1638_Write
                                   1369 ;	src/main.c:310: STB_ON;
                                   1370 ;	assignBit
      000366 D2 95            [12] 1371 	setb	_P15
                                   1372 ;	src/main.c:311: }
      000368 22               [24] 1373 	ret
                                   1374 ;------------------------------------------------------------
                                   1375 ;Allocation info for local variables in function 'display'
                                   1376 ;------------------------------------------------------------
                                   1377 ;pointFlash    Allocated with name '_display_PARM_2'
                                   1378 ;number        Allocated to registers r5 r6 r7 
                                   1379 ;j             Allocated to registers r4 
                                   1380 ;segments      Allocated to registers r3 
                                   1381 ;------------------------------------------------------------
                                   1382 ;	src/main.c:315: void display(uint8_t *number,uint8_t pointFlash)//number???????,???1?10?
                                   1383 ;	-----------------------------------------
                                   1384 ;	 function display
                                   1385 ;	-----------------------------------------
      000369                       1386 _display:
      000369 AD 82            [24] 1387 	mov	r5, dpl
      00036B AE 83            [24] 1388 	mov	r6, dph
      00036D AF F0            [24] 1389 	mov	r7, b
                                   1390 ;	src/main.c:349: for(j = 0; j < 8; j++)
      00036F 7C 00            [12] 1391 	mov	r4,#0x00
      000371                       1392 00105$:
                                   1393 ;	src/main.c:352: uint8_t segments = led_val[number[j]];
      000371 EC               [12] 1394 	mov	a,r4
      000372 2D               [12] 1395 	add	a, r5
      000373 F9               [12] 1396 	mov	r1,a
      000374 E4               [12] 1397 	clr	a
      000375 3E               [12] 1398 	addc	a, r6
      000376 FA               [12] 1399 	mov	r2,a
      000377 8F 03            [24] 1400 	mov	ar3,r7
      000379 89 82            [24] 1401 	mov	dpl,r1
      00037B 8A 83            [24] 1402 	mov	dph,r2
      00037D 8B F0            [24] 1403 	mov	b,r3
      00037F 12 0C 2C         [24] 1404 	lcall	__gptrget
      000382 90 0C F8         [24] 1405 	mov	dptr,#_led_val
      000385 93               [24] 1406 	movc	a,@a+dptr
      000386 FB               [12] 1407 	mov	r3,a
                                   1408 ;	src/main.c:355: if(pointFlash && j == 6)
      000387 E5 36            [12] 1409 	mov	a,_display_PARM_2
      000389 60 06            [24] 1410 	jz	00102$
      00038B BC 06 03         [24] 1411 	cjne	r4,#0x06,00102$
                                   1412 ;	src/main.c:357: segments |= 0x80;  // Set DP _bit
      00038E 43 03 80         [24] 1413 	orl	ar3,#0x80
      000391                       1414 00102$:
                                   1415 ;	src/main.c:360: writeData(2*j,segments);
      000391 EC               [12] 1416 	mov	a,r4
      000392 2C               [12] 1417 	add	a,r4
      000393 F5 82            [12] 1418 	mov	dpl,a
      000395 8B 35            [24] 1419 	mov	_writeData_PARM_2,r3
      000397 C0 07            [24] 1420 	push	ar7
      000399 C0 06            [24] 1421 	push	ar6
      00039B C0 05            [24] 1422 	push	ar5
      00039D C0 04            [24] 1423 	push	ar4
      00039F 12 03 4A         [24] 1424 	lcall	_writeData
      0003A2 D0 04            [24] 1425 	pop	ar4
      0003A4 D0 05            [24] 1426 	pop	ar5
      0003A6 D0 06            [24] 1427 	pop	ar6
      0003A8 D0 07            [24] 1428 	pop	ar7
                                   1429 ;	src/main.c:349: for(j = 0; j < 8; j++)
      0003AA 0C               [12] 1430 	inc	r4
      0003AB BC 08 00         [24] 1431 	cjne	r4,#0x08,00131$
      0003AE                       1432 00131$:
      0003AE 40 C1            [24] 1433 	jc	00105$
                                   1434 ;	src/main.c:364: }
      0003B0 22               [24] 1435 	ret
                                   1436 ;------------------------------------------------------------
                                   1437 ;Allocation info for local variables in function 'tm1638_read_byte'
                                   1438 ;------------------------------------------------------------
                                   1439 ;i             Allocated to registers r5 
                                   1440 ;temp          Allocated to registers r6 r7 
                                   1441 ;------------------------------------------------------------
                                   1442 ;	src/main.c:367: uint16_t tm1638_read_byte(void) {
                                   1443 ;	-----------------------------------------
                                   1444 ;	 function tm1638_read_byte
                                   1445 ;	-----------------------------------------
      0003B1                       1446 _tm1638_read_byte:
                                   1447 ;	src/main.c:370: uint16_t temp=0;
      0003B1 7E 00            [12] 1448 	mov	r6,#0x00
      0003B3 7F 00            [12] 1449 	mov	r7,#0x00
                                   1450 ;	src/main.c:372: P17_INPUT_MODE;  // Set as input
      0003B5 43 B3 80         [24] 1451 	orl	_P1M1,#0x80
      0003B8 53 B4 7F         [24] 1452 	anl	_P1M2,#0x7f
                                   1453 ;	src/main.c:373: for( i=0; i<8; i++ ) {
      0003BB 7D 00            [12] 1454 	mov	r5,#0x00
      0003BD                       1455 00105$:
                                   1456 ;	src/main.c:374: temp>>=1;
      0003BD EF               [12] 1457 	mov	a,r7
      0003BE C3               [12] 1458 	clr	c
      0003BF 13               [12] 1459 	rrc	a
      0003C0 CE               [12] 1460 	xch	a,r6
      0003C1 13               [12] 1461 	rrc	a
      0003C2 CE               [12] 1462 	xch	a,r6
      0003C3 FF               [12] 1463 	mov	r7,a
                                   1464 ;	src/main.c:375: CLK_OFF;
                                   1465 ;	assignBit
      0003C4 C2 96            [12] 1466 	clr	_P16
                                   1467 ;	src/main.c:376: delay_ms(2);
      0003C6 90 00 02         [24] 1468 	mov	dptr,#0x0002
      0003C9 C0 07            [24] 1469 	push	ar7
      0003CB C0 06            [24] 1470 	push	ar6
      0003CD C0 05            [24] 1471 	push	ar5
      0003CF 12 04 74         [24] 1472 	lcall	_delay_ms
      0003D2 D0 05            [24] 1473 	pop	ar5
      0003D4 D0 06            [24] 1474 	pop	ar6
      0003D6 D0 07            [24] 1475 	pop	ar7
                                   1476 ;	src/main.c:378: if( DIO )
      0003D8 30 97 0D         [24] 1477 	jnb	_DIO,00102$
                                   1478 ;	src/main.c:380: temp|=0x80;
      0003DB 8E 04            [24] 1479 	mov	ar4,r6
      0003DD 43 04 80         [24] 1480 	orl	ar4,#0x80
      0003E0 8C 06            [24] 1481 	mov	ar6,r4
      0003E2 7F 00            [12] 1482 	mov	r7,#0x00
                                   1483 ;	src/main.c:381: LED_1_ON;
                                   1484 ;	assignBit
      0003E4 C2 82            [12] 1485 	clr	_P02
      0003E6 80 02            [24] 1486 	sjmp	00103$
      0003E8                       1487 00102$:
                                   1488 ;	src/main.c:384: LED_1_OFF;
                                   1489 ;	assignBit
      0003E8 D2 82            [12] 1490 	setb	_P02
      0003EA                       1491 00103$:
                                   1492 ;	src/main.c:386: CLK_ON;
                                   1493 ;	assignBit
      0003EA D2 96            [12] 1494 	setb	_P16
                                   1495 ;	src/main.c:373: for( i=0; i<8; i++ ) {
      0003EC 0D               [12] 1496 	inc	r5
      0003ED BD 08 00         [24] 1497 	cjne	r5,#0x08,00129$
      0003F0                       1498 00129$:
      0003F0 40 CB            [24] 1499 	jc	00105$
                                   1500 ;	src/main.c:388: P17_QUASI_MODE;  // Restore quasi-mode
      0003F2 53 B3 7F         [24] 1501 	anl	_P1M1,#0x7f
      0003F5 53 B4 7F         [24] 1502 	anl	_P1M2,#0x7f
                                   1503 ;	src/main.c:390: return temp;
      0003F8 8E 82            [24] 1504 	mov	dpl, r6
      0003FA 8F 83            [24] 1505 	mov	dph, r7
                                   1506 ;	src/main.c:391: }
      0003FC 22               [24] 1507 	ret
                                   1508 ;------------------------------------------------------------
                                   1509 ;Allocation info for local variables in function 'tm1638_read_key'
                                   1510 ;------------------------------------------------------------
                                   1511 ;tmp           Allocated to registers r4 r5 
                                   1512 ;key_value     Allocated to registers r6 r7 
                                   1513 ;------------------------------------------------------------
                                   1514 ;	src/main.c:395: uint16_t tm1638_read_key(void)
                                   1515 ;	-----------------------------------------
                                   1516 ;	 function tm1638_read_key
                                   1517 ;	-----------------------------------------
      0003FD                       1518 _tm1638_read_key:
                                   1519 ;	src/main.c:398: uint16_t tmp =0,key_value =0;
      0003FD 7E 00            [12] 1520 	mov	r6,#0x00
      0003FF 7F 00            [12] 1521 	mov	r7,#0x00
                                   1522 ;	src/main.c:399: STB_OFF;
                                   1523 ;	assignBit
      000401 C2 95            [12] 1524 	clr	_P15
                                   1525 ;	src/main.c:400: delay_ms(5);
      000403 90 00 05         [24] 1526 	mov	dptr,#0x0005
      000406 C0 07            [24] 1527 	push	ar7
      000408 C0 06            [24] 1528 	push	ar6
      00040A 12 04 74         [24] 1529 	lcall	_delay_ms
                                   1530 ;	src/main.c:401: TM1638_Write(0x42); 
      00040D 75 82 42         [24] 1531 	mov	dpl, #0x42
      000410 12 03 18         [24] 1532 	lcall	_TM1638_Write
      000413 D0 06            [24] 1533 	pop	ar6
      000415 D0 07            [24] 1534 	pop	ar7
                                   1535 ;	src/main.c:403: for(i=0;i<4;i++){
      000417 75 40 00         [24] 1536 	mov	_i,#0x00
      00041A                       1537 00102$:
                                   1538 ;	src/main.c:404: tmp=tm1638_read_byte();
      00041A C0 07            [24] 1539 	push	ar7
      00041C C0 06            [24] 1540 	push	ar6
      00041E 12 03 B1         [24] 1541 	lcall	_tm1638_read_byte
      000421 AC 82            [24] 1542 	mov	r4, dpl
      000423 AD 83            [24] 1543 	mov	r5, dph
      000425 D0 06            [24] 1544 	pop	ar6
      000427 D0 07            [24] 1545 	pop	ar7
                                   1546 ;	src/main.c:405: key_value |= (tmp << i);
      000429 85 40 F0         [24] 1547 	mov	b,_i
      00042C 05 F0            [12] 1548 	inc	b
      00042E 80 06            [24] 1549 	sjmp	00119$
      000430                       1550 00118$:
      000430 EC               [12] 1551 	mov	a,r4
      000431 2C               [12] 1552 	add	a,r4
      000432 FC               [12] 1553 	mov	r4,a
      000433 ED               [12] 1554 	mov	a,r5
      000434 33               [12] 1555 	rlc	a
      000435 FD               [12] 1556 	mov	r5,a
      000436                       1557 00119$:
      000436 D5 F0 F7         [24] 1558 	djnz	b,00118$
      000439 EC               [12] 1559 	mov	a,r4
      00043A 42 06            [12] 1560 	orl	ar6,a
      00043C ED               [12] 1561 	mov	a,r5
      00043D 42 07            [12] 1562 	orl	ar7,a
                                   1563 ;	src/main.c:403: for(i=0;i<4;i++){
      00043F 05 40            [12] 1564 	inc	_i
      000441 74 FC            [12] 1565 	mov	a,#0x100 - 0x04
      000443 25 40            [12] 1566 	add	a,_i
      000445 50 D3            [24] 1567 	jnc	00102$
                                   1568 ;	src/main.c:407: STB_ON; 
                                   1569 ;	assignBit
      000447 D2 95            [12] 1570 	setb	_P15
                                   1571 ;	src/main.c:408: return  key_value;
      000449 8E 82            [24] 1572 	mov	dpl, r6
      00044B 8F 83            [24] 1573 	mov	dph, r7
                                   1574 ;	src/main.c:409: }	
      00044D 22               [24] 1575 	ret
                                   1576 ;------------------------------------------------------------
                                   1577 ;Allocation info for local variables in function 'IAP_Enable'
                                   1578 ;------------------------------------------------------------
                                   1579 ;	src/main.c:415: void IAP_Enable(void)  { 
                                   1580 ;	-----------------------------------------
                                   1581 ;	 function IAP_Enable
                                   1582 ;	-----------------------------------------
      00044E                       1583 _IAP_Enable:
                                   1584 ;	src/main.c:416: TA = 0Xaa; //CHPCON is TA protected
      00044E 75 C7 AA         [24] 1585 	mov	_TA,#0xaa
                                   1586 ;	src/main.c:417: TA = 0x55;
      000451 75 C7 55         [24] 1587 	mov	_TA,#0x55
                                   1588 ;	src/main.c:418: CHPCON |= 0x01; //IAPEN = 1, enable IAP mode
      000454 43 9F 01         [24] 1589 	orl	_CHPCON,#0x01
                                   1590 ;	src/main.c:419: TA = 0xAA; 
      000457 75 C7 AA         [24] 1591 	mov	_TA,#0xaa
                                   1592 ;	src/main.c:420: TA = 0x55; 
      00045A 75 C7 55         [24] 1593 	mov	_TA,#0x55
                                   1594 ;	src/main.c:421: IAPUEN |= 0x01;
      00045D 43 A5 01         [24] 1595 	orl	_IAPUEN,#0x01
                                   1596 ;	src/main.c:422: }
      000460 22               [24] 1597 	ret
                                   1598 ;------------------------------------------------------------
                                   1599 ;Allocation info for local variables in function 'IAP_Disable'
                                   1600 ;------------------------------------------------------------
                                   1601 ;	src/main.c:423: void IAP_Disable(void) 
                                   1602 ;	-----------------------------------------
                                   1603 ;	 function IAP_Disable
                                   1604 ;	-----------------------------------------
      000461                       1605 _IAP_Disable:
                                   1606 ;	src/main.c:425: TA = 0xAA; 
      000461 75 C7 AA         [24] 1607 	mov	_TA,#0xaa
                                   1608 ;	src/main.c:426: TA = 0x55;
      000464 75 C7 55         [24] 1609 	mov	_TA,#0x55
                                   1610 ;	src/main.c:427: IAPUEN &= ~0x01;
      000467 53 A5 FE         [24] 1611 	anl	_IAPUEN,#0xfe
                                   1612 ;	src/main.c:428: TA = 0Xaa; //CHPCON is TA protected
      00046A 75 C7 AA         [24] 1613 	mov	_TA,#0xaa
                                   1614 ;	src/main.c:429: TA = 0x55;
      00046D 75 C7 55         [24] 1615 	mov	_TA,#0x55
                                   1616 ;	src/main.c:430: CHPCON &= ~0x01; //IAPEN = 0, disable IAP mode
      000470 53 9F FE         [24] 1617 	anl	_CHPCON,#0xfe
                                   1618 ;	src/main.c:431: }
      000473 22               [24] 1619 	ret
                                   1620 ;------------------------------------------------------------
                                   1621 ;Allocation info for local variables in function 'delay_ms'
                                   1622 ;------------------------------------------------------------
                                   1623 ;ms            Allocated to registers r6 r7 
                                   1624 ;i             Allocated to registers r4 r5 
                                   1625 ;j             Allocated to registers r2 r3 
                                   1626 ;------------------------------------------------------------
                                   1627 ;	src/main.c:435: void delay_ms(unsigned int ms) {
                                   1628 ;	-----------------------------------------
                                   1629 ;	 function delay_ms
                                   1630 ;	-----------------------------------------
      000474                       1631 _delay_ms:
      000474 AE 82            [24] 1632 	mov	r6, dpl
      000476 AF 83            [24] 1633 	mov	r7, dph
                                   1634 ;	src/main.c:437: for(i = 0; i < ms; i++)
      000478 7C 00            [12] 1635 	mov	r4,#0x00
      00047A 7D 00            [12] 1636 	mov	r5,#0x00
      00047C                       1637 00107$:
      00047C C3               [12] 1638 	clr	c
      00047D EC               [12] 1639 	mov	a,r4
      00047E 9E               [12] 1640 	subb	a,r6
      00047F ED               [12] 1641 	mov	a,r5
      000480 9F               [12] 1642 	subb	a,r7
      000481 50 14            [24] 1643 	jnc	00109$
                                   1644 ;	src/main.c:438: for(j = 0; j < 1000; j++);
      000483 7A E8            [12] 1645 	mov	r2,#0xe8
      000485 7B 03            [12] 1646 	mov	r3,#0x03
      000487                       1647 00105$:
      000487 1A               [12] 1648 	dec	r2
      000488 BA FF 01         [24] 1649 	cjne	r2,#0xff,00138$
      00048B 1B               [12] 1650 	dec	r3
      00048C                       1651 00138$:
      00048C EA               [12] 1652 	mov	a,r2
      00048D 4B               [12] 1653 	orl	a,r3
      00048E 70 F7            [24] 1654 	jnz	00105$
                                   1655 ;	src/main.c:437: for(i = 0; i < ms; i++)
      000490 0C               [12] 1656 	inc	r4
      000491 BC 00 E8         [24] 1657 	cjne	r4,#0x00,00107$
      000494 0D               [12] 1658 	inc	r5
      000495 80 E5            [24] 1659 	sjmp	00107$
      000497                       1660 00109$:
                                   1661 ;	src/main.c:439: }
      000497 22               [24] 1662 	ret
                                   1663 ;------------------------------------------------------------
                                   1664 ;Allocation info for local variables in function 'Flash_Erase'
                                   1665 ;------------------------------------------------------------
                                   1666 ;addr          Allocated to registers r6 r7 
                                   1667 ;------------------------------------------------------------
                                   1668 ;	src/main.c:443: void Flash_Erase(unsigned int addr) {
                                   1669 ;	-----------------------------------------
                                   1670 ;	 function Flash_Erase
                                   1671 ;	-----------------------------------------
      000498                       1672 _Flash_Erase:
      000498 AE 82            [24] 1673 	mov	r6, dpl
      00049A AF 83            [24] 1674 	mov	r7, dph
                                   1675 ;	src/main.c:444: IAPAL = addr & 0xFF;
      00049C 8E A6            [24] 1676 	mov	_IAPAL,r6
                                   1677 ;	src/main.c:445: IAPAH = (addr >> 8) & 0xFF;
      00049E 8F A7            [24] 1678 	mov	_IAPAH,r7
                                   1679 ;	src/main.c:446: IAPFD = 0xFF;
      0004A0 75 AE FF         [24] 1680 	mov	_IAPFD,#0xff
                                   1681 ;	src/main.c:447: IAPCN = 0x22; // Page Erase
      0004A3 75 AF 22         [24] 1682 	mov	_IAPCN,#0x22
                                   1683 ;	src/main.c:448: TA = 0xAA; TA = 0x55; IAPTRG = 1;
      0004A6 75 C7 AA         [24] 1684 	mov	_TA,#0xaa
      0004A9 75 C7 55         [24] 1685 	mov	_TA,#0x55
      0004AC 75 A4 01         [24] 1686 	mov	_IAPTRG,#0x01
                                   1687 ;	src/main.c:449: while (IAPTRG);
      0004AF                       1688 00101$:
      0004AF E5 A4            [12] 1689 	mov	a,_IAPTRG
      0004B1 70 FC            [24] 1690 	jnz	00101$
                                   1691 ;	src/main.c:450: }
      0004B3 22               [24] 1692 	ret
                                   1693 ;------------------------------------------------------------
                                   1694 ;Allocation info for local variables in function 'Flash_Write_Byte'
                                   1695 ;------------------------------------------------------------
                                   1696 ;value         Allocated with name '_Flash_Write_Byte_PARM_2'
                                   1697 ;addr          Allocated to registers r6 r7 
                                   1698 ;------------------------------------------------------------
                                   1699 ;	src/main.c:453: void Flash_Write_Byte(unsigned int addr, unsigned char value) {
                                   1700 ;	-----------------------------------------
                                   1701 ;	 function Flash_Write_Byte
                                   1702 ;	-----------------------------------------
      0004B4                       1703 _Flash_Write_Byte:
      0004B4 AE 82            [24] 1704 	mov	r6, dpl
      0004B6 AF 83            [24] 1705 	mov	r7, dph
                                   1706 ;	src/main.c:454: IAPAL = addr & 0xFF;
      0004B8 8E A6            [24] 1707 	mov	_IAPAL,r6
                                   1708 ;	src/main.c:455: IAPAH = (addr >> 8) & 0xFF;
      0004BA 8F A7            [24] 1709 	mov	_IAPAH,r7
                                   1710 ;	src/main.c:456: IAPFD = value;
      0004BC 85 4A AE         [24] 1711 	mov	_IAPFD,_Flash_Write_Byte_PARM_2
                                   1712 ;	src/main.c:457: IAPCN = 0x21; // Byte Program
      0004BF 75 AF 21         [24] 1713 	mov	_IAPCN,#0x21
                                   1714 ;	src/main.c:458: TA = 0xAA; TA = 0x55; IAPTRG = 1;
      0004C2 75 C7 AA         [24] 1715 	mov	_TA,#0xaa
      0004C5 75 C7 55         [24] 1716 	mov	_TA,#0x55
      0004C8 75 A4 01         [24] 1717 	mov	_IAPTRG,#0x01
                                   1718 ;	src/main.c:459: while (IAPTRG);
      0004CB                       1719 00101$:
      0004CB E5 A4            [12] 1720 	mov	a,_IAPTRG
      0004CD 70 FC            [24] 1721 	jnz	00101$
                                   1722 ;	src/main.c:460: }
      0004CF 22               [24] 1723 	ret
                                   1724 ;------------------------------------------------------------
                                   1725 ;Allocation info for local variables in function 'Flash_Write'
                                   1726 ;------------------------------------------------------------
                                   1727 ;buf           Allocated with name '_Flash_Write_PARM_2'
                                   1728 ;len           Allocated with name '_Flash_Write_PARM_3'
                                   1729 ;addr          Allocated to registers r6 r7 
                                   1730 ;i             Allocated to registers r5 
                                   1731 ;------------------------------------------------------------
                                   1732 ;	src/main.c:463: void Flash_Write(unsigned int addr, unsigned char *buf, unsigned char len) {
                                   1733 ;	-----------------------------------------
                                   1734 ;	 function Flash_Write
                                   1735 ;	-----------------------------------------
      0004D0                       1736 _Flash_Write:
      0004D0 AE 82            [24] 1737 	mov	r6, dpl
      0004D2 AF 83            [24] 1738 	mov	r7, dph
                                   1739 ;	src/main.c:465: for(i = 0; i < len; i++) {
      0004D4 7D 00            [12] 1740 	mov	r5,#0x00
      0004D6                       1741 00103$:
      0004D6 C3               [12] 1742 	clr	c
      0004D7 ED               [12] 1743 	mov	a,r5
      0004D8 95 3A            [12] 1744 	subb	a,_Flash_Write_PARM_3
      0004DA 50 35            [24] 1745 	jnc	00105$
                                   1746 ;	src/main.c:466: Flash_Write_Byte(addr + i, buf[i]);
      0004DC 8D 04            [24] 1747 	mov	ar4,r5
      0004DE 7B 00            [12] 1748 	mov	r3,#0x00
      0004E0 EC               [12] 1749 	mov	a,r4
      0004E1 2E               [12] 1750 	add	a, r6
      0004E2 FC               [12] 1751 	mov	r4,a
      0004E3 EB               [12] 1752 	mov	a,r3
      0004E4 3F               [12] 1753 	addc	a, r7
      0004E5 FB               [12] 1754 	mov	r3,a
      0004E6 ED               [12] 1755 	mov	a,r5
      0004E7 25 37            [12] 1756 	add	a, _Flash_Write_PARM_2
      0004E9 F8               [12] 1757 	mov	r0,a
      0004EA E4               [12] 1758 	clr	a
      0004EB 35 38            [12] 1759 	addc	a, (_Flash_Write_PARM_2 + 1)
      0004ED F9               [12] 1760 	mov	r1,a
      0004EE AA 39            [24] 1761 	mov	r2,(_Flash_Write_PARM_2 + 2)
      0004F0 88 82            [24] 1762 	mov	dpl,r0
      0004F2 89 83            [24] 1763 	mov	dph,r1
      0004F4 8A F0            [24] 1764 	mov	b,r2
      0004F6 12 0C 2C         [24] 1765 	lcall	__gptrget
      0004F9 F5 4A            [12] 1766 	mov	_Flash_Write_Byte_PARM_2,a
      0004FB 8C 82            [24] 1767 	mov	dpl, r4
      0004FD 8B 83            [24] 1768 	mov	dph, r3
      0004FF C0 07            [24] 1769 	push	ar7
      000501 C0 06            [24] 1770 	push	ar6
      000503 C0 05            [24] 1771 	push	ar5
      000505 12 04 B4         [24] 1772 	lcall	_Flash_Write_Byte
      000508 D0 05            [24] 1773 	pop	ar5
      00050A D0 06            [24] 1774 	pop	ar6
      00050C D0 07            [24] 1775 	pop	ar7
                                   1776 ;	src/main.c:465: for(i = 0; i < len; i++) {
      00050E 0D               [12] 1777 	inc	r5
      00050F 80 C5            [24] 1778 	sjmp	00103$
      000511                       1779 00105$:
                                   1780 ;	src/main.c:468: }
      000511 22               [24] 1781 	ret
                                   1782 ;------------------------------------------------------------
                                   1783 ;Allocation info for local variables in function 'Flash_Read_Byte'
                                   1784 ;------------------------------------------------------------
                                   1785 ;addr          Allocated to registers r6 r7 
                                   1786 ;------------------------------------------------------------
                                   1787 ;	src/main.c:471: unsigned char Flash_Read_Byte(unsigned int addr) {
                                   1788 ;	-----------------------------------------
                                   1789 ;	 function Flash_Read_Byte
                                   1790 ;	-----------------------------------------
      000512                       1791 _Flash_Read_Byte:
      000512 AE 82            [24] 1792 	mov	r6, dpl
      000514 AF 83            [24] 1793 	mov	r7, dph
                                   1794 ;	src/main.c:472: IAPAL = addr & 0xFF;
      000516 8E A6            [24] 1795 	mov	_IAPAL,r6
                                   1796 ;	src/main.c:473: IAPAH = (addr >> 8) & 0xFF;
      000518 8F A7            [24] 1797 	mov	_IAPAH,r7
                                   1798 ;	src/main.c:474: IAPCN = 0x00; // Read
      00051A 75 AF 00         [24] 1799 	mov	_IAPCN,#0x00
                                   1800 ;	src/main.c:475: TA = 0xAA; TA = 0x55; IAPTRG = 1;
      00051D 75 C7 AA         [24] 1801 	mov	_TA,#0xaa
      000520 75 C7 55         [24] 1802 	mov	_TA,#0x55
      000523 75 A4 01         [24] 1803 	mov	_IAPTRG,#0x01
                                   1804 ;	src/main.c:476: while (IAPTRG);
      000526                       1805 00101$:
      000526 E5 A4            [12] 1806 	mov	a,_IAPTRG
      000528 70 FC            [24] 1807 	jnz	00101$
                                   1808 ;	src/main.c:477: return IAPFD;
      00052A 85 AE 82         [24] 1809 	mov	dpl, _IAPFD
                                   1810 ;	src/main.c:478: }
      00052D 22               [24] 1811 	ret
                                   1812 ;------------------------------------------------------------
                                   1813 ;Allocation info for local variables in function 'Flash_Read'
                                   1814 ;------------------------------------------------------------
                                   1815 ;buf           Allocated with name '_Flash_Read_PARM_2'
                                   1816 ;len           Allocated with name '_Flash_Read_PARM_3'
                                   1817 ;addr          Allocated to registers r6 r7 
                                   1818 ;i             Allocated to registers r5 
                                   1819 ;------------------------------------------------------------
                                   1820 ;	src/main.c:481: void Flash_Read(unsigned int addr, unsigned char *buf, unsigned char len) {
                                   1821 ;	-----------------------------------------
                                   1822 ;	 function Flash_Read
                                   1823 ;	-----------------------------------------
      00052E                       1824 _Flash_Read:
      00052E AE 82            [24] 1825 	mov	r6, dpl
      000530 AF 83            [24] 1826 	mov	r7, dph
                                   1827 ;	src/main.c:483: for(i = 0; i < len; i++) {
      000532 7D 00            [12] 1828 	mov	r5,#0x00
      000534                       1829 00103$:
      000534 C3               [12] 1830 	clr	c
      000535 ED               [12] 1831 	mov	a,r5
      000536 95 3E            [12] 1832 	subb	a,_Flash_Read_PARM_3
      000538 50 42            [24] 1833 	jnc	00105$
                                   1834 ;	src/main.c:484: buf[i] = Flash_Read_Byte(addr + i);
      00053A ED               [12] 1835 	mov	a,r5
      00053B 25 3B            [12] 1836 	add	a, _Flash_Read_PARM_2
      00053D FA               [12] 1837 	mov	r2,a
      00053E E4               [12] 1838 	clr	a
      00053F 35 3C            [12] 1839 	addc	a, (_Flash_Read_PARM_2 + 1)
      000541 FB               [12] 1840 	mov	r3,a
      000542 AC 3D            [24] 1841 	mov	r4,(_Flash_Read_PARM_2 + 2)
      000544 8D 01            [24] 1842 	mov	ar1,r5
      000546 89 00            [24] 1843 	mov	ar0,r1
      000548 79 00            [12] 1844 	mov	r1,#0x00
      00054A E8               [12] 1845 	mov	a,r0
      00054B 2E               [12] 1846 	add	a, r6
      00054C F5 82            [12] 1847 	mov	dpl,a
      00054E E9               [12] 1848 	mov	a,r1
      00054F 3F               [12] 1849 	addc	a, r7
      000550 F5 83            [12] 1850 	mov	dph,a
      000552 C0 07            [24] 1851 	push	ar7
      000554 C0 06            [24] 1852 	push	ar6
      000556 C0 05            [24] 1853 	push	ar5
      000558 C0 04            [24] 1854 	push	ar4
      00055A C0 03            [24] 1855 	push	ar3
      00055C C0 02            [24] 1856 	push	ar2
      00055E 12 05 12         [24] 1857 	lcall	_Flash_Read_Byte
      000561 A9 82            [24] 1858 	mov	r1, dpl
      000563 D0 02            [24] 1859 	pop	ar2
      000565 D0 03            [24] 1860 	pop	ar3
      000567 D0 04            [24] 1861 	pop	ar4
      000569 D0 05            [24] 1862 	pop	ar5
      00056B D0 06            [24] 1863 	pop	ar6
      00056D D0 07            [24] 1864 	pop	ar7
      00056F 8A 82            [24] 1865 	mov	dpl,r2
      000571 8B 83            [24] 1866 	mov	dph,r3
      000573 8C F0            [24] 1867 	mov	b,r4
      000575 E9               [12] 1868 	mov	a,r1
      000576 12 0A 72         [24] 1869 	lcall	__gptrput
                                   1870 ;	src/main.c:483: for(i = 0; i < len; i++) {
      000579 0D               [12] 1871 	inc	r5
      00057A 80 B8            [24] 1872 	sjmp	00103$
      00057C                       1873 00105$:
                                   1874 ;	src/main.c:486: }
      00057C 22               [24] 1875 	ret
                                   1876 ;------------------------------------------------------------
                                   1877 ;Allocation info for local variables in function 'main'
                                   1878 ;------------------------------------------------------------
                                   1879 ;	src/main.c:494: void main (void)
                                   1880 ;	-----------------------------------------
                                   1881 ;	 function main
                                   1882 ;	-----------------------------------------
      00057D                       1883 _main:
                                   1884 ;	src/main.c:497: Init_ports();
      00057D 12 01 F2         [24] 1885 	lcall	_Init_ports
                                   1886 ;	src/main.c:499: Init_Timer();
      000580 12 00 00         [24] 1887 	lcall	_Init_Timer
                                   1888 ;	src/main.c:500: Init_application(); 
      000583 12 01 CD         [24] 1889 	lcall	_Init_application
                                   1890 ;	src/main.c:502: ADC_Init();
      000586 12 01 F9         [24] 1891 	lcall	_ADC_Init
                                   1892 ;	src/main.c:504: TMOD &= 0xF0;   // Clear Timer0 bits
      000589 53 89 F0         [24] 1893 	anl	_TMOD,#0xf0
                                   1894 ;	src/main.c:505: TMOD |= 0x01;   // Timer0 Mode1 (16-bit)
      00058C 43 89 01         [24] 1895 	orl	_TMOD,#0x01
                                   1896 ;	src/main.c:507: TH0 = 0xF8;     // Initial reload high byte
      00058F 75 8C F8         [24] 1897 	mov	_TH0,#0xf8
                                   1898 ;	src/main.c:508: TL0 = 0x30;     // Initial reload low byte
      000592 75 8A 30         [24] 1899 	mov	_TL0,#0x30
                                   1900 ;	src/main.c:510: ET0 = 1;        // Enable Timer0 interrupt
                                   1901 ;	assignBit
      000595 D2 A9            [12] 1902 	setb	_ET0
                                   1903 ;	src/main.c:511: EA  = 1;        // Enable global interrupts
                                   1904 ;	assignBit
      000597 D2 AF            [12] 1905 	setb	_EA
                                   1906 ;	src/main.c:512: TR0 = 1;        // Start Timer0
                                   1907 ;	assignBit
      000599 D2 8C            [12] 1908 	setb	_TR0
                                   1909 ;	src/main.c:519: P15_PUSHPULL_MODE;  // STB
      00059B 53 B3 DF         [24] 1910 	anl	_P1M1,#0xdf
      00059E 43 B4 20         [24] 1911 	orl	_P1M2,#0x20
                                   1912 ;	src/main.c:520: P16_PUSHPULL_MODE;  // CLK
      0005A1 53 B3 BF         [24] 1913 	anl	_P1M1,#0xbf
      0005A4 43 B4 40         [24] 1914 	orl	_P1M2,#0x40
                                   1915 ;	src/main.c:522: P17_QUASI_MODE;
      0005A7 53 B3 7F         [24] 1916 	anl	_P1M1,#0x7f
      0005AA 53 B4 7F         [24] 1917 	anl	_P1M2,#0x7f
                                   1918 ;	src/main.c:525: STB_ON;
                                   1919 ;	assignBit
      0005AD D2 95            [12] 1920 	setb	_P15
                                   1921 ;	src/main.c:526: CLK_ON;
                                   1922 ;	assignBit
      0005AF D2 96            [12] 1923 	setb	_P16
                                   1924 ;	src/main.c:527: DIO_ON;
                                   1925 ;	assignBit
      0005B1 D2 97            [12] 1926 	setb	_P17
                                   1927 ;	src/main.c:529: writeCMD(0x89);		
      0005B3 75 82 89         [24] 1928 	mov	dpl, #0x89
      0005B6 12 03 42         [24] 1929 	lcall	_writeCMD
                                   1930 ;	src/main.c:530: writeCMD(0x40);		
      0005B9 75 82 40         [24] 1931 	mov	dpl, #0x40
      0005BC 12 03 42         [24] 1932 	lcall	_writeCMD
                                   1933 ;	src/main.c:531: STB_OFF;
                                   1934 ;	assignBit
      0005BF C2 95            [12] 1935 	clr	_P15
                                   1936 ;	src/main.c:532: TM1638_Write(0xC0);		
      0005C1 75 82 C0         [24] 1937 	mov	dpl, #0xc0
      0005C4 12 03 18         [24] 1938 	lcall	_TM1638_Write
                                   1939 ;	src/main.c:534: for(m=0; m<3; m++)   // blink 3 times
      0005C7 75 16 00         [24] 1940 	mov	_m,#0x00
      0005CA                       1941 00131$:
                                   1942 ;	src/main.c:537: for(y=0; y<16; y++) TM1638_Write(0xFF);
      0005CA 75 17 00         [24] 1943 	mov	_y,#0x00
      0005CD                       1944 00127$:
      0005CD 75 82 FF         [24] 1945 	mov	dpl, #0xff
      0005D0 12 03 18         [24] 1946 	lcall	_TM1638_Write
      0005D3 05 17            [12] 1947 	inc	_y
      0005D5 74 F0            [12] 1948 	mov	a,#0x100 - 0x10
      0005D7 25 17            [12] 1949 	add	a,_y
      0005D9 50 F2            [24] 1950 	jnc	00127$
                                   1951 ;	src/main.c:538: delay_ms(1000);
      0005DB 90 03 E8         [24] 1952 	mov	dptr,#0x03e8
      0005DE 12 04 74         [24] 1953 	lcall	_delay_ms
                                   1954 ;	src/main.c:541: for(y=0; y<16; y++) TM1638_Write(0x00);
      0005E1 75 17 00         [24] 1955 	mov	_y,#0x00
      0005E4                       1956 00129$:
      0005E4 75 82 00         [24] 1957 	mov	dpl, #0x00
      0005E7 12 03 18         [24] 1958 	lcall	_TM1638_Write
      0005EA 05 17            [12] 1959 	inc	_y
      0005EC 74 F0            [12] 1960 	mov	a,#0x100 - 0x10
      0005EE 25 17            [12] 1961 	add	a,_y
      0005F0 50 F2            [24] 1962 	jnc	00129$
                                   1963 ;	src/main.c:542: delay_ms(1000);
      0005F2 90 03 E8         [24] 1964 	mov	dptr,#0x03e8
      0005F5 12 04 74         [24] 1965 	lcall	_delay_ms
                                   1966 ;	src/main.c:534: for(m=0; m<3; m++)   // blink 3 times
      0005F8 05 16            [12] 1967 	inc	_m
      0005FA 74 FD            [12] 1968 	mov	a,#0x100 - 0x03
      0005FC 25 16            [12] 1969 	add	a,_m
      0005FE 50 CA            [24] 1970 	jnc	00131$
                                   1971 ;	src/main.c:545: STB_ON;
                                   1972 ;	assignBit
      000600 D2 95            [12] 1973 	setb	_P15
                                   1974 ;	src/main.c:547: key_press=0;
      000602 E4               [12] 1975 	clr	a
      000603 F5 10            [12] 1976 	mov	_key_press,a
      000605 F5 11            [12] 1977 	mov	(_key_press + 1),a
                                   1978 ;	src/main.c:562: while(1) 
      000607                       1979 00125$:
                                   1980 ;	src/main.c:566: RunVirtualTimer();
      000607 12 00 00         [24] 1981 	lcall	_RunVirtualTimer
                                   1982 ;	src/main.c:569: if( T1E == ELAPSED)
      00060A 74 03            [12] 1983 	mov	a,#0x03
      00060C B5 00 06         [24] 1984 	cjne	a,_T1E,00105$
                                   1985 ;	src/main.c:571: T1P = RESTART;
      00060F 75 00 04         [24] 1986 	mov	_T1P,#0x04
                                   1987 ;	src/main.c:572: ChangeDisplay();
      000612 12 08 0D         [24] 1988 	lcall	_ChangeDisplay
      000615                       1989 00105$:
                                   1990 ;	src/main.c:577: if( T3E == ELAPSED)
      000615 74 03            [12] 1991 	mov	a,#0x03
      000617 B5 00 0C         [24] 1992 	cjne	a,_T3E,00107$
                                   1993 ;	src/main.c:579: T3P = RESTART;
      00061A 75 00 04         [24] 1994 	mov	_T3P,#0x04
                                   1995 ;	src/main.c:580: key_press	=tm1638_read_key();
      00061D 12 03 FD         [24] 1996 	lcall	_tm1638_read_key
      000620 85 82 10         [24] 1997 	mov	_key_press,dpl
      000623 85 83 11         [24] 1998 	mov	(_key_press + 1),dph
      000626                       1999 00107$:
                                   2000 ;	src/main.c:586: if( T2E == ELAPSED)
      000626 74 03            [12] 2001 	mov	a,#0x03
      000628 B5 00 2A         [24] 2002 	cjne	a,_T2E,00109$
                                   2003 ;	src/main.c:588: T2P = RESTART;
      00062B 75 00 04         [24] 2004 	mov	_T2P,#0x04
                                   2005 ;	src/main.c:594: ADC_CHANNEL_SWITCHING = 2;
      00062E 90 00 33         [24] 2006 	mov	dptr,#_ADC_CHANNEL_SWITCHING
      000631 74 02            [12] 2007 	mov	a,#0x02
      000633 F0               [24] 2008 	movx	@dptr,a
                                   2009 ;	src/main.c:596: P0M1 |= 0x20;     // P0.5 input mode
      000634 43 B1 20         [24] 2010 	orl	_P0M1,#0x20
                                   2011 ;	src/main.c:597: P0M2 &= ~0x20;    // set to analog
      000637 53 B2 DF         [24] 2012 	anl	_P0M2,#0xdf
                                   2013 ;	src/main.c:598: AINDIDS |= 0x10;  // disable digital input buffer on P0.5
      00063A 43 F6 10         [24] 2014 	orl	_AINDIDS,#0x10
                                   2015 ;	src/main.c:601: ADCCON0 &= ~0x0F; // clear channel select
      00063D 53 E8 F0         [24] 2016 	anl	_ADCCON0,#0xf0
                                   2017 ;	src/main.c:602: ADCCON0 |= 0x04;  // AIN4
      000640 43 E8 04         [24] 2018 	orl	_ADCCON0,#0x04
                                   2019 ;	src/main.c:605: ADCCON1 &= ~0x30; // 00 = AVDD
      000643 53 E1 CF         [24] 2020 	anl	_ADCCON1,#0xcf
                                   2021 ;	src/main.c:608: ADCCON1 &= ~0x07;
      000646 53 E1 F8         [24] 2022 	anl	_ADCCON1,#0xf8
                                   2023 ;	src/main.c:609: ADCCON1 |= 0x05;
      000649 43 E1 05         [24] 2024 	orl	_ADCCON1,#0x05
                                   2025 ;	src/main.c:612: ADCCON0 |= 0x80;  // ADCEN = 1
      00064C 43 E8 80         [24] 2026 	orl	_ADCCON0,#0x80
                                   2027 ;	src/main.c:615: EADC = 1; // Enable ADC interrupt
                                   2028 ;	assignBit
      00064F D2 AE            [12] 2029 	setb	_EADC
                                   2030 ;	src/main.c:616: EA   = 1; // Enable global interrupt
                                   2031 ;	assignBit
      000651 D2 AF            [12] 2032 	setb	_EA
                                   2033 ;	src/main.c:619: ADCS = 1;
                                   2034 ;	assignBit
      000653 D2 EE            [12] 2035 	setb	_ADCS
      000655                       2036 00109$:
                                   2037 ;	src/main.c:661: if( T0E == ELAPSED)
      000655 74 03            [12] 2038 	mov	a,#0x03
      000657 B5 00 AD         [24] 2039 	cjne	a,_T0E,00125$
                                   2040 ;	src/main.c:664: T0P=RESTART;	
      00065A 75 00 04         [24] 2041 	mov	_T0P,#0x04
                                   2042 ;	src/main.c:666: if(data_ready && ADC_CHANNEL_SWITCHING == 2)
      00065D 90 00 51         [24] 2043 	mov	dptr,#_data_ready
      000660 E0               [24] 2044 	movx	a,@dptr
      000661 70 03            [24] 2045 	jnz	00248$
      000663 02 07 54         [24] 2046 	ljmp	00119$
      000666                       2047 00248$:
      000666 90 00 33         [24] 2048 	mov	dptr,#_ADC_CHANNEL_SWITCHING
      000669 E0               [24] 2049 	movx	a,@dptr
      00066A FF               [12] 2050 	mov	r7,a
      00066B BF 02 02         [24] 2051 	cjne	r7,#0x02,00249$
      00066E 80 03            [24] 2052 	sjmp	00250$
      000670                       2053 00249$:
      000670 02 07 54         [24] 2054 	ljmp	00119$
      000673                       2055 00250$:
                                   2056 ;	src/main.c:668: peak = get_peak_voltage();
      000673 12 02 06         [24] 2057 	lcall	_get_peak_voltage
      000676 AC 82            [24] 2058 	mov	r4, dpl
      000678 AD 83            [24] 2059 	mov	r5, dph
      00067A AE F0            [24] 2060 	mov	r6, b
      00067C FF               [12] 2061 	mov	r7, a
      00067D 90 00 39         [24] 2062 	mov	dptr,#_peak
      000680 EC               [12] 2063 	mov	a,r4
      000681 F0               [24] 2064 	movx	@dptr,a
      000682 ED               [12] 2065 	mov	a,r5
      000683 A3               [24] 2066 	inc	dptr
      000684 F0               [24] 2067 	movx	@dptr,a
      000685 EE               [12] 2068 	mov	a,r6
      000686 A3               [24] 2069 	inc	dptr
      000687 F0               [24] 2070 	movx	@dptr,a
      000688 EF               [12] 2071 	mov	a,r7
      000689 A3               [24] 2072 	inc	dptr
      00068A F0               [24] 2073 	movx	@dptr,a
                                   2074 ;	src/main.c:685: if(peak > 70)
      00068B C0 07            [24] 2075 	push	ar7
      00068D C0 06            [24] 2076 	push	ar6
      00068F C0 05            [24] 2077 	push	ar5
      000691 C0 04            [24] 2078 	push	ar4
      000693 C0 04            [24] 2079 	push	ar4
      000695 C0 05            [24] 2080 	push	ar5
      000697 C0 06            [24] 2081 	push	ar6
      000699 C0 07            [24] 2082 	push	ar7
      00069B 90 00 00         [24] 2083 	mov	dptr,#0x0000
      00069E 75 F0 8C         [24] 2084 	mov	b, #0x8c
      0006A1 74 42            [12] 2085 	mov	a, #0x42
      0006A3 12 0A 8D         [24] 2086 	lcall	___fslt
      0006A6 AB 82            [24] 2087 	mov	r3, dpl
      0006A8 E5 81            [12] 2088 	mov	a,sp
      0006AA 24 FC            [12] 2089 	add	a,#0xfc
      0006AC F5 81            [12] 2090 	mov	sp,a
      0006AE D0 04            [24] 2091 	pop	ar4
      0006B0 D0 05            [24] 2092 	pop	ar5
      0006B2 D0 06            [24] 2093 	pop	ar6
      0006B4 D0 07            [24] 2094 	pop	ar7
      0006B6 EB               [12] 2095 	mov	a,r3
      0006B7 70 03            [24] 2096 	jnz	00251$
      0006B9 02 07 39         [24] 2097 	ljmp	00111$
      0006BC                       2098 00251$:
                                   2099 ;	src/main.c:687: curr= ((0.0059f * peak) - 0.3f)*10;
      0006BC C0 04            [24] 2100 	push	ar4
      0006BE C0 05            [24] 2101 	push	ar5
      0006C0 C0 06            [24] 2102 	push	ar6
      0006C2 C0 07            [24] 2103 	push	ar7
      0006C4 90 54 CA         [24] 2104 	mov	dptr,#0x54ca
      0006C7 75 F0 C1         [24] 2105 	mov	b, #0xc1
      0006CA 74 3B            [12] 2106 	mov	a, #0x3b
      0006CC 12 09 6E         [24] 2107 	lcall	___fsmul
      0006CF AC 82            [24] 2108 	mov	r4, dpl
      0006D1 AD 83            [24] 2109 	mov	r5, dph
      0006D3 AE F0            [24] 2110 	mov	r6, b
      0006D5 FF               [12] 2111 	mov	r7, a
      0006D6 E5 81            [12] 2112 	mov	a,sp
      0006D8 24 FC            [12] 2113 	add	a,#0xfc
      0006DA F5 81            [12] 2114 	mov	sp,a
      0006DC 74 9A            [12] 2115 	mov	a,#0x9a
      0006DE C0 E0            [24] 2116 	push	acc
      0006E0 14               [12] 2117 	dec	a
      0006E1 C0 E0            [24] 2118 	push	acc
      0006E3 C0 E0            [24] 2119 	push	acc
      0006E5 74 3E            [12] 2120 	mov	a,#0x3e
      0006E7 C0 E0            [24] 2121 	push	acc
      0006E9 8C 82            [24] 2122 	mov	dpl, r4
      0006EB 8D 83            [24] 2123 	mov	dph, r5
      0006ED 8E F0            [24] 2124 	mov	b, r6
      0006EF EF               [12] 2125 	mov	a, r7
      0006F0 12 09 3A         [24] 2126 	lcall	___fssub
      0006F3 AC 82            [24] 2127 	mov	r4, dpl
      0006F5 AD 83            [24] 2128 	mov	r5, dph
      0006F7 AE F0            [24] 2129 	mov	r6, b
      0006F9 FF               [12] 2130 	mov	r7, a
      0006FA E5 81            [12] 2131 	mov	a,sp
      0006FC 24 FC            [12] 2132 	add	a,#0xfc
      0006FE F5 81            [12] 2133 	mov	sp,a
      000700 C0 04            [24] 2134 	push	ar4
      000702 C0 05            [24] 2135 	push	ar5
      000704 C0 06            [24] 2136 	push	ar6
      000706 C0 07            [24] 2137 	push	ar7
      000708 90 00 00         [24] 2138 	mov	dptr,#0x0000
      00070B 75 F0 20         [24] 2139 	mov	b, #0x20
      00070E 74 41            [12] 2140 	mov	a, #0x41
      000710 12 09 6E         [24] 2141 	lcall	___fsmul
      000713 AC 82            [24] 2142 	mov	r4, dpl
      000715 AD 83            [24] 2143 	mov	r5, dph
      000717 AE F0            [24] 2144 	mov	r6, b
      000719 FF               [12] 2145 	mov	r7, a
      00071A E5 81            [12] 2146 	mov	a,sp
      00071C 24 FC            [12] 2147 	add	a,#0xfc
      00071E F5 81            [12] 2148 	mov	sp,a
      000720 8C 82            [24] 2149 	mov	dpl, r4
      000722 8D 83            [24] 2150 	mov	dph, r5
      000724 8E F0            [24] 2151 	mov	b, r6
      000726 EF               [12] 2152 	mov	a, r7
      000727 12 0B B8         [24] 2153 	lcall	___fs2uint
      00072A E5 82            [12] 2154 	mov	a, dpl
      00072C 85 83 F0         [24] 2155 	mov	b, dph
      00072F 90 00 34         [24] 2156 	mov	dptr,#_curr
      000732 F0               [24] 2157 	movx	@dptr,a
      000733 E5 F0            [12] 2158 	mov	a,b
      000735 A3               [24] 2159 	inc	dptr
      000736 F0               [24] 2160 	movx	@dptr,a
      000737 80 07            [24] 2161 	sjmp	00112$
      000739                       2162 00111$:
                                   2163 ;	src/main.c:693: curr =0;
      000739 90 00 34         [24] 2164 	mov	dptr,#_curr
      00073C E4               [12] 2165 	clr	a
      00073D F0               [24] 2166 	movx	@dptr,a
      00073E A3               [24] 2167 	inc	dptr
      00073F F0               [24] 2168 	movx	@dptr,a
      000740                       2169 00112$:
                                   2170 ;	src/main.c:696: adc_index = 0;
      000740 90 00 4F         [24] 2171 	mov	dptr,#_adc_index
      000743 E4               [12] 2172 	clr	a
      000744 F0               [24] 2173 	movx	@dptr,a
      000745 A3               [24] 2174 	inc	dptr
      000746 F0               [24] 2175 	movx	@dptr,a
                                   2176 ;	src/main.c:697: data_ready = 0;
      000747 90 00 51         [24] 2177 	mov	dptr,#_data_ready
      00074A F0               [24] 2178 	movx	@dptr,a
                                   2179 ;	src/main.c:699: ADCconversion = PROCESS_NEXT_CHANNEL;						
      00074B 90 00 32         [24] 2180 	mov	dptr,#_ADCconversion
      00074E 74 03            [12] 2181 	mov	a,#0x03
      000750 F0               [24] 2182 	movx	@dptr,a
      000751 02 06 07         [24] 2183 	ljmp	00125$
      000754                       2184 00119$:
                                   2185 ;	src/main.c:704: else if(data_ready && ADC_CHANNEL_SWITCHING == 1)
      000754 90 00 51         [24] 2186 	mov	dptr,#_data_ready
      000757 E0               [24] 2187 	movx	a,@dptr
      000758 70 03            [24] 2188 	jnz	00252$
      00075A 02 06 07         [24] 2189 	ljmp	00125$
      00075D                       2190 00252$:
      00075D 90 00 33         [24] 2191 	mov	dptr,#_ADC_CHANNEL_SWITCHING
      000760 E0               [24] 2192 	movx	a,@dptr
      000761 FF               [12] 2193 	mov	r7,a
      000762 BF 01 02         [24] 2194 	cjne	r7,#0x01,00253$
      000765 80 03            [24] 2195 	sjmp	00254$
      000767                       2196 00253$:
      000767 02 06 07         [24] 2197 	ljmp	00125$
      00076A                       2198 00254$:
                                   2199 ;	src/main.c:706: peak = get_peak_voltage();
      00076A 12 02 06         [24] 2200 	lcall	_get_peak_voltage
      00076D AC 82            [24] 2201 	mov	r4, dpl
      00076F AD 83            [24] 2202 	mov	r5, dph
      000771 AE F0            [24] 2203 	mov	r6, b
      000773 FF               [12] 2204 	mov	r7, a
      000774 90 00 39         [24] 2205 	mov	dptr,#_peak
      000777 EC               [12] 2206 	mov	a,r4
      000778 F0               [24] 2207 	movx	@dptr,a
      000779 ED               [12] 2208 	mov	a,r5
      00077A A3               [24] 2209 	inc	dptr
      00077B F0               [24] 2210 	movx	@dptr,a
      00077C EE               [12] 2211 	mov	a,r6
      00077D A3               [24] 2212 	inc	dptr
      00077E F0               [24] 2213 	movx	@dptr,a
      00077F EF               [12] 2214 	mov	a,r7
      000780 A3               [24] 2215 	inc	dptr
      000781 F0               [24] 2216 	movx	@dptr,a
                                   2217 ;	src/main.c:709: volt = (0.208 * peak) - 1.28;				
      000782 C0 04            [24] 2218 	push	ar4
      000784 C0 05            [24] 2219 	push	ar5
      000786 C0 06            [24] 2220 	push	ar6
      000788 C0 07            [24] 2221 	push	ar7
      00078A 90 FD F4         [24] 2222 	mov	dptr,#0xfdf4
      00078D 75 F0 54         [24] 2223 	mov	b, #0x54
      000790 74 3E            [12] 2224 	mov	a, #0x3e
      000792 12 09 6E         [24] 2225 	lcall	___fsmul
      000795 AC 82            [24] 2226 	mov	r4, dpl
      000797 AD 83            [24] 2227 	mov	r5, dph
      000799 AE F0            [24] 2228 	mov	r6, b
      00079B FF               [12] 2229 	mov	r7, a
      00079C E5 81            [12] 2230 	mov	a,sp
      00079E 24 FC            [12] 2231 	add	a,#0xfc
      0007A0 F5 81            [12] 2232 	mov	sp,a
      0007A2 74 0A            [12] 2233 	mov	a,#0x0a
      0007A4 C0 E0            [24] 2234 	push	acc
      0007A6 74 D7            [12] 2235 	mov	a,#0xd7
      0007A8 C0 E0            [24] 2236 	push	acc
      0007AA 74 A3            [12] 2237 	mov	a,#0xa3
      0007AC C0 E0            [24] 2238 	push	acc
      0007AE 74 3F            [12] 2239 	mov	a,#0x3f
      0007B0 C0 E0            [24] 2240 	push	acc
      0007B2 8C 82            [24] 2241 	mov	dpl, r4
      0007B4 8D 83            [24] 2242 	mov	dph, r5
      0007B6 8E F0            [24] 2243 	mov	b, r6
      0007B8 EF               [12] 2244 	mov	a, r7
      0007B9 12 09 3A         [24] 2245 	lcall	___fssub
      0007BC AC 82            [24] 2246 	mov	r4, dpl
      0007BE AD 83            [24] 2247 	mov	r5, dph
      0007C0 AE F0            [24] 2248 	mov	r6, b
      0007C2 FF               [12] 2249 	mov	r7, a
      0007C3 E5 81            [12] 2250 	mov	a,sp
      0007C5 24 FC            [12] 2251 	add	a,#0xfc
      0007C7 F5 81            [12] 2252 	mov	sp,a
      0007C9 8C 82            [24] 2253 	mov	dpl, r4
      0007CB 8D 83            [24] 2254 	mov	dph, r5
      0007CD 8E F0            [24] 2255 	mov	b, r6
      0007CF EF               [12] 2256 	mov	a, r7
      0007D0 12 0B B8         [24] 2257 	lcall	___fs2uint
      0007D3 AE 82            [24] 2258 	mov	r6, dpl
      0007D5 AF 83            [24] 2259 	mov	r7, dph
      0007D7 90 00 36         [24] 2260 	mov	dptr,#_volt
      0007DA EE               [12] 2261 	mov	a,r6
      0007DB F0               [24] 2262 	movx	@dptr,a
      0007DC EF               [12] 2263 	mov	a,r7
      0007DD A3               [24] 2264 	inc	dptr
      0007DE F0               [24] 2265 	movx	@dptr,a
                                   2266 ;	src/main.c:710: if(volt<100)	
      0007DF C3               [12] 2267 	clr	c
      0007E0 EE               [12] 2268 	mov	a,r6
      0007E1 94 64            [12] 2269 	subb	a,#0x64
      0007E3 EF               [12] 2270 	mov	a,r7
      0007E4 94 00            [12] 2271 	subb	a,#0x00
      0007E6 50 07            [24] 2272 	jnc	00114$
                                   2273 ;	src/main.c:712: volt=0;
      0007E8 90 00 36         [24] 2274 	mov	dptr,#_volt
      0007EB E4               [12] 2275 	clr	a
      0007EC F0               [24] 2276 	movx	@dptr,a
      0007ED A3               [24] 2277 	inc	dptr
      0007EE F0               [24] 2278 	movx	@dptr,a
      0007EF                       2279 00114$:
                                   2280 ;	src/main.c:721: adc_index = 0;
      0007EF 90 00 4F         [24] 2281 	mov	dptr,#_adc_index
      0007F2 E4               [12] 2282 	clr	a
      0007F3 F0               [24] 2283 	movx	@dptr,a
      0007F4 A3               [24] 2284 	inc	dptr
      0007F5 F0               [24] 2285 	movx	@dptr,a
                                   2286 ;	src/main.c:722: data_ready = 0;
      0007F6 90 00 51         [24] 2287 	mov	dptr,#_data_ready
      0007F9 F0               [24] 2288 	movx	@dptr,a
                                   2289 ;	src/main.c:723: peak =0;	
      0007FA 90 00 39         [24] 2290 	mov	dptr,#_peak
      0007FD F0               [24] 2291 	movx	@dptr,a
      0007FE A3               [24] 2292 	inc	dptr
      0007FF F0               [24] 2293 	movx	@dptr,a
      000800 A3               [24] 2294 	inc	dptr
      000801 F0               [24] 2295 	movx	@dptr,a
      000802 A3               [24] 2296 	inc	dptr
      000803 F0               [24] 2297 	movx	@dptr,a
                                   2298 ;	src/main.c:724: ADCconversion = PROCESS_NEXT_CHANNEL;						
      000804 90 00 32         [24] 2299 	mov	dptr,#_ADCconversion
      000807 74 03            [12] 2300 	mov	a,#0x03
      000809 F0               [24] 2301 	movx	@dptr,a
                                   2302 ;	src/main.c:730: }
      00080A 02 06 07         [24] 2303 	ljmp	00125$
                                   2304 ;------------------------------------------------------------
                                   2305 ;Allocation info for local variables in function 'ChangeDisplay'
                                   2306 ;------------------------------------------------------------
                                   2307 ;a             Allocated with name '_ChangeDisplay_a_10000_219'
                                   2308 ;b             Allocated with name '_ChangeDisplay_b_10000_219'
                                   2309 ;c             Allocated with name '_ChangeDisplay_c_10000_219'
                                   2310 ;d             Allocated with name '_ChangeDisplay_d_10000_219'
                                   2311 ;e             Allocated to registers 
                                   2312 ;f             Allocated with name '_ChangeDisplay_sloc0_1_0'
                                   2313 ;g             Allocated to registers r6 
                                   2314 ;h             Allocated to registers r2 
                                   2315 ;sloc0         Allocated with name '_ChangeDisplay_sloc0_1_0'
                                   2316 ;------------------------------------------------------------
                                   2317 ;	src/main.c:734: void ChangeDisplay(void)
                                   2318 ;	-----------------------------------------
                                   2319 ;	 function ChangeDisplay
                                   2320 ;	-----------------------------------------
      00080D                       2321 _ChangeDisplay:
                                   2322 ;	src/main.c:755: volt = key_press;//peak;////;
      00080D AE 10            [24] 2323 	mov	r6,_key_press
      00080F AF 11            [24] 2324 	mov	r7,(_key_press + 1)
      000811 90 00 36         [24] 2325 	mov	dptr,#_volt
      000814 EE               [12] 2326 	mov	a,r6
      000815 F0               [24] 2327 	movx	@dptr,a
      000816 EF               [12] 2328 	mov	a,r7
      000817 A3               [24] 2329 	inc	dptr
      000818 F0               [24] 2330 	movx	@dptr,a
                                   2331 ;	src/main.c:756: a = (volt / 1000) % 10;
      000819 75 4A E8         [24] 2332 	mov	__divuint_PARM_2,#0xe8
      00081C 75 4B 03         [24] 2333 	mov	(__divuint_PARM_2 + 1),#0x03
      00081F 8E 82            [24] 2334 	mov	dpl, r6
      000821 8F 83            [24] 2335 	mov	dph, r7
      000823 C0 07            [24] 2336 	push	ar7
      000825 C0 06            [24] 2337 	push	ar6
      000827 12 09 45         [24] 2338 	lcall	__divuint
      00082A AC 82            [24] 2339 	mov	r4, dpl
      00082C D0 06            [24] 2340 	pop	ar6
      00082E D0 07            [24] 2341 	pop	ar7
      000830 75 F0 0A         [24] 2342 	mov	b,#0x0a
      000833 EC               [12] 2343 	mov	a,r4
      000834 84               [48] 2344 	div	ab
      000835 AC F0            [24] 2345 	mov	r4,b
      000837 8C 41            [24] 2346 	mov	_ChangeDisplay_a_10000_219,r4
                                   2347 ;	src/main.c:757: b=(volt / 100)  % 10;  // Hundreds
      000839 75 4A 64         [24] 2348 	mov	__divuint_PARM_2,#0x64
      00083C 75 4B 00         [24] 2349 	mov	(__divuint_PARM_2 + 1),#0x00
      00083F 8E 82            [24] 2350 	mov	dpl, r6
      000841 8F 83            [24] 2351 	mov	dph, r7
      000843 C0 07            [24] 2352 	push	ar7
      000845 C0 06            [24] 2353 	push	ar6
      000847 12 09 45         [24] 2354 	lcall	__divuint
      00084A 75 4A 0A         [24] 2355 	mov	__moduint_PARM_2,#0x0a
      00084D 75 4B 00         [24] 2356 	mov	(__moduint_PARM_2 + 1),#0x00
      000850 12 0A BD         [24] 2357 	lcall	__moduint
      000853 AB 82            [24] 2358 	mov	r3, dpl
      000855 D0 06            [24] 2359 	pop	ar6
      000857 D0 07            [24] 2360 	pop	ar7
      000859 8B 43            [24] 2361 	mov	_ChangeDisplay_b_10000_219,r3
                                   2362 ;	src/main.c:758: c=(volt / 10)   % 10;  // Tens
      00085B 75 4A 0A         [24] 2363 	mov	__divuint_PARM_2,#0x0a
      00085E 75 4B 00         [24] 2364 	mov	(__divuint_PARM_2 + 1),#0x00
      000861 8E 82            [24] 2365 	mov	dpl, r6
      000863 8F 83            [24] 2366 	mov	dph, r7
      000865 C0 07            [24] 2367 	push	ar7
      000867 C0 06            [24] 2368 	push	ar6
      000869 12 09 45         [24] 2369 	lcall	__divuint
      00086C 75 4A 0A         [24] 2370 	mov	__moduint_PARM_2,#0x0a
      00086F 75 4B 00         [24] 2371 	mov	(__moduint_PARM_2 + 1),#0x00
      000872 12 0A BD         [24] 2372 	lcall	__moduint
      000875 AA 82            [24] 2373 	mov	r2, dpl
      000877 D0 06            [24] 2374 	pop	ar6
      000879 D0 07            [24] 2375 	pop	ar7
      00087B 8A 45            [24] 2376 	mov	_ChangeDisplay_c_10000_219,r2
                                   2377 ;	src/main.c:759: d=volt % 10;          // Units
      00087D 75 4A 0A         [24] 2378 	mov	__moduint_PARM_2,#0x0a
      000880 75 4B 00         [24] 2379 	mov	(__moduint_PARM_2 + 1),#0x00
      000883 8E 82            [24] 2380 	mov	dpl, r6
      000885 8F 83            [24] 2381 	mov	dph, r7
      000887 12 0A BD         [24] 2382 	lcall	__moduint
      00088A AE 82            [24] 2383 	mov	r6, dpl
      00088C 8E 47            [24] 2384 	mov	_ChangeDisplay_d_10000_219,r6
                                   2385 ;	src/main.c:764: if(curr<100)
      00088E 90 00 34         [24] 2386 	mov	dptr,#_curr
      000891 E0               [24] 2387 	movx	a,@dptr
      000892 FD               [12] 2388 	mov	r5,a
      000893 A3               [24] 2389 	inc	dptr
      000894 E0               [24] 2390 	movx	a,@dptr
      000895 FF               [12] 2391 	mov	r7,a
      000896 C3               [12] 2392 	clr	c
      000897 ED               [12] 2393 	mov	a,r5
      000898 94 64            [12] 2394 	subb	a,#0x64
      00089A EF               [12] 2395 	mov	a,r7
      00089B 94 00            [12] 2396 	subb	a,#0x00
      00089D 50 1B            [24] 2397 	jnc	00102$
                                   2398 ;	src/main.c:766: f = _NV;	 
      00089F 75 49 0A         [24] 2399 	mov	_ChangeDisplay_sloc0_1_0,#0x0a
                                   2400 ;	src/main.c:767: g=(curr / 10)   % 10;  // Tens
      0008A2 8D 06            [24] 2401 	mov	ar6,r5
      0008A4 75 F0 0A         [24] 2402 	mov	b,#0x0a
      0008A7 EE               [12] 2403 	mov	a,r6
      0008A8 84               [48] 2404 	div	ab
      0008A9 75 F0 0A         [24] 2405 	mov	b,#0x0a
      0008AC 84               [48] 2406 	div	ab
      0008AD AE F0            [24] 2407 	mov	r6,b
                                   2408 ;	src/main.c:768: h=curr % 10;          // Units
      0008AF 8D 02            [24] 2409 	mov	ar2,r5
      0008B1 75 F0 0A         [24] 2410 	mov	b,#0x0a
      0008B4 EA               [12] 2411 	mov	a,r2
      0008B5 84               [48] 2412 	div	ab
      0008B6 AA F0            [24] 2413 	mov	r2,b
      0008B8 80 59            [24] 2414 	sjmp	00103$
      0008BA                       2415 00102$:
                                   2416 ;	src/main.c:772: f=(curr / 100)  % 10; 
      0008BA 75 4A 64         [24] 2417 	mov	__divuint_PARM_2,#0x64
      0008BD 75 4B 00         [24] 2418 	mov	(__divuint_PARM_2 + 1),#0x00
      0008C0 8D 82            [24] 2419 	mov	dpl, r5
      0008C2 8F 83            [24] 2420 	mov	dph, r7
      0008C4 C0 07            [24] 2421 	push	ar7
      0008C6 C0 05            [24] 2422 	push	ar5
      0008C8 12 09 45         [24] 2423 	lcall	__divuint
      0008CB 75 4A 0A         [24] 2424 	mov	__moduint_PARM_2,#0x0a
      0008CE 75 4B 00         [24] 2425 	mov	(__moduint_PARM_2 + 1),#0x00
      0008D1 12 0A BD         [24] 2426 	lcall	__moduint
      0008D4 AB 82            [24] 2427 	mov	r3, dpl
      0008D6 D0 05            [24] 2428 	pop	ar5
      0008D8 D0 07            [24] 2429 	pop	ar7
      0008DA 8B 49            [24] 2430 	mov	_ChangeDisplay_sloc0_1_0,r3
                                   2431 ;	src/main.c:773: g=(curr / 10)   % 10;  // Tens
      0008DC 75 4A 0A         [24] 2432 	mov	__divuint_PARM_2,#0x0a
      0008DF 75 4B 00         [24] 2433 	mov	(__divuint_PARM_2 + 1),#0x00
      0008E2 8D 82            [24] 2434 	mov	dpl, r5
      0008E4 8F 83            [24] 2435 	mov	dph, r7
      0008E6 C0 07            [24] 2436 	push	ar7
      0008E8 C0 05            [24] 2437 	push	ar5
      0008EA 12 09 45         [24] 2438 	lcall	__divuint
      0008ED 75 4A 0A         [24] 2439 	mov	__moduint_PARM_2,#0x0a
      0008F0 75 4B 00         [24] 2440 	mov	(__moduint_PARM_2 + 1),#0x00
      0008F3 12 0A BD         [24] 2441 	lcall	__moduint
      0008F6 AB 82            [24] 2442 	mov	r3, dpl
      0008F8 D0 05            [24] 2443 	pop	ar5
      0008FA D0 07            [24] 2444 	pop	ar7
      0008FC 8B 06            [24] 2445 	mov	ar6,r3
                                   2446 ;	src/main.c:774: h=curr % 10;          // Units	 
      0008FE 75 4A 0A         [24] 2447 	mov	__moduint_PARM_2,#0x0a
      000901 75 4B 00         [24] 2448 	mov	(__moduint_PARM_2 + 1),#0x00
      000904 8D 82            [24] 2449 	mov	dpl, r5
      000906 8F 83            [24] 2450 	mov	dph, r7
      000908 C0 06            [24] 2451 	push	ar6
      00090A 12 0A BD         [24] 2452 	lcall	__moduint
      00090D AD 82            [24] 2453 	mov	r5, dpl
      00090F D0 06            [24] 2454 	pop	ar6
      000911 8D 02            [24] 2455 	mov	ar2,r5
      000913                       2456 00103$:
                                   2457 ;	src/main.c:798: LoadDispBuffer[0]=a;
      000913 AC 41            [24] 2458 	mov	r4,_ChangeDisplay_a_10000_219
      000915 8C 1B            [24] 2459 	mov	_LoadDispBuffer,r4
                                   2460 ;	src/main.c:799: LoadDispBuffer[1]=b;      
      000917 AB 43            [24] 2461 	mov	r3,_ChangeDisplay_b_10000_219
      000919 8B 1C            [24] 2462 	mov	(_LoadDispBuffer + 0x0001),r3
                                   2463 ;	src/main.c:800: LoadDispBuffer[2]=c;
      00091B AF 45            [24] 2464 	mov	r7,_ChangeDisplay_c_10000_219
      00091D 8F 1D            [24] 2465 	mov	(_LoadDispBuffer + 0x0002),r7
                                   2466 ;	src/main.c:801: LoadDispBuffer[3]=d;
      00091F AF 47            [24] 2467 	mov	r7,_ChangeDisplay_d_10000_219
      000921 8F 1E            [24] 2468 	mov	(_LoadDispBuffer + 0x0003),r7
                                   2469 ;	src/main.c:802: LoadDispBuffer[4]=e; 
      000923 75 1F 0B         [24] 2470 	mov	(_LoadDispBuffer + 0x0004),#0x0b
                                   2471 ;	src/main.c:803: LoadDispBuffer[5]=f;
      000926 AF 49            [24] 2472 	mov	r7,_ChangeDisplay_sloc0_1_0
      000928 8F 20            [24] 2473 	mov	(_LoadDispBuffer + 0x0005),r7
                                   2474 ;	src/main.c:804: LoadDispBuffer[6]=g;
      00092A 8E 21            [24] 2475 	mov	(_LoadDispBuffer + 0x0006),r6
                                   2476 ;	src/main.c:805: LoadDispBuffer[7]=h;  
      00092C 8A 22            [24] 2477 	mov	(_LoadDispBuffer + 0x0007),r2
                                   2478 ;	src/main.c:820: display(LoadDispBuffer,1);
      00092E 75 36 01         [24] 2479 	mov	_display_PARM_2,#0x01
      000931 90 00 1B         [24] 2480 	mov	dptr,#_LoadDispBuffer
      000934 75 F0 40         [24] 2481 	mov	b, #0x40
                                   2482 ;	src/main.c:821: }
      000937 02 03 69         [24] 2483 	ljmp	_display
                                   2484 	.area CSEG    (CODE)
                                   2485 	.area CONST   (CODE)
                                   2486 	.area CONST   (CODE)
      000CDB                       2487 __NV:
      000CDB 0A                    2488 	.db #0x0a	; 10
                                   2489 	.area CSEG    (CODE)
                                   2490 	.area CONST   (CODE)
      000CDC                       2491 __AA:
      000CDC 0B                    2492 	.db #0x0b	; 11
                                   2493 	.area CSEG    (CODE)
                                   2494 	.area CONST   (CODE)
      000CDD                       2495 __BB:
      000CDD 0C                    2496 	.db #0x0c	; 12
                                   2497 	.area CSEG    (CODE)
                                   2498 	.area CONST   (CODE)
      000CDE                       2499 __CC:
      000CDE 0D                    2500 	.db #0x0d	; 13
                                   2501 	.area CSEG    (CODE)
                                   2502 	.area CONST   (CODE)
      000CDF                       2503 __DD:
      000CDF 0E                    2504 	.db #0x0e	; 14
                                   2505 	.area CSEG    (CODE)
                                   2506 	.area CONST   (CODE)
      000CE0                       2507 __EE:
      000CE0 0F                    2508 	.db #0x0f	; 15
                                   2509 	.area CSEG    (CODE)
                                   2510 	.area CONST   (CODE)
      000CE1                       2511 __FF:
      000CE1 10                    2512 	.db #0x10	; 16
                                   2513 	.area CSEG    (CODE)
                                   2514 	.area CONST   (CODE)
      000CE2                       2515 __GG:
      000CE2 11                    2516 	.db #0x11	; 17
                                   2517 	.area CSEG    (CODE)
                                   2518 	.area CONST   (CODE)
      000CE3                       2519 __HH:
      000CE3 12                    2520 	.db #0x12	; 18
                                   2521 	.area CSEG    (CODE)
                                   2522 	.area CONST   (CODE)
      000CE4                       2523 __II:
      000CE4 13                    2524 	.db #0x13	; 19
                                   2525 	.area CSEG    (CODE)
                                   2526 	.area CONST   (CODE)
      000CE5                       2527 __JJ:
      000CE5 14                    2528 	.db #0x14	; 20
                                   2529 	.area CSEG    (CODE)
                                   2530 	.area CONST   (CODE)
      000CE6                       2531 __KK:
      000CE6 15                    2532 	.db #0x15	; 21
                                   2533 	.area CSEG    (CODE)
                                   2534 	.area CONST   (CODE)
      000CE7                       2535 __LL:
      000CE7 16                    2536 	.db #0x16	; 22
                                   2537 	.area CSEG    (CODE)
                                   2538 	.area CONST   (CODE)
      000CE8                       2539 __MM:
      000CE8 17                    2540 	.db #0x17	; 23
                                   2541 	.area CSEG    (CODE)
                                   2542 	.area CONST   (CODE)
      000CE9                       2543 __NN:
      000CE9 18                    2544 	.db #0x18	; 24
                                   2545 	.area CSEG    (CODE)
                                   2546 	.area CONST   (CODE)
      000CEA                       2547 __OO:
      000CEA 19                    2548 	.db #0x19	; 25
                                   2549 	.area CSEG    (CODE)
                                   2550 	.area CONST   (CODE)
      000CEB                       2551 __PP:
      000CEB 1A                    2552 	.db #0x1a	; 26
                                   2553 	.area CSEG    (CODE)
                                   2554 	.area CONST   (CODE)
      000CEC                       2555 __QQ:
      000CEC 1B                    2556 	.db #0x1b	; 27
                                   2557 	.area CSEG    (CODE)
                                   2558 	.area CONST   (CODE)
      000CED                       2559 __RR:
      000CED 1C                    2560 	.db #0x1c	; 28
                                   2561 	.area CSEG    (CODE)
                                   2562 	.area CONST   (CODE)
      000CEE                       2563 __SS:
      000CEE 1D                    2564 	.db #0x1d	; 29
                                   2565 	.area CSEG    (CODE)
                                   2566 	.area CONST   (CODE)
      000CEF                       2567 __TT:
      000CEF 1E                    2568 	.db #0x1e	; 30
                                   2569 	.area CSEG    (CODE)
                                   2570 	.area CONST   (CODE)
      000CF0                       2571 __UU:
      000CF0 1F                    2572 	.db #0x1f	; 31
                                   2573 	.area CSEG    (CODE)
                                   2574 	.area CONST   (CODE)
      000CF1                       2575 __VV:
      000CF1 20                    2576 	.db #0x20	; 32
                                   2577 	.area CSEG    (CODE)
                                   2578 	.area CONST   (CODE)
      000CF2                       2579 __WW:
      000CF2 21                    2580 	.db #0x21	; 33
                                   2581 	.area CSEG    (CODE)
                                   2582 	.area CONST   (CODE)
      000CF3                       2583 __XX:
      000CF3 22                    2584 	.db #0x22	; 34
                                   2585 	.area CSEG    (CODE)
                                   2586 	.area CONST   (CODE)
      000CF4                       2587 __YY:
      000CF4 23                    2588 	.db #0x23	; 35
                                   2589 	.area CSEG    (CODE)
                                   2590 	.area CONST   (CODE)
      000CF5                       2591 __ZZ:
      000CF5 24                    2592 	.db #0x24	; 36
                                   2593 	.area CSEG    (CODE)
                                   2594 	.area CONST   (CODE)
      000CF6                       2595 __DP:
      000CF6 25                    2596 	.db #0x25	; 37
                                   2597 	.area CSEG    (CODE)
                                   2598 	.area CONST   (CODE)
      000CF7                       2599 __MINUS:
      000CF7 26                    2600 	.db #0x26	; 38
                                   2601 	.area CSEG    (CODE)
                                   2602 	.area CONST   (CODE)
      000CF8                       2603 _led_val:
      000CF8 3F                    2604 	.db #0x3f	; 63
      000CF9 06                    2605 	.db #0x06	; 6
      000CFA 5B                    2606 	.db #0x5b	; 91
      000CFB 4F                    2607 	.db #0x4f	; 79	'O'
      000CFC 66                    2608 	.db #0x66	; 102	'f'
      000CFD 6D                    2609 	.db #0x6d	; 109	'm'
      000CFE 7D                    2610 	.db #0x7d	; 125
      000CFF 07                    2611 	.db #0x07	; 7
      000D00 7F                    2612 	.db #0x7f	; 127
      000D01 6F                    2613 	.db #0x6f	; 111	'o'
      000D02 00                    2614 	.db #0x00	; 0
      000D03 77                    2615 	.db #0x77	; 119	'w'
      000D04 7C                    2616 	.db #0x7c	; 124
      000D05 39                    2617 	.db #0x39	; 57	'9'
      000D06 5E                    2618 	.db #0x5e	; 94
      000D07 79                    2619 	.db #0x79	; 121	'y'
      000D08 71                    2620 	.db #0x71	; 113	'q'
      000D09 3D                    2621 	.db #0x3d	; 61
      000D0A 76                    2622 	.db #0x76	; 118	'v'
      000D0B 30                    2623 	.db #0x30	; 48	'0'
      000D0C 1E                    2624 	.db #0x1e	; 30
      000D0D 75                    2625 	.db #0x75	; 117	'u'
      000D0E 38                    2626 	.db #0x38	; 56	'8'
      000D0F 55                    2627 	.db #0x55	; 85	'U'
      000D10 54                    2628 	.db #0x54	; 84	'T'
      000D11 5C                    2629 	.db #0x5c	; 92
      000D12 73                    2630 	.db #0x73	; 115	's'
      000D13 67                    2631 	.db #0x67	; 103	'g'
      000D14 50                    2632 	.db #0x50	; 80	'P'
      000D15 6D                    2633 	.db #0x6d	; 109	'm'
      000D16 78                    2634 	.db #0x78	; 120	'x'
      000D17 3E                    2635 	.db #0x3e	; 62
      000D18 1C                    2636 	.db #0x1c	; 28
      000D19 1D                    2637 	.db #0x1d	; 29
      000D1A 64                    2638 	.db #0x64	; 100	'd'
      000D1B 6E                    2639 	.db #0x6e	; 110	'n'
      000D1C 5B                    2640 	.db #0x5b	; 91
      000D1D 80                    2641 	.db #0x80	; 128
      000D1E 40                    2642 	.db #0x40	; 64
      000D1F 00                    2643 	.db 0x00
                                   2644 	.area CSEG    (CODE)
                                   2645 	.area XINIT   (CODE)
      000D20                       2646 __xinit__adc_index:
      000D20 00 00                 2647 	.byte #0x00, #0x00	; 0
      000D22                       2648 __xinit__data_ready:
      000D22 00                    2649 	.db #0x00	; 0
      000D23                       2650 __xinit__max_val:
      000D23 00 00                 2651 	.byte #0x00, #0x00	; 0
      000D25                       2652 __xinit__div_volt:
      000D25 00 00                 2653 	.byte #0x00, #0x00	; 0
      000D27                       2654 __xinit__scaled:
      000D27 00 00                 2655 	.byte #0x00, #0x00	; 0
                                   2656 	.area CABS    (ABS,CODE)
