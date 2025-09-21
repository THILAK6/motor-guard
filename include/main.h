#ifndef __MAIN_H__
#define __MAIN_H__

#include "MS51_16K.H"
#include <stdio.h>
#include <stdint.h>
//#include <SFR_Macro_MS51_16K.h>
//#include "Function_define_MS51_16K.h"
//#include "MS51.h"


#define INC_KEY 0x40
#define DEC_KEY 0x80
#define SET_KEY 0x01
#define ON_OFF  0x20

#define LED_1   P12
#define LED_2   P11
#define EEPROMWC P15 
#define PRGM_MODE_KEY  0x10

#define NO_EEPROM   0
#define WRITE_EEPROM   1


#define WRITE_CH1_EEPROM   1
#define WRITE_CH2_EEPROM   2

#define RLY_1_ON   set_P00
#define RLY_2_ON   set_P10

#define LED_1_ON   clr_P02
#define LED_2_ON   clr_P11 

#define RLY_1_OFF  clr_P00		  
#define RLY_2_OFF  clr_P10		  

#define LED_1_OFF	 set_P02
#define LED_2_OFF  set_P11
 
 #define STB_OFF clr_P15
 #define CLK_OFF clr_P16
 #define DIO_OFF clr_P17
 
  #define STB_ON set_P15
 #define CLK_ON set_P16
 #define DIO_ON set_P17
 

#define MIN_SCALABLE_VALUE 1
#define MAX_SCALABLE_VALUE 81


#define DAC_CAHNNEL1_MIN_VALUE 313
#define DAC_CAHNNEL1_MAX_VALUE 1656


#define ADC_SAMPLE_INTERVAL_TIMER         0 
#define REFRESH_DISP_TIMER                1 
#define ADC_CH_TRIGGER_SV                 2
#define TM1638_Read_Key_index             3




#define SV_ADC_SAMPLE_INTERVAL_TIME         1
#define SV_curr_disp_TIME                  100//1500//
#define ADC_CH_TRIGGER                     2000
#define SV_TM1638_Read_Key                 100



#define SELECTED 1
#define DESELECTED 2


void timer0_delay1ms();

void Delay_1ms(void);
void tm1638_write_byte(unsigned char address, unsigned char b);
void tm1638_write_bytes(unsigned char address, const unsigned char bytes[], unsigned char n);
void tm1638_clear_all();
void tm1638_clear_7seg();
void tm1638_display_on(unsigned char duty_cycle);
void tm1638_display_off();
void tm1638_show_digit(unsigned char pos, unsigned char digit, unsigned char dot);
void tm1638_set_digit_off(unsigned char pos);
void tm1638_set_led(unsigned char pos, unsigned char on);
void tm1638_show_number(unsigned char pos, unsigned char num_digits, unsigned long num);
void tm1638_show_char(unsigned char pos, unsigned char ch, unsigned char dot);
void tm1638_show_text(unsigned char pos, const char* text);
void ChangeDisplay(void);
uint16_t tm1638_read_key(void);

#define APROM_START_ADDR   0x3000  // Safe APROM address (adjust as needed)
#define DATA_SIZE          4       // Number of bytes to write
// Function prototypes
void Erase_APROM(unsigned int u16IAPStartAddress, unsigned int u16IAPDataSize);
void Erase_Verify_APROM(unsigned int u16IAPStartAddress, unsigned int u16IAPDataSize);
void Program_APROM(unsigned int u16IAPStartAddress, unsigned int u16IAPDataSize);
void Program_Verify_APROM(unsigned int u16IAPStartAddress, unsigned int u16IAPDataSize);
void Delay_ms(uint16_t u16Delay);

#define DATA_ADDRESS 0x3800  // Last 2KB of 16KB flash
void Flash_Unlock(void);
void Flash_Lock(void);

#endif