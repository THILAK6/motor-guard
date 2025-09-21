#ifndef __VIRTUAL_TIMER_H__
#define __VIRTUAL_TIMER_H__

 
#define MAX_TIMER 4
#define OFF     0
#define ON      1
#define RESET   2
#define CLEAR   0
#define ELAPSED 3
#define RESTART 4
#define SET     1



void Init_Timer(void);
void RunVirtualTimer(void);
 
#endif