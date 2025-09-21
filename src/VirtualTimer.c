
#include "Virtual_Timer.h"
#include "main.h"
uint16_t     T_SV[MAX_TIMER];
uint16_t    T_PV[MAX_TIMER];
unsigned char  T0P,T1P, T2P, T3P, T4P, T5P, T6P, T7P, T8P, T9P, T10P;
unsigned char  T0E,T1E, T2E, T3E, T4E, T5E, T6E, T7E, T8E, T9E, T10E; 

extern  unsigned char TimerElaspsed_1min,TimerElaspsed_1sec,TimerElaspsed_100ms;
extern uint16_t xdata peak;
void RunVirtualTimer(void)
{

  if((TimerElaspsed_100ms==1))
  {
 //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      if(T0P==ON)                 // Timer 0 // 
			{
				T_PV[0]++;				// If  Timer 0 is Enabled (Increment Timer 0 PV by 1 for every 1 msec)
				if(T_PV[0] >= T_SV[0])
				{
					T0E=ELAPSED;T_PV[0]=CLEAR;       // If timer 0 PV >= timer 0 SV then Timer 0 is ON and Timer PV=0
				}
			} 

		 //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      if(T1P==ON)                 // Timer 0 // 
			{
				T_PV[1]++;				// If  Timer 0 is Enabled (Increment Timer 0 PV by 1 for every 1 msec)
				if(T_PV[1] >= T_SV[1])
				{
					T1E=ELAPSED;T_PV[1]=CLEAR;       // If timer 0 PV >= timer 0 SV then Timer 0 is ON and Timer PV=0
				}
			} 
			
			 //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      if(T3P==ON)                 // Timer 0 // 
			{
				T_PV[3]++;				// If  Timer 0 is Enabled (Increment Timer 0 PV by 1 for every 1 msec)
				if(T_PV[3] >= T_SV[3])
				{
					T3E=ELAPSED;T_PV[3]=CLEAR;       // If timer 0 PV >= timer 0 SV then Timer 0 is ON and Timer PV=0
				}
			} 		
			
			
   TimerElaspsed_100ms=0;
  }
 
	   if(TimerElaspsed_1sec==1)
   {	
		 	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
			if(T2P==ON)                //  Timer 2 - // 
			{
				T_PV[2]++;				 
				if(T_PV[2] >= T_SV[2])
				{
					T2E=ELAPSED;T_PV[2]=CLEAR;        
				}
			}
			
			TimerElaspsed_1sec =0;
	 }
	
		if(T0P==OFF)   {T_PV[0]  = CLEAR; T0E=RESET;}
		if(T1P==OFF)   {T_PV[1]  = CLEAR; T1E=RESET;}// If  Timer x is disabled then Timer x is OFF and Timer PV=0	
		if(T2P==OFF)   {T_PV[2]  = CLEAR; T2E=RESET;} 
		if(T3P==OFF)   {T_PV[3]  = CLEAR; T3E=RESET;} 
		
		if(T0P==RESTART)   {T_PV[0]  =CLEAR; T0E=RESET;T0P=ON;}
		if(T1P==RESTART)   {T_PV[1]  =CLEAR; T1E=RESET;T1P=ON;}// If  Timer x is reset then Timer x will be reset and run agian once	
		if(T2P==RESTART)   {T_PV[2]  =CLEAR; T2E=RESET;T2P=ON;} 
		if(T3P==RESTART)   {T_PV[3]  =CLEAR; T3E=RESET;T3P=ON;} 

	
}



void Init_Timer(void)
{

	
	
}

 

