;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X ppc)
;--------------------------------------------------------
	.module main
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Flash_Write_Byte_PARM_2
	.globl _led_val
	.globl __MINUS
	.globl __DP
	.globl __ZZ
	.globl __YY
	.globl __XX
	.globl __WW
	.globl __VV
	.globl __UU
	.globl __TT
	.globl __SS
	.globl __RR
	.globl __QQ
	.globl __PP
	.globl __OO
	.globl __NN
	.globl __MM
	.globl __LL
	.globl __KK
	.globl __JJ
	.globl __II
	.globl __HH
	.globl __GG
	.globl __FF
	.globl __EE
	.globl __DD
	.globl __CC
	.globl __BB
	.globl __AA
	.globl __NV
	.globl _main
	.globl _Flash_Read
	.globl _Flash_Read_Byte
	.globl _Flash_Write
	.globl _Flash_Write_Byte
	.globl _Flash_Erase
	.globl _IAP_Disable
	.globl _IAP_Enable
	.globl _tm1638_read_byte
	.globl _ADC_ISR
	.globl _get_peak_voltage
	.globl _ADC_Init
	.globl _Init_ports
	.globl _Init_application
	.globl _Timer0_ISR
	.globl _Timer0_Delay1ms
	.globl _RunVirtualTimer
	.globl _Init_Timer
	.globl _DIO
	.globl _CLK
	.globl _STB
	.globl _MOSI
	.globl _P00
	.globl _MISO
	.globl _P01
	.globl _RXD_1
	.globl _P02
	.globl _P03
	.globl _STADC
	.globl _P04
	.globl _P05
	.globl _TXD
	.globl _P06
	.globl _RXD
	.globl _P07
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P10
	.globl _P11
	.globl _P12
	.globl _SCL
	.globl _P13
	.globl _SDA
	.globl _P14
	.globl _P15
	.globl _TXD_1
	.globl _P16
	.globl _P17
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _FE
	.globl _SM0
	.globl _P20
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EBOD
	.globl _EADC
	.globl _EA
	.globl _P30
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PBOD
	.globl _PADC
	.globl _I2CPX
	.globl _AA
	.globl _SI
	.globl _STO
	.globl _STA
	.globl _I2CEN
	.globl _CM_RL2
	.globl _TR2
	.globl _TF2
	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CLRPWM
	.globl _PWMF
	.globl _LOAD
	.globl _PWMRUN
	.globl _ADCHS0
	.globl _ADCHS1
	.globl _ADCHS2
	.globl _ADCHS3
	.globl _ETGSEL0
	.globl _ETGSEL1
	.globl _ADCS
	.globl _ADCF
	.globl _RI_1
	.globl _TI_1
	.globl _RB8_1
	.globl _TB8_1
	.globl _REN_1
	.globl _SM2_1
	.globl _SM1_1
	.globl _FE_1
	.globl _SM0_1
	.globl _EIPH1
	.globl _EIP1
	.globl _PMD
	.globl _PMEN
	.globl _PDTCNT
	.globl _PDTEN
	.globl _SCON_1
	.globl _EIPH
	.globl _AINDIDS
	.globl _SPDR
	.globl _SPSR
	.globl _SPCR2
	.globl _SPCR
	.globl _CAPCON4
	.globl _CAPCON3
	.globl _B
	.globl _EIP
	.globl _C2H
	.globl _C2L
	.globl _PIF
	.globl _PIPEN
	.globl _PINEN
	.globl _PICON
	.globl _ADCCON0
	.globl _C1H
	.globl _C1L
	.globl _C0H
	.globl _C0L
	.globl _ADCDLY
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ACC
	.globl _PWMCON1
	.globl _PIOCON0
	.globl _PWM3L
	.globl _PWM2L
	.globl _PWM1L
	.globl _PWM0L
	.globl _PWMPL
	.globl _PWMCON0
	.globl _FBD
	.globl _PNP
	.globl _PWM3H
	.globl _PWM2H
	.globl _PWM1H
	.globl _PWM0H
	.globl _PWMPH
	.globl _PSW
	.globl _ADCMPH
	.globl _ADCMPL
	.globl _PWM5L
	.globl _TH2
	.globl _PWM4L
	.globl _TL2
	.globl _RCMP2H
	.globl _RCMP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _TA
	.globl _PIOCON1
	.globl _RH3
	.globl _PWM5H
	.globl _RL3
	.globl _PWM4H
	.globl _T3CON
	.globl _ADCRH
	.globl _ADCRL
	.globl _I2ADDR
	.globl _I2CON
	.globl _I2TOC
	.globl _I2CLK
	.globl _I2STAT
	.globl _I2DAT
	.globl _SADDR_1
	.globl _SADEN_1
	.globl _SADEN
	.globl _IP
	.globl _PWMINTC
	.globl _IPH
	.globl _P2S
	.globl _P1SR
	.globl _P1M2
	.globl _P1S
	.globl _P1M1
	.globl _P0SR
	.globl _P0M2
	.globl _P0S
	.globl _P0M1
	.globl _P3
	.globl _IAPCN
	.globl _IAPFD
	.globl _P3SR
	.globl _P3M2
	.globl _P3S
	.globl _P3M1
	.globl _BODCON1
	.globl _WDCON
	.globl _SADDR
	.globl _IE
	.globl _IAPAH
	.globl _IAPAL
	.globl _IAPUEN
	.globl _IAPTRG
	.globl _BODCON0
	.globl _AUXR1
	.globl _P2
	.globl _CHPCON
	.globl _EIE1
	.globl _EIE
	.globl _SBUF_1
	.globl _SBUF
	.globl _SCON
	.globl _CKEN
	.globl _CKSWT
	.globl _CKDIV
	.globl _CAPCON2
	.globl _CAPCON1
	.globl _CAPCON0
	.globl _SFRS
	.globl _P1
	.globl _WKCON
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _scaled
	.globl _div_volt
	.globl _max_val
	.globl _data_ready
	.globl _adc_index
	.globl _read_data
	.globl _temp_v
	.globl _peak
	.globl _cnt_sample
	.globl _volt
	.globl _curr
	.globl _ADC_CHANNEL_SWITCHING
	.globl _ADCconversion
	.globl _adc_buffer
	.globl _i
	.globl _flag
	.globl _Flash_Read_PARM_3
	.globl _Flash_Read_PARM_2
	.globl _Flash_Write_PARM_3
	.globl _Flash_Write_PARM_2
	.globl _display_PARM_2
	.globl _writeData_PARM_2
	.globl _write_data
	.globl _LoadDispBuffer
	.globl _adc_value
	.globl _bb
	.globl _y
	.globl _m
	.globl _TimerElaspsed_200ms
	.globl _TimerElaspsed_100ms
	.globl _TimerElaspsed_1sec
	.globl _TimerElaspsed_1min
	.globl _key_press
	.globl _Cnt_200ms
	.globl _Cnt_100ms
	.globl _Cnt_1m
	.globl _Cnt_1s
	.globl _TM1638_Write
	.globl _writeCMD
	.globl _writeData
	.globl _display
	.globl _tm1638_read_key
	.globl _delay_ms
	.globl _ChangeDisplay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCON	=	0x008e
_WKCON	=	0x008f
_P1	=	0x0090
_SFRS	=	0x0091
_CAPCON0	=	0x0092
_CAPCON1	=	0x0093
_CAPCON2	=	0x0094
_CKDIV	=	0x0095
_CKSWT	=	0x0096
_CKEN	=	0x0097
_SCON	=	0x0098
_SBUF	=	0x0099
_SBUF_1	=	0x009a
_EIE	=	0x009b
_EIE1	=	0x009c
_CHPCON	=	0x009f
_P2	=	0x00a0
_AUXR1	=	0x00a2
_BODCON0	=	0x00a3
_IAPTRG	=	0x00a4
_IAPUEN	=	0x00a5
_IAPAL	=	0x00a6
_IAPAH	=	0x00a7
_IE	=	0x00a8
_SADDR	=	0x00a9
_WDCON	=	0x00aa
_BODCON1	=	0x00ab
_P3M1	=	0x00ac
_P3S	=	0x00ac
_P3M2	=	0x00ad
_P3SR	=	0x00ad
_IAPFD	=	0x00ae
_IAPCN	=	0x00af
_P3	=	0x00b0
_P0M1	=	0x00b1
_P0S	=	0x00b1
_P0M2	=	0x00b2
_P0SR	=	0x00b2
_P1M1	=	0x00b3
_P1S	=	0x00b3
_P1M2	=	0x00b4
_P1SR	=	0x00b4
_P2S	=	0x00b5
_IPH	=	0x00b7
_PWMINTC	=	0x00b7
_IP	=	0x00b8
_SADEN	=	0x00b9
_SADEN_1	=	0x00ba
_SADDR_1	=	0x00bb
_I2DAT	=	0x00bc
_I2STAT	=	0x00bd
_I2CLK	=	0x00be
_I2TOC	=	0x00bf
_I2CON	=	0x00c0
_I2ADDR	=	0x00c1
_ADCRL	=	0x00c2
_ADCRH	=	0x00c3
_T3CON	=	0x00c4
_PWM4H	=	0x00c4
_RL3	=	0x00c5
_PWM5H	=	0x00c5
_RH3	=	0x00c6
_PIOCON1	=	0x00c6
_TA	=	0x00c7
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCMP2L	=	0x00ca
_RCMP2H	=	0x00cb
_TL2	=	0x00cc
_PWM4L	=	0x00cc
_TH2	=	0x00cd
_PWM5L	=	0x00cd
_ADCMPL	=	0x00ce
_ADCMPH	=	0x00cf
_PSW	=	0x00d0
_PWMPH	=	0x00d1
_PWM0H	=	0x00d2
_PWM1H	=	0x00d3
_PWM2H	=	0x00d4
_PWM3H	=	0x00d5
_PNP	=	0x00d6
_FBD	=	0x00d7
_PWMCON0	=	0x00d8
_PWMPL	=	0x00d9
_PWM0L	=	0x00da
_PWM1L	=	0x00db
_PWM2L	=	0x00dc
_PWM3L	=	0x00dd
_PIOCON0	=	0x00de
_PWMCON1	=	0x00df
_ACC	=	0x00e0
_ADCCON1	=	0x00e1
_ADCCON2	=	0x00e2
_ADCDLY	=	0x00e3
_C0L	=	0x00e4
_C0H	=	0x00e5
_C1L	=	0x00e6
_C1H	=	0x00e7
_ADCCON0	=	0x00e8
_PICON	=	0x00e9
_PINEN	=	0x00ea
_PIPEN	=	0x00eb
_PIF	=	0x00ec
_C2L	=	0x00ed
_C2H	=	0x00ee
_EIP	=	0x00ef
_B	=	0x00f0
_CAPCON3	=	0x00f1
_CAPCON4	=	0x00f2
_SPCR	=	0x00f3
_SPCR2	=	0x00f3
_SPSR	=	0x00f4
_SPDR	=	0x00f5
_AINDIDS	=	0x00f6
_EIPH	=	0x00f7
_SCON_1	=	0x00f8
_PDTEN	=	0x00f9
_PDTCNT	=	0x00fa
_PMEN	=	0x00fb
_PMD	=	0x00fc
_EIP1	=	0x00fe
_EIPH1	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_SM0_1	=	0x00ff
_FE_1	=	0x00ff
_SM1_1	=	0x00fe
_SM2_1	=	0x00fd
_REN_1	=	0x00fc
_TB8_1	=	0x00fb
_RB8_1	=	0x00fa
_TI_1	=	0x00f9
_RI_1	=	0x00f8
_ADCF	=	0x00ef
_ADCS	=	0x00ee
_ETGSEL1	=	0x00ed
_ETGSEL0	=	0x00ec
_ADCHS3	=	0x00eb
_ADCHS2	=	0x00ea
_ADCHS1	=	0x00e9
_ADCHS0	=	0x00e8
_PWMRUN	=	0x00df
_LOAD	=	0x00de
_PWMF	=	0x00dd
_CLRPWM	=	0x00dc
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_P	=	0x00d0
_TF2	=	0x00cf
_TR2	=	0x00ca
_CM_RL2	=	0x00c8
_I2CEN	=	0x00c6
_STA	=	0x00c5
_STO	=	0x00c4
_SI	=	0x00c3
_AA	=	0x00c2
_I2CPX	=	0x00c0
_PADC	=	0x00be
_PBOD	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_P30	=	0x00b0
_EA	=	0x00af
_EADC	=	0x00ae
_EBOD	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_P20	=	0x00a0
_SM0	=	0x009f
_FE	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_P17	=	0x0097
_P16	=	0x0096
_TXD_1	=	0x0096
_P15	=	0x0095
_P14	=	0x0094
_SDA	=	0x0094
_P13	=	0x0093
_SCL	=	0x0093
_P12	=	0x0092
_P11	=	0x0091
_P10	=	0x0090
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_P07	=	0x0087
_RXD	=	0x0087
_P06	=	0x0086
_TXD	=	0x0086
_P05	=	0x0085
_P04	=	0x0084
_STADC	=	0x0084
_P03	=	0x0083
_P02	=	0x0082
_RXD_1	=	0x0082
_P01	=	0x0081
_MISO	=	0x0081
_P00	=	0x0080
_MOSI	=	0x0080
_STB	=	0x0095
_CLK	=	0x0096
_DIO	=	0x0097
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Cnt_1s::
	.ds 2
_Cnt_1m::
	.ds 2
_Cnt_100ms::
	.ds 2
_Cnt_200ms::
	.ds 2
_key_press::
	.ds 2
_TimerElaspsed_1min::
	.ds 1
_TimerElaspsed_1sec::
	.ds 1
_TimerElaspsed_100ms::
	.ds 1
_TimerElaspsed_200ms::
	.ds 1
_m::
	.ds 1
_y::
	.ds 1
_bb::
	.ds 1
_adc_value::
	.ds 2
_LoadDispBuffer::
	.ds 10
_write_data::
	.ds 16
_writeData_PARM_2:
	.ds 1
_display_PARM_2:
	.ds 1
_Flash_Write_PARM_2:
	.ds 3
_Flash_Write_PARM_3:
	.ds 1
_Flash_Read_PARM_2:
	.ds 3
_Flash_Read_PARM_3:
	.ds 1
_flag::
	.ds 1
_i::
	.ds 1
_ChangeDisplay_a_10000_219:
	.ds 2
_ChangeDisplay_b_10000_219:
	.ds 2
_ChangeDisplay_c_10000_219:
	.ds 2
_ChangeDisplay_d_10000_219:
	.ds 2
_ChangeDisplay_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_Flash_Write_Byte_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_adc_buffer::
	.ds 50
_ADCconversion::
	.ds 1
_ADC_CHANNEL_SWITCHING::
	.ds 1
_curr::
	.ds 2
_volt::
	.ds 2
_cnt_sample::
	.ds 1
_peak::
	.ds 4
_temp_v::
	.ds 2
_read_data::
	.ds 16
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_adc_index::
	.ds 2
_data_ready::
	.ds 1
_max_val::
	.ds 2
_div_volt::
	.ds 2
_scaled::
	.ds 2
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_Timer0_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ADC_ISR
; restartable atomic support routines
	.ds	2
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	src/main.c:25: volatile uint16_t adc_value = 0;
	clr	a
	mov	_adc_value,a
	mov	(_adc_value + 1),a
;	src/main.c:85: unsigned char write_data[USER_DATA_LEN] = {
	mov	_write_data,#0x11
	mov	(_write_data + 0x0001),#0x22
	mov	(_write_data + 0x0002),#0x33
	mov	(_write_data + 0x0003),#0x44
	mov	(_write_data + 0x0004),#0x55
	mov	(_write_data + 0x0005),#0x66
	mov	(_write_data + 0x0006),#0x77
	mov	(_write_data + 0x0007),#0x88
	mov	(_write_data + 0x0008),#0x99
	mov	(_write_data + 0x0009),#0xaa
	mov	(_write_data + 0x000a),#0xbb
	mov	(_write_data + 0x000b),#0xcc
	mov	(_write_data + 0x000c),#0xdd
	mov	(_write_data + 0x000d),#0xee
	mov	(_write_data + 0x000e),#0xff
	mov	(_write_data + 0x000f),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_Delay1ms'
;------------------------------------------------------------
;	src/main.c:105: void Timer0_Delay1ms() {
;	-----------------------------------------
;	 function Timer0_Delay1ms
;	-----------------------------------------
_Timer0_Delay1ms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:106: TMOD |= 0x01;      // Timer 0 Mode 1 (16bit)
	orl	_TMOD,#0x01
;	src/main.c:107: TL0 = 0x30;        // Load Timer 0 low byte
	mov	_TL0,#0x30
;	src/main.c:108: TH0 = 0xF8;        // Load Timer 0 high byte
	mov	_TH0,#0xf8
;	src/main.c:109: TR0 = 1;           // Start Timer 0
;	assignBit
	setb	_TR0
;	src/main.c:110: while (TF0 == 0);  // Wait for overflow
00101$:
	jnb	_TF0,00101$
;	src/main.c:111: TR0 = 0;           // Stop Timer 0
;	assignBit
	clr	_TR0
;	src/main.c:112: TF0 = 0;           // Clear Timer 0 overflow flag
;	assignBit
	clr	_TF0
;	src/main.c:113: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;	src/main.c:116: void Timer0_ISR(void) __interrupt(1)   // Vector 1 = Timer0
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	acc
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	src/main.c:119: Cnt_200ms++;
	inc	_Cnt_200ms
	clr	a
	cjne	a,_Cnt_200ms,00127$
	inc	(_Cnt_200ms + 1)
00127$:
;	src/main.c:120: if(Cnt_200ms>=75) //130
	mov	r6,_Cnt_200ms
	mov	r7,(_Cnt_200ms + 1)
	clr	c
	mov	a,r6
	subb	a,#0x4b
	mov	a,r7
	subb	a,#0x00
	jc	00102$
;	src/main.c:122: TimerElaspsed_200ms=1;
	mov	_TimerElaspsed_200ms,#0x01
;	src/main.c:123: Cnt_200ms=0;
	clr	a
	mov	_Cnt_200ms,a
	mov	(_Cnt_200ms + 1),a
00102$:
;	src/main.c:126: Cnt_1s++;  
	inc	_Cnt_1s
	clr	a
	cjne	a,_Cnt_1s,00129$
	inc	(_Cnt_1s + 1)
00129$:
;	src/main.c:127: if(Cnt_1s>=1000)   //650   
	mov	r6,_Cnt_1s
	mov	r7,(_Cnt_1s + 1)
	clr	c
	mov	a,r6
	subb	a,#0xe8
	mov	a,r7
	subb	a,#0x03
	jc	00104$
;	src/main.c:129: TimerElaspsed_1sec = 1;				     
	mov	_TimerElaspsed_1sec,#0x01
;	src/main.c:130: Cnt_1s=0; 
	clr	a
	mov	_Cnt_1s,a
	mov	(_Cnt_1s + 1),a
00104$:
;	src/main.c:133: Cnt_100ms++;
	inc	_Cnt_100ms
	clr	a
	cjne	a,_Cnt_100ms,00131$
	inc	(_Cnt_100ms + 1)
00131$:
;	src/main.c:134: if(Cnt_100ms>=1)//65 //16
	mov	r6,_Cnt_100ms
	mov	r7,(_Cnt_100ms + 1)
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jc	00106$
;	src/main.c:136: Cnt_100ms=0;
	clr	a
	mov	_Cnt_100ms,a
	mov	(_Cnt_100ms + 1),a
;	src/main.c:138: set_ADCCON0_ADCS;  
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	assignBit
	setb	_ADCS
;	src/main.c:139: TimerElaspsed_100ms=1;   
	mov	_TimerElaspsed_100ms,#0x01
00106$:
;	src/main.c:141: TH0 = 0xF8;     // Initial reload high byte
	mov	_TH0,#0xf8
;	src/main.c:142: TL0 = 0x30;     // Initial reload low byte 
	mov	_TL0,#0x30
;	src/main.c:146: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_application'
;------------------------------------------------------------
;	src/main.c:149: void Init_application(void)
;	-----------------------------------------
;	 function Init_application
;	-----------------------------------------
_Init_application:
;	src/main.c:151: T_SV[ADC_SAMPLE_INTERVAL_TIMER] = SV_ADC_SAMPLE_INTERVAL_TIME; 
	mov	(_T_SV + 0),#0x01
	mov	(_T_SV + 1),#0x00
;	src/main.c:152: T_SV[REFRESH_DISP_TIMER]                = SV_curr_disp_TIME;
	mov	((_T_SV + 0x0002) + 0),#0x64
	mov	((_T_SV + 0x0002) + 1),#0x00
;	src/main.c:153: T_SV[ADC_CH_TRIGGER_SV]	           = ADC_CH_TRIGGER;
	mov	((_T_SV + 0x0004) + 0),#0xd0
	mov	((_T_SV + 0x0004) + 1),#0x07
;	src/main.c:154: T_SV[TM1638_Read_Key_index]        = SV_TM1638_Read_Key;
	mov	((_T_SV + 0x0006) + 0),#0x64
	mov	((_T_SV + 0x0006) + 1),#0x00
;	src/main.c:156: T0P= ON;
	mov	_T0P,#0x01
;	src/main.c:157: T1P= ON;
	mov	_T1P,#0x01
;	src/main.c:158: T2P = ON;
	mov	_T2P,#0x01
;	src/main.c:159: T3P = ON;
	mov	_T3P,#0x01
;	src/main.c:160: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_ports'
;------------------------------------------------------------
;	src/main.c:163: void Init_ports(void)
;	-----------------------------------------
;	 function Init_ports
;	-----------------------------------------
_Init_ports:
;	src/main.c:165: P02_PUSHPULL_MODE;
	anl	_P0M1,#0xfb
	orl	_P0M2,#0x04
;	src/main.c:166: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
;	src/main.c:169: void ADC_Init(void)
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
;	src/main.c:229: ADCconversion = PROCESS_NEXT_CHANNEL;
	mov	dptr,#_ADCconversion
	mov	a,#0x03
	movx	@dptr,a
;	src/main.c:230: ADC_CHANNEL_SWITCHING = 1;
	mov	dptr,#_ADC_CHANNEL_SWITCHING
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:231: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_peak_voltage'
;------------------------------------------------------------
;	src/main.c:234: float get_peak_voltage(void)
;	-----------------------------------------
;	 function get_peak_voltage
;	-----------------------------------------
_get_peak_voltage:
;	src/main.c:236: max_val = 0;
	mov	dptr,#_max_val
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:239: for ( cnt_sample = 0; cnt_sample < NUM_SAMPLES; cnt_sample++)
	mov	dptr,#_cnt_sample
	movx	@dptr,a
00104$:
;	src/main.c:241: if (adc_buffer[cnt_sample] > max_val)
	mov	dptr,#_cnt_sample
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	mov	r6,a
	mov	r7,b
	add	a, #_adc_buffer
	mov	dpl,a
	mov	a,r7
	addc	a, #(_adc_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_max_val
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	subb	a,r5
	jnc	00105$
;	src/main.c:242: max_val = adc_buffer[cnt_sample];
	mov	a,r6
	add	a, #_adc_buffer
	mov	dpl,a
	mov	a,r7
	addc	a, #(_adc_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_max_val
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00105$:
;	src/main.c:239: for ( cnt_sample = 0; cnt_sample < NUM_SAMPLES; cnt_sample++)
	mov	dptr,#_cnt_sample
	movx	a,@dptr
	add	a, #0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x19,00127$
00127$:
	jc	00104$
;	src/main.c:249: return max_val;
	mov	dptr,#_max_val
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	pop	dph
	pop	dpl
;	src/main.c:250: }
	ljmp	___uint2fs
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_ISR'
;------------------------------------------------------------
;	src/main.c:255: void ADC_ISR(void) __interrupt(11)
;	-----------------------------------------
;	 function ADC_ISR
;	-----------------------------------------
_ADC_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	psw
	mov	psw,#0x00
;	src/main.c:257: clr_ADCCON0_ADCF;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	assignBit
	clr	_ADCF
;	src/main.c:259: if ( !data_ready)//hadc->Instance == ADC1 &&
	mov	dptr,#_data_ready
	movx	a,@dptr
	jnz	00107$
;	src/main.c:261: if (adc_index < NUM_SAMPLES)
	mov	dptr,#_adc_index
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x19
	mov	a,r7
	subb	a,#0x00
	jnc	00102$
;	src/main.c:263: adc_buffer[adc_index++] = (ADCRH << 4) | (ADCRL & 0x0F); //
	mov	dptr,#_adc_index
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_adc_index
	mov	a,#0x01
	add	a, r6
	movx	@dptr,a
	clr	a
	addc	a, r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a, #_adc_buffer
	mov	dpl,a
	mov	a,r7
	addc	a, #(_adc_buffer >> 8)
	mov	dph,a
	mov	r6,_ADCRH
	clr	a
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	r4,_ADCRL
	anl	ar4,#0x0f
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	src/main.c:267: if (adc_index >= NUM_SAMPLES)
	mov	dptr,#_adc_index
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x19
	mov	a,r7
	subb	a,#0x00
	jc	00107$
;	src/main.c:269: data_ready = 1;
	mov	dptr,#_data_ready
	mov	a,#0x01
	movx	@dptr,a
00107$:
;	src/main.c:273: }
	pop	psw
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'TM1638_Write'
;------------------------------------------------------------
;_data         Allocated to registers r7 
;i             Allocated to registers r6 
;------------------------------------------------------------
;	src/main.c:278: void TM1638_Write(uint8_t _data)
;	-----------------------------------------
;	 function TM1638_Write
;	-----------------------------------------
_TM1638_Write:
	mov	r7, dpl
;	src/main.c:281: P17_PUSHPULL_MODE;  // Set as output
	anl	_P1M1,#0x7f
	orl	_P1M2,#0x80
;	src/main.c:282: for(i=0;i<8;i++)
	mov	r6,#0x00
00105$:
;	src/main.c:284: CLK_OFF;
;	assignBit
	clr	_P16
;	src/main.c:285: if(_data&0x01)
	mov	a,r7
	jnb	acc.0,00102$
;	src/main.c:286: DIO_ON;
;	assignBit
	setb	_P17
	sjmp	00103$
00102$:
;	src/main.c:288: DIO_OFF;
;	assignBit
	clr	_P17
00103$:
;	src/main.c:290: __asm nop __endasm; // SDCC inline assembly for NOP
	nop	
;	src/main.c:291: _data>>=1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	src/main.c:292: CLK_ON;
;	assignBit
	setb	_P16
;	src/main.c:282: for(i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x08,00129$
00129$:
	jc	00105$
;	src/main.c:294: P17_QUASI_MODE;  // Restore bidirectional
	anl	_P1M1,#0x7f
	anl	_P1M2,#0x7f
;	src/main.c:295: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeCMD'
;------------------------------------------------------------
;cmd           Allocated to registers 
;------------------------------------------------------------
;	src/main.c:297: void writeCMD(uint8_t cmd)
;	-----------------------------------------
;	 function writeCMD
;	-----------------------------------------
_writeCMD:
;	src/main.c:299: STB_OFF;
;	assignBit
	clr	_P15
;	src/main.c:300: TM1638_Write(cmd);
	lcall	_TM1638_Write
;	src/main.c:301: STB_ON;
;	assignBit
	setb	_P15
;	src/main.c:302: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeData'
;------------------------------------------------------------
;_data         Allocated with name '_writeData_PARM_2'
;add           Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:304: void writeData(uint8_t add,uint8_t _data)
;	-----------------------------------------
;	 function writeData
;	-----------------------------------------
_writeData:
	mov	r7, dpl
;	src/main.c:306: writeCMD(0x44);//????,????
	mov	dpl, #0x44
	push	ar7
	lcall	_writeCMD
	pop	ar7
;	src/main.c:307: STB_OFF;
;	assignBit
	clr	_P15
;	src/main.c:308: TM1638_Write(0xc0|add);
	mov	a,#0xc0
	orl	a,r7
	mov	dpl,a
	lcall	_TM1638_Write
;	src/main.c:309: TM1638_Write(_data);
	mov	dpl, _writeData_PARM_2
	lcall	_TM1638_Write
;	src/main.c:310: STB_ON;
;	assignBit
	setb	_P15
;	src/main.c:311: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;pointFlash    Allocated with name '_display_PARM_2'
;number        Allocated to registers r5 r6 r7 
;j             Allocated to registers r4 
;segments      Allocated to registers r3 
;------------------------------------------------------------
;	src/main.c:315: void display(uint8_t *number,uint8_t pointFlash)//number???????,???1?10?
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	src/main.c:349: for(j = 0; j < 8; j++)
	mov	r4,#0x00
00105$:
;	src/main.c:352: uint8_t segments = led_val[number[j]];
	mov	a,r4
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dptr,#_led_val
	movc	a,@a+dptr
	mov	r3,a
;	src/main.c:355: if(pointFlash && j == 6)
	mov	a,_display_PARM_2
	jz	00102$
	cjne	r4,#0x06,00102$
;	src/main.c:357: segments |= 0x80;  // Set DP _bit
	orl	ar3,#0x80
00102$:
;	src/main.c:360: writeData(2*j,segments);
	mov	a,r4
	add	a,r4
	mov	dpl,a
	mov	_writeData_PARM_2,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_writeData
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:349: for(j = 0; j < 8; j++)
	inc	r4
	cjne	r4,#0x08,00131$
00131$:
	jc	00105$
;	src/main.c:364: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tm1638_read_byte'
;------------------------------------------------------------
;i             Allocated to registers r5 
;temp          Allocated to registers r6 r7 
;------------------------------------------------------------
;	src/main.c:367: uint16_t tm1638_read_byte(void) {
;	-----------------------------------------
;	 function tm1638_read_byte
;	-----------------------------------------
_tm1638_read_byte:
;	src/main.c:370: uint16_t temp=0;
	mov	r6,#0x00
	mov	r7,#0x00
;	src/main.c:372: P17_INPUT_MODE;  // Set as input
	orl	_P1M1,#0x80
	anl	_P1M2,#0x7f
;	src/main.c:373: for( i=0; i<8; i++ ) {
	mov	r5,#0x00
00105$:
;	src/main.c:374: temp>>=1;
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	src/main.c:375: CLK_OFF;
;	assignBit
	clr	_P16
;	src/main.c:376: delay_ms(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:378: if( DIO )
	jnb	_DIO,00102$
;	src/main.c:380: temp|=0x80;
	mov	ar4,r6
	orl	ar4,#0x80
	mov	ar6,r4
	mov	r7,#0x00
;	src/main.c:381: LED_1_ON;
;	assignBit
	clr	_P02
	sjmp	00103$
00102$:
;	src/main.c:384: LED_1_OFF;
;	assignBit
	setb	_P02
00103$:
;	src/main.c:386: CLK_ON;
;	assignBit
	setb	_P16
;	src/main.c:373: for( i=0; i<8; i++ ) {
	inc	r5
	cjne	r5,#0x08,00129$
00129$:
	jc	00105$
;	src/main.c:388: P17_QUASI_MODE;  // Restore quasi-mode
	anl	_P1M1,#0x7f
	anl	_P1M2,#0x7f
;	src/main.c:390: return temp;
	mov	dpl, r6
	mov	dph, r7
;	src/main.c:391: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tm1638_read_key'
;------------------------------------------------------------
;tmp           Allocated to registers r4 r5 
;key_value     Allocated to registers r6 r7 
;------------------------------------------------------------
;	src/main.c:395: uint16_t tm1638_read_key(void)
;	-----------------------------------------
;	 function tm1638_read_key
;	-----------------------------------------
_tm1638_read_key:
;	src/main.c:398: uint16_t tmp =0,key_value =0;
	mov	r6,#0x00
	mov	r7,#0x00
;	src/main.c:399: STB_OFF;
;	assignBit
	clr	_P15
;	src/main.c:400: delay_ms(5);
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	lcall	_delay_ms
;	src/main.c:401: TM1638_Write(0x42); 
	mov	dpl, #0x42
	lcall	_TM1638_Write
	pop	ar6
	pop	ar7
;	src/main.c:403: for(i=0;i<4;i++){
	mov	_i,#0x00
00102$:
;	src/main.c:404: tmp=tm1638_read_byte();
	push	ar7
	push	ar6
	lcall	_tm1638_read_byte
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
;	src/main.c:405: key_value |= (tmp << i);
	mov	b,_i
	inc	b
	sjmp	00119$
00118$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00119$:
	djnz	b,00118$
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
;	src/main.c:403: for(i=0;i<4;i++){
	inc	_i
	mov	a,#0x100 - 0x04
	add	a,_i
	jnc	00102$
;	src/main.c:407: STB_ON; 
;	assignBit
	setb	_P15
;	src/main.c:408: return  key_value;
	mov	dpl, r6
	mov	dph, r7
;	src/main.c:409: }	
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IAP_Enable'
;------------------------------------------------------------
;	src/main.c:415: void IAP_Enable(void)  { 
;	-----------------------------------------
;	 function IAP_Enable
;	-----------------------------------------
_IAP_Enable:
;	src/main.c:416: TA = 0Xaa; //CHPCON is TA protected
	mov	_TA,#0xaa
;	src/main.c:417: TA = 0x55;
	mov	_TA,#0x55
;	src/main.c:418: CHPCON |= 0x01; //IAPEN = 1, enable IAP mode
	orl	_CHPCON,#0x01
;	src/main.c:419: TA = 0xAA; 
	mov	_TA,#0xaa
;	src/main.c:420: TA = 0x55; 
	mov	_TA,#0x55
;	src/main.c:421: IAPUEN |= 0x01;
	orl	_IAPUEN,#0x01
;	src/main.c:422: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IAP_Disable'
;------------------------------------------------------------
;	src/main.c:423: void IAP_Disable(void) 
;	-----------------------------------------
;	 function IAP_Disable
;	-----------------------------------------
_IAP_Disable:
;	src/main.c:425: TA = 0xAA; 
	mov	_TA,#0xaa
;	src/main.c:426: TA = 0x55;
	mov	_TA,#0x55
;	src/main.c:427: IAPUEN &= ~0x01;
	anl	_IAPUEN,#0xfe
;	src/main.c:428: TA = 0Xaa; //CHPCON is TA protected
	mov	_TA,#0xaa
;	src/main.c:429: TA = 0x55;
	mov	_TA,#0x55
;	src/main.c:430: CHPCON &= ~0x01; //IAPEN = 0, disable IAP mode
	anl	_CHPCON,#0xfe
;	src/main.c:431: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms            Allocated to registers r6 r7 
;i             Allocated to registers r4 r5 
;j             Allocated to registers r2 r3 
;------------------------------------------------------------
;	src/main.c:435: void delay_ms(unsigned int ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6, dpl
	mov	r7, dph
;	src/main.c:437: for(i = 0; i < ms; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	src/main.c:438: for(j = 0; j < 1000; j++);
	mov	r2,#0xe8
	mov	r3,#0x03
00105$:
	dec	r2
	cjne	r2,#0xff,00138$
	dec	r3
00138$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	src/main.c:437: for(i = 0; i < ms; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	src/main.c:439: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Flash_Erase'
;------------------------------------------------------------
;addr          Allocated to registers r6 r7 
;------------------------------------------------------------
;	src/main.c:443: void Flash_Erase(unsigned int addr) {
;	-----------------------------------------
;	 function Flash_Erase
;	-----------------------------------------
_Flash_Erase:
	mov	r6, dpl
	mov	r7, dph
;	src/main.c:444: IAPAL = addr & 0xFF;
	mov	_IAPAL,r6
;	src/main.c:445: IAPAH = (addr >> 8) & 0xFF;
	mov	_IAPAH,r7
;	src/main.c:446: IAPFD = 0xFF;
	mov	_IAPFD,#0xff
;	src/main.c:447: IAPCN = 0x22; // Page Erase
	mov	_IAPCN,#0x22
;	src/main.c:448: TA = 0xAA; TA = 0x55; IAPTRG = 1;
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_IAPTRG,#0x01
;	src/main.c:449: while (IAPTRG);
00101$:
	mov	a,_IAPTRG
	jnz	00101$
;	src/main.c:450: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Flash_Write_Byte'
;------------------------------------------------------------
;value         Allocated with name '_Flash_Write_Byte_PARM_2'
;addr          Allocated to registers r6 r7 
;------------------------------------------------------------
;	src/main.c:453: void Flash_Write_Byte(unsigned int addr, unsigned char value) {
;	-----------------------------------------
;	 function Flash_Write_Byte
;	-----------------------------------------
_Flash_Write_Byte:
	mov	r6, dpl
	mov	r7, dph
;	src/main.c:454: IAPAL = addr & 0xFF;
	mov	_IAPAL,r6
;	src/main.c:455: IAPAH = (addr >> 8) & 0xFF;
	mov	_IAPAH,r7
;	src/main.c:456: IAPFD = value;
	mov	_IAPFD,_Flash_Write_Byte_PARM_2
;	src/main.c:457: IAPCN = 0x21; // Byte Program
	mov	_IAPCN,#0x21
;	src/main.c:458: TA = 0xAA; TA = 0x55; IAPTRG = 1;
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_IAPTRG,#0x01
;	src/main.c:459: while (IAPTRG);
00101$:
	mov	a,_IAPTRG
	jnz	00101$
;	src/main.c:460: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Flash_Write'
;------------------------------------------------------------
;buf           Allocated with name '_Flash_Write_PARM_2'
;len           Allocated with name '_Flash_Write_PARM_3'
;addr          Allocated to registers r6 r7 
;i             Allocated to registers r5 
;------------------------------------------------------------
;	src/main.c:463: void Flash_Write(unsigned int addr, unsigned char *buf, unsigned char len) {
;	-----------------------------------------
;	 function Flash_Write
;	-----------------------------------------
_Flash_Write:
	mov	r6, dpl
	mov	r7, dph
;	src/main.c:465: for(i = 0; i < len; i++) {
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r5
	subb	a,_Flash_Write_PARM_3
	jnc	00105$
;	src/main.c:466: Flash_Write_Byte(addr + i, buf[i]);
	mov	ar4,r5
	mov	r3,#0x00
	mov	a,r4
	add	a, r6
	mov	r4,a
	mov	a,r3
	addc	a, r7
	mov	r3,a
	mov	a,r5
	add	a, _Flash_Write_PARM_2
	mov	r0,a
	clr	a
	addc	a, (_Flash_Write_PARM_2 + 1)
	mov	r1,a
	mov	r2,(_Flash_Write_PARM_2 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_Flash_Write_Byte_PARM_2,a
	mov	dpl, r4
	mov	dph, r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_Flash_Write_Byte
	pop	ar5
	pop	ar6
	pop	ar7
;	src/main.c:465: for(i = 0; i < len; i++) {
	inc	r5
	sjmp	00103$
00105$:
;	src/main.c:468: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Flash_Read_Byte'
;------------------------------------------------------------
;addr          Allocated to registers r6 r7 
;------------------------------------------------------------
;	src/main.c:471: unsigned char Flash_Read_Byte(unsigned int addr) {
;	-----------------------------------------
;	 function Flash_Read_Byte
;	-----------------------------------------
_Flash_Read_Byte:
	mov	r6, dpl
	mov	r7, dph
;	src/main.c:472: IAPAL = addr & 0xFF;
	mov	_IAPAL,r6
;	src/main.c:473: IAPAH = (addr >> 8) & 0xFF;
	mov	_IAPAH,r7
;	src/main.c:474: IAPCN = 0x00; // Read
	mov	_IAPCN,#0x00
;	src/main.c:475: TA = 0xAA; TA = 0x55; IAPTRG = 1;
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_IAPTRG,#0x01
;	src/main.c:476: while (IAPTRG);
00101$:
	mov	a,_IAPTRG
	jnz	00101$
;	src/main.c:477: return IAPFD;
	mov	dpl, _IAPFD
;	src/main.c:478: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Flash_Read'
;------------------------------------------------------------
;buf           Allocated with name '_Flash_Read_PARM_2'
;len           Allocated with name '_Flash_Read_PARM_3'
;addr          Allocated to registers r6 r7 
;i             Allocated to registers r5 
;------------------------------------------------------------
;	src/main.c:481: void Flash_Read(unsigned int addr, unsigned char *buf, unsigned char len) {
;	-----------------------------------------
;	 function Flash_Read
;	-----------------------------------------
_Flash_Read:
	mov	r6, dpl
	mov	r7, dph
;	src/main.c:483: for(i = 0; i < len; i++) {
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r5
	subb	a,_Flash_Read_PARM_3
	jnc	00105$
;	src/main.c:484: buf[i] = Flash_Read_Byte(addr + i);
	mov	a,r5
	add	a, _Flash_Read_PARM_2
	mov	r2,a
	clr	a
	addc	a, (_Flash_Read_PARM_2 + 1)
	mov	r3,a
	mov	r4,(_Flash_Read_PARM_2 + 2)
	mov	ar1,r5
	mov	ar0,r1
	mov	r1,#0x00
	mov	a,r0
	add	a, r6
	mov	dpl,a
	mov	a,r1
	addc	a, r7
	mov	dph,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_Flash_Read_Byte
	mov	r1, dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	src/main.c:483: for(i = 0; i < len; i++) {
	inc	r5
	sjmp	00103$
00105$:
;	src/main.c:486: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	src/main.c:494: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c:497: Init_ports();
	lcall	_Init_ports
;	src/main.c:499: Init_Timer();
	lcall	_Init_Timer
;	src/main.c:500: Init_application(); 
	lcall	_Init_application
;	src/main.c:502: ADC_Init();
	lcall	_ADC_Init
;	src/main.c:504: TMOD &= 0xF0;   // Clear Timer0 bits
	anl	_TMOD,#0xf0
;	src/main.c:505: TMOD |= 0x01;   // Timer0 Mode1 (16-bit)
	orl	_TMOD,#0x01
;	src/main.c:507: TH0 = 0xF8;     // Initial reload high byte
	mov	_TH0,#0xf8
;	src/main.c:508: TL0 = 0x30;     // Initial reload low byte
	mov	_TL0,#0x30
;	src/main.c:510: ET0 = 1;        // Enable Timer0 interrupt
;	assignBit
	setb	_ET0
;	src/main.c:511: EA  = 1;        // Enable global interrupts
;	assignBit
	setb	_EA
;	src/main.c:512: TR0 = 1;        // Start Timer0
;	assignBit
	setb	_TR0
;	src/main.c:519: P15_PUSHPULL_MODE;  // STB
	anl	_P1M1,#0xdf
	orl	_P1M2,#0x20
;	src/main.c:520: P16_PUSHPULL_MODE;  // CLK
	anl	_P1M1,#0xbf
	orl	_P1M2,#0x40
;	src/main.c:522: P17_QUASI_MODE;
	anl	_P1M1,#0x7f
	anl	_P1M2,#0x7f
;	src/main.c:525: STB_ON;
;	assignBit
	setb	_P15
;	src/main.c:526: CLK_ON;
;	assignBit
	setb	_P16
;	src/main.c:527: DIO_ON;
;	assignBit
	setb	_P17
;	src/main.c:529: writeCMD(0x89);		
	mov	dpl, #0x89
	lcall	_writeCMD
;	src/main.c:530: writeCMD(0x40);		
	mov	dpl, #0x40
	lcall	_writeCMD
;	src/main.c:531: STB_OFF;
;	assignBit
	clr	_P15
;	src/main.c:532: TM1638_Write(0xC0);		
	mov	dpl, #0xc0
	lcall	_TM1638_Write
;	src/main.c:534: for(m=0; m<3; m++)   // blink 3 times
	mov	_m,#0x00
00131$:
;	src/main.c:537: for(y=0; y<16; y++) TM1638_Write(0xFF);
	mov	_y,#0x00
00127$:
	mov	dpl, #0xff
	lcall	_TM1638_Write
	inc	_y
	mov	a,#0x100 - 0x10
	add	a,_y
	jnc	00127$
;	src/main.c:538: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	src/main.c:541: for(y=0; y<16; y++) TM1638_Write(0x00);
	mov	_y,#0x00
00129$:
	mov	dpl, #0x00
	lcall	_TM1638_Write
	inc	_y
	mov	a,#0x100 - 0x10
	add	a,_y
	jnc	00129$
;	src/main.c:542: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	src/main.c:534: for(m=0; m<3; m++)   // blink 3 times
	inc	_m
	mov	a,#0x100 - 0x03
	add	a,_m
	jnc	00131$
;	src/main.c:545: STB_ON;
;	assignBit
	setb	_P15
;	src/main.c:547: key_press=0;
	clr	a
	mov	_key_press,a
	mov	(_key_press + 1),a
;	src/main.c:562: while(1) 
00125$:
;	src/main.c:566: RunVirtualTimer();
	lcall	_RunVirtualTimer
;	src/main.c:569: if( T1E == ELAPSED)
	mov	a,#0x03
	cjne	a,_T1E,00105$
;	src/main.c:571: T1P = RESTART;
	mov	_T1P,#0x04
;	src/main.c:572: ChangeDisplay();
	lcall	_ChangeDisplay
00105$:
;	src/main.c:577: if( T3E == ELAPSED)
	mov	a,#0x03
	cjne	a,_T3E,00107$
;	src/main.c:579: T3P = RESTART;
	mov	_T3P,#0x04
;	src/main.c:580: key_press	=tm1638_read_key();
	lcall	_tm1638_read_key
	mov	_key_press,dpl
	mov	(_key_press + 1),dph
00107$:
;	src/main.c:586: if( T2E == ELAPSED)
	mov	a,#0x03
	cjne	a,_T2E,00109$
;	src/main.c:588: T2P = RESTART;
	mov	_T2P,#0x04
;	src/main.c:594: ADC_CHANNEL_SWITCHING = 2;
	mov	dptr,#_ADC_CHANNEL_SWITCHING
	mov	a,#0x02
	movx	@dptr,a
;	src/main.c:596: P0M1 |= 0x20;     // P0.5 input mode
	orl	_P0M1,#0x20
;	src/main.c:597: P0M2 &= ~0x20;    // set to analog
	anl	_P0M2,#0xdf
;	src/main.c:598: AINDIDS |= 0x10;  // disable digital input buffer on P0.5
	orl	_AINDIDS,#0x10
;	src/main.c:601: ADCCON0 &= ~0x0F; // clear channel select
	anl	_ADCCON0,#0xf0
;	src/main.c:602: ADCCON0 |= 0x04;  // AIN4
	orl	_ADCCON0,#0x04
;	src/main.c:605: ADCCON1 &= ~0x30; // 00 = AVDD
	anl	_ADCCON1,#0xcf
;	src/main.c:608: ADCCON1 &= ~0x07;
	anl	_ADCCON1,#0xf8
;	src/main.c:609: ADCCON1 |= 0x05;
	orl	_ADCCON1,#0x05
;	src/main.c:612: ADCCON0 |= 0x80;  // ADCEN = 1
	orl	_ADCCON0,#0x80
;	src/main.c:615: EADC = 1; // Enable ADC interrupt
;	assignBit
	setb	_EADC
;	src/main.c:616: EA   = 1; // Enable global interrupt
;	assignBit
	setb	_EA
;	src/main.c:619: ADCS = 1;
;	assignBit
	setb	_ADCS
00109$:
;	src/main.c:661: if( T0E == ELAPSED)
	mov	a,#0x03
	cjne	a,_T0E,00125$
;	src/main.c:664: T0P=RESTART;	
	mov	_T0P,#0x04
;	src/main.c:666: if(data_ready && ADC_CHANNEL_SWITCHING == 2)
	mov	dptr,#_data_ready
	movx	a,@dptr
	jnz	00248$
	ljmp	00119$
00248$:
	mov	dptr,#_ADC_CHANNEL_SWITCHING
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00249$
	sjmp	00250$
00249$:
	ljmp	00119$
00250$:
;	src/main.c:668: peak = get_peak_voltage();
	lcall	_get_peak_voltage
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	dptr,#_peak
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:685: if(peak > 70)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b, #0x8c
	mov	a, #0x42
	lcall	___fslt
	mov	r3, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	jnz	00251$
	ljmp	00111$
00251$:
;	src/main.c:687: curr= ((0.0059f * peak) - 0.3f)*10;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x54ca
	mov	b, #0xc1
	mov	a, #0x3b
	lcall	___fsmul
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x9a
	push	acc
	dec	a
	push	acc
	push	acc
	mov	a,#0x3e
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fssub
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b, #0x20
	mov	a, #0x41
	lcall	___fsmul
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fs2uint
	mov	a, dpl
	mov	b, dph
	mov	dptr,#_curr
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	sjmp	00112$
00111$:
;	src/main.c:693: curr =0;
	mov	dptr,#_curr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00112$:
;	src/main.c:696: adc_index = 0;
	mov	dptr,#_adc_index
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:697: data_ready = 0;
	mov	dptr,#_data_ready
	movx	@dptr,a
;	src/main.c:699: ADCconversion = PROCESS_NEXT_CHANNEL;						
	mov	dptr,#_ADCconversion
	mov	a,#0x03
	movx	@dptr,a
	ljmp	00125$
00119$:
;	src/main.c:704: else if(data_ready && ADC_CHANNEL_SWITCHING == 1)
	mov	dptr,#_data_ready
	movx	a,@dptr
	jnz	00252$
	ljmp	00125$
00252$:
	mov	dptr,#_ADC_CHANNEL_SWITCHING
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00253$
	sjmp	00254$
00253$:
	ljmp	00125$
00254$:
;	src/main.c:706: peak = get_peak_voltage();
	lcall	_get_peak_voltage
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	dptr,#_peak
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:709: volt = (0.208 * peak) - 1.28;				
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xfdf4
	mov	b, #0x54
	mov	a, #0x3e
	lcall	___fsmul
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x0a
	push	acc
	mov	a,#0xd7
	push	acc
	mov	a,#0xa3
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fssub
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fs2uint
	mov	r6, dpl
	mov	r7, dph
	mov	dptr,#_volt
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:710: if(volt<100)	
	clr	c
	mov	a,r6
	subb	a,#0x64
	mov	a,r7
	subb	a,#0x00
	jnc	00114$
;	src/main.c:712: volt=0;
	mov	dptr,#_volt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00114$:
;	src/main.c:721: adc_index = 0;
	mov	dptr,#_adc_index
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:722: data_ready = 0;
	mov	dptr,#_data_ready
	movx	@dptr,a
;	src/main.c:723: peak =0;	
	mov	dptr,#_peak
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:724: ADCconversion = PROCESS_NEXT_CHANNEL;						
	mov	dptr,#_ADCconversion
	mov	a,#0x03
	movx	@dptr,a
;	src/main.c:730: }
	ljmp	00125$
;------------------------------------------------------------
;Allocation info for local variables in function 'ChangeDisplay'
;------------------------------------------------------------
;a             Allocated with name '_ChangeDisplay_a_10000_219'
;b             Allocated with name '_ChangeDisplay_b_10000_219'
;c             Allocated with name '_ChangeDisplay_c_10000_219'
;d             Allocated with name '_ChangeDisplay_d_10000_219'
;e             Allocated to registers 
;f             Allocated with name '_ChangeDisplay_sloc0_1_0'
;g             Allocated to registers r6 
;h             Allocated to registers r2 
;sloc0         Allocated with name '_ChangeDisplay_sloc0_1_0'
;------------------------------------------------------------
;	src/main.c:734: void ChangeDisplay(void)
;	-----------------------------------------
;	 function ChangeDisplay
;	-----------------------------------------
_ChangeDisplay:
;	src/main.c:755: volt = key_press;//peak;////;
	mov	r6,_key_press
	mov	r7,(_key_press + 1)
	mov	dptr,#_volt
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/main.c:756: a = (volt / 1000) % 10;
	mov	__divuint_PARM_2,#0xe8
	mov	(__divuint_PARM_2 + 1),#0x03
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	r4, dpl
	pop	ar6
	pop	ar7
	mov	b,#0x0a
	mov	a,r4
	div	ab
	mov	r4,b
	mov	_ChangeDisplay_a_10000_219,r4
;	src/main.c:757: b=(volt / 100)  % 10;  // Hundreds
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r3, dpl
	pop	ar6
	pop	ar7
	mov	_ChangeDisplay_b_10000_219,r3
;	src/main.c:758: c=(volt / 10)   % 10;  // Tens
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2, dpl
	pop	ar6
	pop	ar7
	mov	_ChangeDisplay_c_10000_219,r2
;	src/main.c:759: d=volt % 10;          // Units
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	__moduint
	mov	r6, dpl
	mov	_ChangeDisplay_d_10000_219,r6
;	src/main.c:764: if(curr<100)
	mov	dptr,#_curr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r5
	subb	a,#0x64
	mov	a,r7
	subb	a,#0x00
	jnc	00102$
;	src/main.c:766: f = _NV;	 
	mov	_ChangeDisplay_sloc0_1_0,#0x0a
;	src/main.c:767: g=(curr / 10)   % 10;  // Tens
	mov	ar6,r5
	mov	b,#0x0a
	mov	a,r6
	div	ab
	mov	b,#0x0a
	div	ab
	mov	r6,b
;	src/main.c:768: h=curr % 10;          // Units
	mov	ar2,r5
	mov	b,#0x0a
	mov	a,r2
	div	ab
	mov	r2,b
	sjmp	00103$
00102$:
;	src/main.c:772: f=(curr / 100)  % 10; 
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl, r5
	mov	dph, r7
	push	ar7
	push	ar5
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r3, dpl
	pop	ar5
	pop	ar7
	mov	_ChangeDisplay_sloc0_1_0,r3
;	src/main.c:773: g=(curr / 10)   % 10;  // Tens
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl, r5
	mov	dph, r7
	push	ar7
	push	ar5
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r3, dpl
	pop	ar5
	pop	ar7
	mov	ar6,r3
;	src/main.c:774: h=curr % 10;          // Units	 
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, r5
	mov	dph, r7
	push	ar6
	lcall	__moduint
	mov	r5, dpl
	pop	ar6
	mov	ar2,r5
00103$:
;	src/main.c:798: LoadDispBuffer[0]=a;
	mov	r4,_ChangeDisplay_a_10000_219
	mov	_LoadDispBuffer,r4
;	src/main.c:799: LoadDispBuffer[1]=b;      
	mov	r3,_ChangeDisplay_b_10000_219
	mov	(_LoadDispBuffer + 0x0001),r3
;	src/main.c:800: LoadDispBuffer[2]=c;
	mov	r7,_ChangeDisplay_c_10000_219
	mov	(_LoadDispBuffer + 0x0002),r7
;	src/main.c:801: LoadDispBuffer[3]=d;
	mov	r7,_ChangeDisplay_d_10000_219
	mov	(_LoadDispBuffer + 0x0003),r7
;	src/main.c:802: LoadDispBuffer[4]=e; 
	mov	(_LoadDispBuffer + 0x0004),#0x0b
;	src/main.c:803: LoadDispBuffer[5]=f;
	mov	r7,_ChangeDisplay_sloc0_1_0
	mov	(_LoadDispBuffer + 0x0005),r7
;	src/main.c:804: LoadDispBuffer[6]=g;
	mov	(_LoadDispBuffer + 0x0006),r6
;	src/main.c:805: LoadDispBuffer[7]=h;  
	mov	(_LoadDispBuffer + 0x0007),r2
;	src/main.c:820: display(LoadDispBuffer,1);
	mov	_display_PARM_2,#0x01
	mov	dptr,#_LoadDispBuffer
	mov	b, #0x40
;	src/main.c:821: }
	ljmp	_display
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
__NV:
	.db #0x0a	; 10
	.area CSEG    (CODE)
	.area CONST   (CODE)
__AA:
	.db #0x0b	; 11
	.area CSEG    (CODE)
	.area CONST   (CODE)
__BB:
	.db #0x0c	; 12
	.area CSEG    (CODE)
	.area CONST   (CODE)
__CC:
	.db #0x0d	; 13
	.area CSEG    (CODE)
	.area CONST   (CODE)
__DD:
	.db #0x0e	; 14
	.area CSEG    (CODE)
	.area CONST   (CODE)
__EE:
	.db #0x0f	; 15
	.area CSEG    (CODE)
	.area CONST   (CODE)
__FF:
	.db #0x10	; 16
	.area CSEG    (CODE)
	.area CONST   (CODE)
__GG:
	.db #0x11	; 17
	.area CSEG    (CODE)
	.area CONST   (CODE)
__HH:
	.db #0x12	; 18
	.area CSEG    (CODE)
	.area CONST   (CODE)
__II:
	.db #0x13	; 19
	.area CSEG    (CODE)
	.area CONST   (CODE)
__JJ:
	.db #0x14	; 20
	.area CSEG    (CODE)
	.area CONST   (CODE)
__KK:
	.db #0x15	; 21
	.area CSEG    (CODE)
	.area CONST   (CODE)
__LL:
	.db #0x16	; 22
	.area CSEG    (CODE)
	.area CONST   (CODE)
__MM:
	.db #0x17	; 23
	.area CSEG    (CODE)
	.area CONST   (CODE)
__NN:
	.db #0x18	; 24
	.area CSEG    (CODE)
	.area CONST   (CODE)
__OO:
	.db #0x19	; 25
	.area CSEG    (CODE)
	.area CONST   (CODE)
__PP:
	.db #0x1a	; 26
	.area CSEG    (CODE)
	.area CONST   (CODE)
__QQ:
	.db #0x1b	; 27
	.area CSEG    (CODE)
	.area CONST   (CODE)
__RR:
	.db #0x1c	; 28
	.area CSEG    (CODE)
	.area CONST   (CODE)
__SS:
	.db #0x1d	; 29
	.area CSEG    (CODE)
	.area CONST   (CODE)
__TT:
	.db #0x1e	; 30
	.area CSEG    (CODE)
	.area CONST   (CODE)
__UU:
	.db #0x1f	; 31
	.area CSEG    (CODE)
	.area CONST   (CODE)
__VV:
	.db #0x20	; 32
	.area CSEG    (CODE)
	.area CONST   (CODE)
__WW:
	.db #0x21	; 33
	.area CSEG    (CODE)
	.area CONST   (CODE)
__XX:
	.db #0x22	; 34
	.area CSEG    (CODE)
	.area CONST   (CODE)
__YY:
	.db #0x23	; 35
	.area CSEG    (CODE)
	.area CONST   (CODE)
__ZZ:
	.db #0x24	; 36
	.area CSEG    (CODE)
	.area CONST   (CODE)
__DP:
	.db #0x25	; 37
	.area CSEG    (CODE)
	.area CONST   (CODE)
__MINUS:
	.db #0x26	; 38
	.area CSEG    (CODE)
	.area CONST   (CODE)
_led_val:
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6d	; 109	'm'
	.db #0x7d	; 125
	.db #0x07	; 7
	.db #0x7f	; 127
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x77	; 119	'w'
	.db #0x7c	; 124
	.db #0x39	; 57	'9'
	.db #0x5e	; 94
	.db #0x79	; 121	'y'
	.db #0x71	; 113	'q'
	.db #0x3d	; 61
	.db #0x76	; 118	'v'
	.db #0x30	; 48	'0'
	.db #0x1e	; 30
	.db #0x75	; 117	'u'
	.db #0x38	; 56	'8'
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x5c	; 92
	.db #0x73	; 115	's'
	.db #0x67	; 103	'g'
	.db #0x50	; 80	'P'
	.db #0x6d	; 109	'm'
	.db #0x78	; 120	'x'
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x64	; 100	'd'
	.db #0x6e	; 110	'n'
	.db #0x5b	; 91
	.db #0x80	; 128
	.db #0x40	; 64
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__adc_index:
	.byte #0x00, #0x00	; 0
__xinit__data_ready:
	.db #0x00	; 0
__xinit__max_val:
	.byte #0x00, #0x00	; 0
__xinit__div_volt:
	.byte #0x00, #0x00	; 0
__xinit__scaled:
	.byte #0x00, #0x00	; 0
	.area CABS    (ABS,CODE)
