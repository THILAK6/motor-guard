
#include "main.h"
// #include "I2C_ecu.h"
#include "Virtual_Timer.h"

#include <stdio.h>

 
extern uint16_t     T_SV[MAX_TIMER];
extern uint16_t     T_PV[MAX_TIMER];
extern unsigned char  T0P,T1P, T2P, T3P, T4P, T5P, T6P, T7P, T8P, T9P, T10P;
extern unsigned char  T0E,T1E, T2E, T3E, T4E, T5E, T6E, T7E, T8E, T9E, T10E; 

 uint16_t  Cnt_1s,Cnt_1m,Cnt_100ms,Cnt_200ms,key_press;
 uint8_t   TimerElaspsed_1min,TimerElaspsed_1sec,TimerElaspsed_100ms,TimerElaspsed_200ms;


__sbit __at (0x95) STB; // P1^5
__sbit __at (0x96) CLK; // P1^6
__sbit __at (0x97) DIO; // P1^7


uint8_t m,y;
unsigned char bb,i;
volatile uint16_t adc_value = 0;

char LoadDispBuffer[10];
const unsigned char _NV=10,_AA=11,_BB=12,_CC=13,_DD=14,_EE=15,_FF=16;
const unsigned char _GG=17,_HH=18,_II=19,_JJ=20,_KK=21,_LL=22;
const unsigned char _MM=23,_NN=24,_OO=25,_PP=26,_QQ=27,_RR=28;
const unsigned char _SS=29,_TT=30,_UU=31,_VV=32,_WW=33,_XX=34;
const unsigned char _YY=35,_ZZ=36,_DP=37,_MINUS=38;

#define NUM_SAMPLES 25//45//20
#define VREF 5.0f
#define ADC_RES 4095.0f

#define P02_PUSHPULL_MODE  (P0M1 &= ~0x04, P0M2 |= 0x04)
#define P17_PUSHPULL_MODE  (P1M1 &= ~0x80, P1M2 |= 0x80)
#define P17_QUASI_MODE     (P1M1 &= ~0x80, P1M2 &= ~0x80)
#define P17_INPUT_MODE     (P1M1 |= 0x80, P1M2 &= ~0x80)
#define P15_PUSHPULL_MODE  (P1M1 &= ~0x20, P1M2 |= 0x20)
#define P16_PUSHPULL_MODE  (P1M1 &= ~0x40, P1M2 |= 0x40)

volatile __xdata uint16_t adc_buffer[NUM_SAMPLES];
volatile __xdata uint16_t adc_index = 0;
volatile __xdata uint8_t data_ready = 0,ADCconversion,ADC_CHANNEL_SWITCHING;

__xdata uint16_t curr,volt;
__xdata uint8_t cnt_sample;

__xdata float peak;
__xdata uint16_t max_val = 0,temp_v,div_volt=0;
__xdata uint16_t scaled =0; 




const unsigned char led_val[40]= {
/*  0     1     2     3     4     5     6     7     8     9      NV */
    0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F,  0x00,
/*      A     B     C     D     E     F     G     */
      0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71, 0x3D, 
/*  H     I     J     K     L     M     N     O     P     Q     R     S     */
    0x76, 0x30, 0x1E, 0x75, 0x38, 0x55, 0x54, 0x5C, 0x73, 0x67, 0x50, 0x6D, 
/*  T     U     V     W     X     Y     Z      DP    Minus*/
    0x78, 0x3E, 0x1C, 0x1D, 0x64, 0x6E, 0x5B,  0x80 , 0x40	

};


#define PROCESS_NEXT_CHANNEL       3
#define PROCESSED                  4


	
#define	DATA_COMMAND	0X40
#define	DISP_COMMAND	0x80
#define	ADDR_COMMAND	0XC0		

#define USER_DATA_ADDR     0x3C00     // Page-aligned flash address (last 1KB page)
#define USER_DATA_LEN      16
#define WRITTEN_FLAG_ADDR  (USER_DATA_ADDR + USER_DATA_LEN)  // Right after data
#define WRITTEN_FLAG_VALUE 0xA5
unsigned char write_data[USER_DATA_LEN] = {
    0x11, 0x22, 0x33, 0x44,
    0x55, 0x66, 0x77, 0x88,
    0x99, 0xAA, 0xBB, 0xCC,
    0xDD, 0xEE, 0xFF, 0x00
};

__xdata unsigned char read_data[USER_DATA_LEN];

												 
void TM1638_Init(void);
void TM1638_Write(uint8_t _data);
void writeCMD(uint8_t cmd);
void writeData(uint8_t add,uint8_t _data);
void display(uint8_t *number,uint8_t pointFlash);//number???????,???1?10?												 
		void delay_ms(unsigned int ms);


													 
//----------------------------------------------------------------------------------------------//
void Timer0_Delay1ms() {
    TMOD |= 0x01;      // Timer 0 Mode 1 (16bit)
    TL0 = 0x30;        // Load Timer 0 low byte
    TH0 = 0xF8;        // Load Timer 0 high byte
    TR0 = 1;           // Start Timer 0
    while (TF0 == 0);  // Wait for overflow
    TR0 = 0;           // Stop Timer 0
    TF0 = 0;           // Clear Timer 0 overflow flag
}


void Timer0_ISR(void) __interrupt(1)   // Vector 1 = Timer0
{	
         
       Cnt_200ms++;
       if(Cnt_200ms>=75) //130
			 {
        TimerElaspsed_200ms=1;
        Cnt_200ms=0;
        } 
       
			 Cnt_1s++;  
			 if(Cnt_1s>=1000)   //650   
			 { 					      	 	                                  
				      TimerElaspsed_1sec = 1;				     
				      Cnt_1s=0; 
			} 
			 
			 Cnt_100ms++;
       if(Cnt_100ms>=1)//65 //16
			 {
          Cnt_100ms=0;
				 
					 set_ADCCON0_ADCS;  
					TimerElaspsed_100ms=1;   
       } 
						TH0 = 0xF8;     // Initial reload high byte
             TL0 = 0x30;     // Initial reload low byte 
			

		
}

//----------------------------------------------------------------------------------------------//
void Init_application(void)
{
	T_SV[ADC_SAMPLE_INTERVAL_TIMER] = SV_ADC_SAMPLE_INTERVAL_TIME; 
  T_SV[REFRESH_DISP_TIMER]                = SV_curr_disp_TIME;
  T_SV[ADC_CH_TRIGGER_SV]	           = ADC_CH_TRIGGER;
	T_SV[TM1638_Read_Key_index]        = SV_TM1638_Read_Key;

  T0P= ON;
	T1P= ON;
	T2P = ON;
	T3P = ON;
}

//----------------------------------------------------------------------------------------------//
void Init_ports(void)
{
	P02_PUSHPULL_MODE;
}

// Initialize ADC on P0.6 (AIN3), disable digital/UART
void ADC_Init(void)
{
//    // Disable UART1 (optional, safe)
//    SCON_1 = 0x00;     // UART1 off (P0.6 default TX)
//    // Set P0.6 to analog input
//    P0M1 |= 0x80;      // Input mode
//    P0M2 &= ~0x80;     // Analog mode
//    AUXR1 &= ~0x04;       // Set P0.6 to low-speed mode (important for ADC)
//    ADCCON0 = 0x02;       // AIN3
//    ADCCON1 = 0x30;       // Fsys/2, 12_bit
//	  ADCCON2|=0X0E;  
//    ADCCON0 |= 0x80;      // Enable ADC
//    set_EADC;          // Enable ADC _interrupt
//    set_EA ;            // Enable global interrupts
//	      set_ADCCON1_ADCEN;
//	      clr_ADCCON0_ADCF;
//        set_ADCCON0_ADCS; 
	
//	    // Keep P0.6 analog-only (AIN3)
//    SCON_1 = 0x00;          // make sure UART1 is off (P0.6 is TX by default)
//	  P0M1 |= 0x40;    //0x40       // P0.6 input
//    P0M2 &= ~0x40;    //0x40      // P0.6 analog
//    AUXR1 &= ~0x04;         // low-speed mode for P0.6 (better ADC accuracy)

//    // ADC: channel = AIN3, 12-bit, Fadc = Fsys/2
//    ADCCON0 = 0x03;         // CHS=3 (AIN3)
//    ADCCON1 = 0x50;         // [7:6]=01 (div2), [4]=1 (12-bit), [0]=0 (single-shot)
//    ADCCON0 |= 0x80;        // ADEN=1 (enable ADC)

//    // Interrupts
//    EADC = 1;               // ADC interrupt enable
//    EA = 1;                 // global IE
//	
//		      set_ADCCON1_ADCEN;
//	      clr_ADCCON0_ADCF;
//        set_ADCCON0_ADCS; 


//    SCON_1 = 0x00;          // make sure UART1 is off (P0.6 is TX by default)

    // Configure P0.5 as analog input
//    P0M1 |= 0x20;           // set P0.5 as input
//    P0M2 &= ~0x20;          // disable push-pull
//    AUXR1 &= ~0x04;         // low-speed mode for P0.5 (better ADC accuracy)

//    // ADC: channel = AIN4 (P0.5), 12-bit, Fadc = Fsys/2
//    ADCCON0 = 0x04;         // CHS=4 (AIN4)
//    ADCCON1 = 0x50;         // [7:6]=01 (Fsys/2), [4]=1 (12-bit), [0]=0 (single-shot)
//    set_ADCCON1_ADCEN;      // enable ADC

//    // Interrupts
//    EADC = 1;               // ADC interrupt enable
//    EA = 1;                 // global interrupt enable

//    // (optional: start first conversion)
//    clr_ADCCON0_ADCF;
//    set_ADCCON0_ADCS;



ADCconversion = PROCESS_NEXT_CHANNEL;
	ADC_CHANNEL_SWITCHING = 1;
}


float get_peak_voltage(void)
{
     max_val = 0;
	

    for ( cnt_sample = 0; cnt_sample < NUM_SAMPLES; cnt_sample++)
    {
        if (adc_buffer[cnt_sample] > max_val)
            max_val = adc_buffer[cnt_sample];
    }

		
		
   // return max_val;// - 1650; //current
		
		return max_val;
}



// ADC Interrupt Service Routine
void ADC_ISR(void) __interrupt(11)
{
     clr_ADCCON0_ADCF;
	
    if ( !data_ready)//hadc->Instance == ADC1 &&
    {
        if (adc_index < NUM_SAMPLES)
        {
            adc_buffer[adc_index++] = (ADCRH << 4) | (ADCRL & 0x0F); //
					//set_ADCCON0_ADCS; 
        }

        if (adc_index >= NUM_SAMPLES)
        {
						data_ready = 1;
        }
    }

}




void TM1638_Write(uint8_t _data)
{
	uint8_t i;
	P17_PUSHPULL_MODE;  // Set as output
	for(i=0;i<8;i++)
	{
		CLK_OFF;
		if(_data&0x01)
			DIO_ON;
		else
			DIO_OFF;
		// _nop_(); // Keil intrinsic, not available in SDCC
		__asm nop __endasm; // SDCC inline assembly for NOP
		_data>>=1;
		CLK_ON;
	}
	P17_QUASI_MODE;  // Restore bidirectional
}

void writeCMD(uint8_t cmd)
{
	STB_OFF;
	TM1638_Write(cmd);
	STB_ON;
}

void writeData(uint8_t add,uint8_t _data)
{
	writeCMD(0x44);//????,????
	STB_OFF;
	TM1638_Write(0xc0|add);
	TM1638_Write(_data);
	STB_ON;
}



void display(uint8_t *number,uint8_t pointFlash)//number???????,???1?10?
{
	////////////************start for development board******************
//	int i;
//	uint8_t j=0;
//	uint8_t _data[8]={0};
//	
//STB_OFF;
//	for(j=0;j<8;j++)
//	{
//		for(i=7;i>=0;i--)
//		{
//			_data[j] <<= 1;
//			if((i==3)&&pointFlash)
//			{
//				if(((led_val[*(number+i)]|0x80)>>j)&0x01)
//				_data[j] +=1;
//			}
//			else
//			{
//				if(((led_val[*(number+i)])>>j)&0x01)
//				_data[j] +=1;
//			}
//			
//		}
//		writeData(2*j,_data[j]);
//		}
//STB_ON;

////////////************End for development board******************


 uint8_t j;

    for(j = 0; j < 8; j++)
    {
        // Get segment pattern from lookup table
        uint8_t segments = led_val[number[j]];
        
        // Add decimal point if needed (for digit 3 in your case)
        if(pointFlash && j == 6)
        {
            segments |= 0x80;  // Set DP _bit
        }
        
        writeData(2*j,segments);
    }


}


uint16_t tm1638_read_byte(void) {

    unsigned char i;
    uint16_t temp=0;
    //DIO_ON();
	P17_INPUT_MODE;  // Set as input
    for( i=0; i<8; i++ ) {
        temp>>=1;
        CLK_OFF;
			delay_ms(2);
			
        if( DIO )
				{
            temp|=0x80;
					LED_1_ON;
				}
				else 
				LED_1_OFF;
		//	delay_ms(2);	
        CLK_ON;
    }
		P17_QUASI_MODE;  // Restore quasi-mode
			
    return temp;
}



uint16_t tm1638_read_key(void)
{
	   // unsigned char c[4] ,d;
	uint16_t tmp =0,key_value =0;
    STB_OFF;
	delay_ms(5);
    TM1638_Write(0x42); 

    for(i=0;i<4;i++){
        tmp=tm1638_read_byte();
			key_value |= (tmp << i);
		}
    STB_ON; 
    return  key_value;
	}	
	
	
	


void IAP_Enable(void)  { 
TA = 0Xaa; //CHPCON is TA protected
TA = 0x55;
CHPCON |= 0x01; //IAPEN = 1, enable IAP mode
TA = 0xAA; 
TA = 0x55; 
IAPUEN |= 0x01;
}
void IAP_Disable(void) 
	{ 
TA = 0xAA; 
TA = 0x55;
IAPUEN &= ~0x01;
TA = 0Xaa; //CHPCON is TA protected
TA = 0x55;
CHPCON &= ~0x01; //IAPEN = 0, disable IAP mode
}


/* Delay for debug */
void delay_ms(unsigned int ms) {
    unsigned int i=0, j=0;
    for(i = 0; i < ms; i++)
        for(j = 0; j < 1000; j++);
}


/* Erase one page at given address */
void Flash_Erase(unsigned int addr) {
    IAPAL = addr & 0xFF;
    IAPAH = (addr >> 8) & 0xFF;
    IAPFD = 0xFF;
    IAPCN = 0x22; // Page Erase
    TA = 0xAA; TA = 0x55; IAPTRG = 1;
    while (IAPTRG);
}

/* Write 1 byte to given flash address */
void Flash_Write_Byte(unsigned int addr, unsigned char value) {
    IAPAL = addr & 0xFF;
    IAPAH = (addr >> 8) & 0xFF;
    IAPFD = value;
    IAPCN = 0x21; // Byte Program
    TA = 0xAA; TA = 0x55; IAPTRG = 1;
    while (IAPTRG);
}

/* Write multiple bytes */
void Flash_Write(unsigned int addr, unsigned char *buf, unsigned char len) {
    unsigned char i;
    for(i = 0; i < len; i++) {
        Flash_Write_Byte(addr + i, buf[i]);
    }
}

/* Read 1 byte from flash */
unsigned char Flash_Read_Byte(unsigned int addr) {
    IAPAL = addr & 0xFF;
    IAPAH = (addr >> 8) & 0xFF;
    IAPCN = 0x00; // Read
    TA = 0xAA; TA = 0x55; IAPTRG = 1;
    while (IAPTRG);
    return IAPFD;
}

/* Read multiple bytes */
void Flash_Read(unsigned int addr, unsigned char *buf, unsigned char len) {
    unsigned char i;
    for(i = 0; i < len; i++) {
        buf[i] = Flash_Read_Byte(addr + i);
    }
}



	    unsigned char flag;
    unsigned char i;

//----------------------------------------------------------------------------------------------//
void main (void)
{		
	 //MODIFY_HIRC(HIRC_24);
   Init_ports();
 //  I2C_Init();
	 Init_Timer();
	 Init_application(); 

	 ADC_Init();
	
    TMOD &= 0xF0;   // Clear Timer0 bits
    TMOD |= 0x01;   // Timer0 Mode1 (16-bit)
    
    TH0 = 0xF8;     // Initial reload high byte
    TL0 = 0x30;     // Initial reload low byte

    ET0 = 1;        // Enable Timer0 interrupt
    EA  = 1;        // Enable global interrupts
    TR0 = 1;        // Start Timer0
	

		//STB = P15;
		//CLK = P16;
		//DIO = P17;
			
    P15_PUSHPULL_MODE;  // STB
    P16_PUSHPULL_MODE;  // CLK
	  //P17_PUSHPULL_MODE;  // DIO
	  P17_QUASI_MODE;
    // Power on display
	
	STB_ON;
	CLK_ON;
	DIO_ON;
	
	writeCMD(0x89);		
	writeCMD(0x40);		
	STB_OFF;
	TM1638_Write(0xC0);		
		
    for(m=0; m<3; m++)   // blink 3 times
    {
        // All ON
        for(y=0; y<16; y++) TM1638_Write(0xFF);
        delay_ms(1000);

        // All OFF
        for(y=0; y<16; y++) TM1638_Write(0x00);
        delay_ms(1000);
    }

	STB_ON;
	
	key_press=0;
	

//    EA = 0;           // Disable interrupts
//    IAP_Enable();     // Unlock flash operations
//    flag = Flash_Read_Byte(WRITTEN_FLAG_ADDR);
//    if(flag != WRITTEN_FLAG_VALUE) {
//        //Flash_Erase(USER_DATA_ADDR);  // Erase flash page
//        //Flash_Write(USER_DATA_ADDR, (unsigned char*)write_data, USER_DATA_LEN);
//       // Flash_Write_Byte(WRITTEN_FLAG_ADDR, WRITTEN_FLAG_VALUE);
//    }
//    Flash_Read(USER_DATA_ADDR, read_data, USER_DATA_LEN);
//    IAP_Disable();   // Lock flash access


    while(1) 
		{	
	
		//	Timer0_Delay1ms();
    	RunVirtualTimer();
     
			
		if( T1E == ELAPSED)
		{
				T1P = RESTART;
			  ChangeDisplay();
			//key_press	=tm1638_read_key();
		}
				
	
		if( T3E == ELAPSED)
		{
				T3P = RESTART;
			  key_press	=tm1638_read_key();
			
			
		}
		

		if( T2E == ELAPSED)
		{
			T2P = RESTART;
		
//			        if (ADCconversion == PROCESS_NEXT_CHANNEL) {
//								
//            if (ADC_CHANNEL_SWITCHING == 1) 
//						{
                ADC_CHANNEL_SWITCHING = 2;
																							/* ----- Configure P0.5 as analog input (AIN4) ----- */
										P0M1 |= 0x20;     // P0.5 input mode
										P0M2 &= ~0x20;    // set to analog
										AINDIDS |= 0x10;  // disable digital input buffer on P0.5

										/* ----- Select ADC channel 4 (P0.5) ----- */
										ADCCON0 &= ~0x0F; // clear channel select
										ADCCON0 |= 0x04;  // AIN4

										/* ----- Reference = AVDD ----- */
										ADCCON1 &= ~0x30; // 00 = AVDD

										/* ----- ADC clock divider = Fsys/32 (24MHz/32 = 750kHz) ----- */
										ADCCON1 &= ~0x07;
										ADCCON1 |= 0x05;

										/* ----- Enable ADC ----- */
										ADCCON0 |= 0x80;  // ADCEN = 1

										/* ----- Enable ADC interrupt ----- */
										EADC = 1; // Enable ADC interrupt
										EA   = 1; // Enable global interrupt

										/* ----- Start first conversion ----- */
										ADCS = 1;
										

//            } 
//						
//						
//						else if (ADC_CHANNEL_SWITCHING == 2) 					
//						{
//						       ADC_CHANNEL_SWITCHING = 1;												
//                     
//										
//																						 /* ----- Configure P0.6 as analog input (AIN3) ----- */
//											P0M1 |= 0x40;     // P0.6 input mode
//											P0M2 &= ~0x40;    // set to analog
//											AINDIDS |= 0x08;  // disable digital input buffer on P0.6

//											/* ----- Select ADC channel 3 (P0.6) ----- */
//											ADCCON0 &= ~0x0F; // clear channel select
//											ADCCON0 |= 0x03;  // AIN3

//											/* ----- Reference = AVDD ----- */
//											ADCCON1 &= ~0x30; // 00 = AVDD

//											/* ----- ADC clock divider = Fsys/32 (24MHz/32 = 750kHz) ----- */
//											ADCCON1 &= ~0x07;
//											ADCCON1 |= 0x05;

//											/* ----- Enable ADC ----- */
//											ADCCON0 |= 0x80;  // ADCEN = 1

//											/* ----- Enable ADC interrupt ----- */
//											EADC = 1; // Enable ADC interrupt
//											EA   = 1; // Enable global interrupt

//											/* ----- Start first conversion ----- */
//											ADCS = 1;				
//			
//            }
//						 ADCconversion = PROCESSED;
//					}
	}		
			
				if( T0E == ELAPSED)
		{

			    T0P=RESTART;	
			
			if(data_ready && ADC_CHANNEL_SWITCHING == 2)
      {
	    peak = get_peak_voltage();
				

//				if(ADC_CHANNEL_SWITCHING ==1)
//				{
//						volt = (0.208 * peak) - 1.28;				
//					if(volt<100)	
//					{	
//						volt=0;
//					}				
//           ADCconversion = PROCESS_NEXT_CHANNEL;
//					//volt =0;
//				}
				
//				else if(ADC_CHANNEL_SWITCHING ==2)
//				{
				
				if(peak > 70)
				{
				curr= ((0.0059f * peak) - 0.3f)*10;
			//	 ADCconversion = PROCESS_NEXT_CHANNEL;
					
//				}
				}
				else
					curr =0;
				
				
          adc_index = 0;
          data_ready = 0;
				    //peak =0;	
ADCconversion = PROCESS_NEXT_CHANNEL;						
			}	
			
			
			
		else if(data_ready && ADC_CHANNEL_SWITCHING == 1)
      {
	    peak = get_peak_voltage();
				

						volt = (0.208 * peak) - 1.28;				
					if(volt<100)	
					{	
						volt=0;
					}				

//				else if(ADC_CHANNEL_SWITCHING ==2)
//				{
		//		curr= ((0.0059f * peak) - 0.3f)*100;
			//	 ADCconversion = PROCESS_NEXT_CHANNEL;
					
//				}
          adc_index = 0;
          data_ready = 0;
				    peak =0;	
ADCconversion = PROCESS_NEXT_CHANNEL;						
			}	

			}
		}
	
}
//----------------------------------------------------------------------------------------------//


void ChangeDisplay(void)
 { 
	 
	unsigned int a,b,c,d,e,f,g,h;//,i,j,M; 
	
	// max_val/=4.7f;
	// curr =	volt;//max_val;//volt;
	 
//	 a = (volt / 1000) % 10;
//	 b=(volt / 100)  % 10;  // Hundreds
//	 c=(volt / 10)   % 10;  // Tens
//	 d=volt % 10;          // Units
//	 
//	 
//	 e = (curr / 1000) % 10;
//	 f=(curr / 100)  % 10;  // Hundreds
//	 g=(curr / 10)   % 10;  // Tens
//	 h=curr % 10;          // Units
//	 
//	 
	 
	volt = key_press;//peak;////;
	 a = (volt / 1000) % 10;
	 b=(volt / 100)  % 10;  // Hundreds
	 c=(volt / 10)   % 10;  // Tens
	 d=volt % 10;          // Units
	 
	 
	 e = _AA;//(curr / 1000) % 10;

	 if(curr<100)
	 {		 
	 f = _NV;	 
	 g=(curr / 10)   % 10;  // Tens
	 h=curr % 10;          // Units
	 }
	 else
	 {
		 f=(curr / 100)  % 10; 
		 g=(curr / 10)   % 10;  // Tens
	   h=curr % 10;          // Units	 
		 
	 }
	 

	 

	 
	 
//	 e = _CC;
//	 f = _UU;
//	 g = _RR;
//	 h = _NV;
//	 
//	 LoadDispBuffer[0]=0;
//	 LoadDispBuffer[1]=1;      
//	 LoadDispBuffer[2]=2;
//	 LoadDispBuffer[3]=3;
//	 LoadDispBuffer[4]=4; 
//	 LoadDispBuffer[5]=5;
//	 LoadDispBuffer[6]=6;
//	 LoadDispBuffer[7]=7;   
	 
	 
	 LoadDispBuffer[0]=a;
	 LoadDispBuffer[1]=b;      
	 LoadDispBuffer[2]=c;
	 LoadDispBuffer[3]=d;
	 LoadDispBuffer[4]=e; 
	 LoadDispBuffer[5]=f;
	 LoadDispBuffer[6]=g;
	 LoadDispBuffer[7]=h;  
	 
	 
	 //********** for development board******************
	 
//	 LoadDispBuffer[0]=d;
//	 LoadDispBuffer[1]=c;      
//	 LoadDispBuffer[2]=b;
//	 LoadDispBuffer[3]=a;
//	 LoadDispBuffer[4]=h; 
//	 LoadDispBuffer[5]=g;
//	 LoadDispBuffer[6]=f;
//	 LoadDispBuffer[7]=e;  
//	 
	 
	 display(LoadDispBuffer,1);
 }






 









