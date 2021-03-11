#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_timer.c"




















 

 
#line 1 "..\\..\\Config\\MDR32F9Qx_config.h"

















 





















 

 



#line 1 "..\\..\\Config\\MDR32F9Qx_board.h"

















 

 




 




 

 

 

 

 

 

 



 

 







 

#line 47 "..\\..\\Config\\MDR32F9Qx_config.h"
#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_lib.h"





















 

 







#line 59 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_lib.h"



 










 
#line 48 "..\\..\\Config\\MDR32F9Qx_config.h"
#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"
 
 





 










#line 26 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"







 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     
typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;

     
typedef   signed       __int64 intmax_t;
typedef unsigned       __int64 uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     


     


     


     

     


     


     


     

     



     



     


     
    
 



#line 197 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"

     







     










     











#line 261 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"



 



#line 49 "..\\..\\Config\\MDR32F9Qx_config.h"

#line 56 "..\\..\\Config\\MDR32F9Qx_config.h"


 
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"





















 
 





 



 



 






  #pragma anon_unions




 

typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  HardFault_IRQn              = -13,     
  SVCall_IRQn                 = -5,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

 
  MIL_STD_1553B2_IRQn         = 0,       
  MIL_STD_1553B1_IRQn         = 1,       
  USB_IRQn                    = 2,       
  CAN1_IRQn					  = 3,		 
  CAN2_IRQn					  = 4,		 
  DMA_IRQn                    = 5,       
  UART1_IRQn                  = 6,       
  UART2_IRQn                  = 7,       
  SSP1_IRQn                   = 8,       
  BUSY_IRQn					  = 9,		 
  ARINC429R_IRQn              = 10,      
  POWER_IRQn                  = 11,      
  WWDG_IRQn                   = 12,      
  TIMER4_IRQn				  = 13,		 
  TIMER1_IRQn                 = 14,      
  TIMER2_IRQn                 = 15,      
  TIMER3_IRQn                 = 16,      
  ADC_IRQn                    = 17,      
  ETHERNET_IRQn        	      = 18,      
  SSP3_IRQn			          = 19,      
  SSP2_IRQn                   = 20,      
  ARINC429T_IRQn			  = 21,		 
  KEYPAD_IRQn				  = 22,		 
  LED_IRQn					  = 23,		 
  UART3_UART4_IRQn			  = 24,		 
  AUDIO_IP_IRQn				  = 25,		 
  ETHERNET2_IRQn       	      = 26,      
  BKP_IRQn		              = 27,      
  EXT_INT1_IRQn               = 28,      
  EXT_INT2_IRQn               = 29,      
  EXT_INT3_IRQn               = 30,      
  EXT_INT4_IRQn               = 31       
}IRQn_Type;



 

 





   

 
#line 1 "..\\..\\Config\\MDR32F9Qx_config.h"

















 





















 

 
#line 227 "..\\..\\Config\\MDR32F9Qx_config.h"



 
#line 109 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"
 







 

























 
























 




 


 

 













#line 103 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"


 







#line 128 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"

#line 130 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 







 







 









 









 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 










 



#line 292 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmInstr.h"



#line 685 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmInstr.h"

   

#line 131 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}


#line 271 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmFunc.h"


#line 307 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmFunc.h"


#line 632 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cmFunc.h"

 


#line 132 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"








 
#line 157 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"

 






 
#line 173 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\CoreSupport\\core_cm1.h"

 










 


 





 


 
typedef union
{
  struct
  {

    uint32_t _reserved0:27;               





    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       

    uint32_t _reserved0:15;               





    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[1];                  
       uint32_t RESERVED0[31];
  volatile uint32_t ICER[1];                  
       uint32_t RSERVED1[31];
  volatile uint32_t ISPR[1];                  
       uint32_t RESERVED2[31];
  volatile uint32_t ICPR[1];                  
       uint32_t RESERVED3[31];
       uint32_t RESERVED4[64];
  volatile uint32_t IP[8];                    
}  NVIC_Type;

 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
       uint32_t RESERVED0;
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
       uint32_t RESERVED1;
  volatile uint32_t SHP[2];                   
  volatile uint32_t SHCSR;                    
} SCB_Type;

 















 



























 















 









 






 



 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 








 
 






 

 










 









 

 



 




 

 
 










 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] = (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 3)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] = (((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 3)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) & 0xFF) >> (8 - 3)));  }  
  else {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( ((uint32_t)(IRQn) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) & 0xFF) >> (8 - 3)));  }  
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (1UL << 2));
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 




 

















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0))  return (1);       

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = ticks - 1;                                   
  NVIC_SetPriority (SysTick_IRQn, (1<<3) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 








#line 110 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\startup\\arm\\system_MDR1986VE3.h"




















 



 



 



 

 





 

extern uint32_t SystemCoreClock;          
 

   



 

extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);

   



   

   

   



 
#line 111 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"



 
typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus, BitStatus;



typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

   




 



 

 
typedef struct
{
  volatile uint32_t ID;
  volatile uint32_t DLC;
  volatile uint32_t DATAL;
  volatile uint32_t DATAH;
}MDR_CAN_BUF_TypeDef;

 
typedef struct
{
  volatile uint32_t MASK;
  volatile uint32_t FILTER;
}MDR_CAN_BUF_FILTER_TypeDef;

 
typedef struct
{
  volatile uint32_t CONTROL;
  volatile uint32_t STATUS;
  volatile uint32_t BITTMNG;
       uint32_t RESERVED0;
  volatile uint32_t INT_EN;
       uint32_t RESERVED1[2];
  volatile uint32_t OVER;
  volatile uint32_t RXID;
  volatile uint32_t RXDLC;
  volatile uint32_t RXDATAL;
  volatile uint32_t RXDATAH;
  volatile uint32_t TXID;
  volatile uint32_t TXDLC;
  volatile uint32_t DATAL;
  volatile uint32_t DATAH;
  volatile uint32_t BUF_CON[32];
  volatile uint32_t INT_RX;
  volatile uint32_t RX;
  volatile uint32_t INT_TX;
  volatile uint32_t TX;
       uint32_t RESERVED2[76];
    MDR_CAN_BUF_TypeDef CAN_BUF[32];
       uint32_t RESERVED3[64];
    MDR_CAN_BUF_FILTER_TypeDef CAN_BUF_FILTER[32];
}MDR_CAN_TypeDef;

   



 



  

 
 






 






   



  

 
 
#line 227 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 243 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 258 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 266 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 






 






   



  

 
 
 
 



 



   



  

 
 
 
 
#line 321 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 329 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
 
 





 





   



  

 
 
 
 





 





   



  

 
 
#line 388 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 398 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t STS;
  volatile uint32_t TS;
  volatile uint32_t NTS;
}MDR_USB_SEP_TypeDef;

 
typedef struct
{
  volatile uint32_t RXFD;
       uint32_t RESERVED0;
  volatile uint32_t RXFDC_L;
  volatile uint32_t RXFDC_H;
  volatile uint32_t RXFC;
       uint32_t RESERVED1[11];
  volatile uint32_t TXFD;
       uint32_t RESERVED2[3];
  volatile uint32_t TXFDC;
       uint32_t RESERVED3[11];
}MDR_USB_SEP_FIFO_TypeDef;

 
typedef struct
{
  volatile uint32_t HTXC;
  volatile uint32_t HTXT;
  volatile uint32_t HTXLC;
  volatile uint32_t HTXSE;
  volatile uint32_t HTXA;
  volatile uint32_t HTXE;
  volatile uint32_t HFN_L;
  volatile uint32_t HFN_H;
  volatile uint32_t HIS;
  volatile uint32_t HIM;
  volatile uint32_t HRXS;
  volatile uint32_t HRXP;
  volatile uint32_t HRXA;
  volatile uint32_t HRXE;
  volatile uint32_t HRXCS;
  volatile uint32_t HSTM;
       uint32_t RESERVED0[16];
  volatile uint32_t HRXFD;
       uint32_t RESERVED1;
  volatile uint32_t HRXFDC_L;
  volatile uint32_t HRXFDC_H;
  volatile uint32_t HRXFC;
       uint32_t RESERVED2[11];
  volatile uint32_t HTXFD;
       uint32_t RESERVED3[3];
  volatile uint32_t HTXFC;
       uint32_t RESERVED4[11];
    MDR_USB_SEP_TypeDef USB_SEP[4];
  volatile uint32_t SC;
  volatile uint32_t SLS;
  volatile uint32_t SIS;
  volatile uint32_t SIM;
  volatile uint32_t SA;
  volatile uint32_t SFN_L;
  volatile uint32_t SFN_H;
       uint32_t RESERVED5[9];
    MDR_USB_SEP_FIFO_TypeDef USB_SEP_FIFO[4];
  volatile uint32_t HSCR;
  volatile uint32_t HSVR;
}MDR_USB_TypeDef;

   



 



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 
#line 577 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 587 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 






 






   



  

 
 
#line 625 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 635 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 






 






   



  

 
 






 






   



  

 
 






 






   



  

 
 
#line 715 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 725 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 



 



   

   

   




 



 

 
typedef struct
{
  volatile uint32_t CMD;
  volatile uint32_t ADR;
  volatile uint32_t DI;
  volatile uint32_t DO;
  volatile uint32_t KEY;
}MDR_EEPROM_TypeDef;

   



 



  

 
 
#line 790 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 804 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   

   

   



 



 

 
typedef struct {
  volatile uint32_t CLOCK_STATUS;
  volatile uint32_t PLL_CONTROL;
  volatile uint32_t HS_CONTROL;
  volatile uint32_t CPU_CLOCK;
  volatile uint32_t USB_CLOCK;
  volatile uint32_t ADC_MCO_CLOCK;
  volatile uint32_t RTC_CLOCK;
  volatile uint32_t PER_CLOCK;
  volatile uint32_t CAN_CLOCK;
  volatile uint32_t TIM_CLOCK;
  volatile uint32_t UART_CLOCK;
  volatile uint32_t SSP_CLOCK;
       uint32_t RESERVED;
  volatile uint32_t ETH_CLOCK;
  volatile uint32_t PER2_CLOCK;
  volatile uint32_t UART_SSP_CLOCK;
} MDR_RST_CLK_TypeDef;

   



 



  

 
 





 





   




  

 
 
#line 877 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 885 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   




  

 
 





 





   




  

 
 





 





   




  

 
 





 





   




  

 
 
#line 963 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 973 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   




  

 
 





 





   




  

 
 





 





   




  

 
 
#line 1029 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1037 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   




  

 
 
#line 1053 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1061 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   




  

 
 
#line 1077 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1085 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   




  

 
 
#line 1104 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1115 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   




  

 
 
#line 1131 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1139 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   


   

   




 



 

 
typedef struct
{
  volatile uint32_t STATUS;
  volatile uint32_t CFG;
  volatile uint32_t CTRL_BASE_PTR;
  volatile uint32_t ALT_CTRL_BASE_PTR;
  volatile uint32_t WAITONREQ_STATUS;
  volatile uint32_t CHNL_SW_REQUEST;
  volatile uint32_t CHNL_USEBURST_SET;
  volatile uint32_t CHNL_USEBURST_CLR;
  volatile uint32_t CHNL_REQ_MASK_SET;
  volatile uint32_t CHNL_REQ_MASK_CLR;
  volatile uint32_t CHNL_ENABLE_SET;
  volatile uint32_t CHNL_ENABLE_CLR;
  volatile uint32_t CHNL_PRI_ALT_SET;
  volatile uint32_t CHNL_PRI_ALT_CLR;
  volatile uint32_t CHNL_PRIORITY_SET;
  volatile uint32_t CHNL_PRIORITY_CLR;
       uint32_t RESERVED0[3];
  volatile uint32_t ERR_CLR;
}MDR_DMA_TypeDef;

   



 



  

 
 





 





   



  

 
 



 



   

   

   




 



 



 

typedef struct {
  volatile uint32_t DR;
  volatile uint32_t RSR_ECR;
       uint32_t RESERVED0[4];
  volatile uint32_t FR;
       uint32_t RESERVED1;
  volatile uint32_t ILPR;
  volatile uint32_t IBRD;
  volatile uint32_t FBRD;
  volatile uint32_t LCR_H;
  volatile uint32_t CR;
  volatile uint32_t IFLS;
  volatile uint32_t IMSC;
  volatile uint32_t RIS;
  volatile uint32_t MIS;
  volatile uint32_t ICR;
  volatile uint32_t DMACR;
  volatile uint32_t UARTTCR;
} MDR_UART_TypeDef;

   

   



 



  

 
 






 






   



  

 
 





 





   



  

 
 
#line 1319 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1330 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 1346 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1355 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 1376 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1390 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 



 



   



  

 
 
#line 1425 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1438 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   




  

 
 
#line 1459 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1472 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 1492 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1505 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 1525 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1538 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 




 




   



  

 
 




 




   

   

   




 



 



 

 
typedef struct
{
  volatile uint32_t CR0;
  volatile uint32_t CR1;
  volatile uint32_t DR;
  volatile uint32_t SR;
  volatile uint32_t CPSR;
  volatile uint32_t IMSC;
  volatile uint32_t RIS;
  volatile uint32_t MIS;
  volatile uint32_t ICR;
  volatile uint32_t DMACR;
}MDR_SSP_TypeDef;


   

   



 



  

 
 






 






   



  

 
 





 





   



  

 
 






 






   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



 

 
 



 



   



  

 
 



 



   



  

 
 



 



   

   

   



 



 

 
typedef struct {
	uint32_t RESERVED0[1024];
	volatile uint32_t CONTROL;
	volatile uint32_t STATUS;
	volatile uint32_t ERROR;
	volatile uint32_t CommandWord1;
	volatile uint32_t CommandWord2;
	volatile uint32_t ModeData;
	volatile uint32_t StatusWord1;
	volatile uint32_t StatusWord2;
	volatile uint32_t INTEN;
	volatile uint32_t MSG;
} MDR_MIL_STD_1553_TypeDef;

   



 


  

 
 
#line 1826 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1837 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 1852 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1860 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 1876 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1885 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 





 





   

   

   




 



 

 
typedef struct
{
  volatile uint32_t PVDCS;
}MDR_POWER_TypeDef;

   



 



  

 
 
#line 1947 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 1958 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
}MDR_WWDG_TypeDef;

   



 



  

 
 



 



   



  

 
 




 




   

   

   



 



 

 
typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
}MDR_IWDG_TypeDef;

   



 



  

 
 



 



   

   

   




 



 



 

typedef struct {
  volatile uint32_t CNT;
  volatile uint32_t PSG;
  volatile uint32_t ARR;
  volatile uint32_t CNTRL;
  volatile uint32_t CCR1;
  volatile uint32_t CCR2;
  volatile uint32_t CCR3;
  volatile uint32_t CCR4;
  volatile uint32_t CH1_CNTRL;
  volatile uint32_t CH2_CNTRL;
  volatile uint32_t CH3_CNTRL;
  volatile uint32_t CH4_CNTRL;
  volatile uint32_t CH1_CNTRL1;
  volatile uint32_t CH2_CNTRL1;
  volatile uint32_t CH3_CNTRL1;
  volatile uint32_t CH4_CNTRL1;
  volatile uint32_t CH1_DTG;
  volatile uint32_t CH2_DTG;
  volatile uint32_t CH3_DTG;
  volatile uint32_t CH4_DTG;
  volatile uint32_t BRKETR_CNTRL;
  volatile uint32_t STATUS;
  volatile uint32_t IE;
  volatile uint32_t DMA_RE;
  volatile uint32_t CH1_CNTRL2;
  volatile uint32_t CH2_CNTRL2;
  volatile uint32_t CH3_CNTRL2;
  volatile uint32_t CH4_CNTRL2;
  volatile uint32_t CCR11;
  volatile uint32_t CCR21;
  volatile uint32_t CCR31;
  volatile uint32_t CCR41;
  volatile uint32_t DMA_REChx[4];
} MDR_TIMER_TypeDef;


   

   



 



  

 
 
#line 2136 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 2145 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 2163 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 2174 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



 

 
#line 2188 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 2196 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"


   



  

 
 




 




   



  

 
 





 





   



  

 
 
#line 2250 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 2260 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 2277 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 2287 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 2304 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 2314 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 




 




   

   

   



 



 



 

typedef struct {
  volatile uint32_t ADC1_CFG;		
  volatile uint32_t ADC2_CFG;		
  volatile uint32_t ADC1_H_LEVEL;	
  volatile uint32_t RESERVED0;   	
  volatile uint32_t ADC1_L_LEVEL;	
  volatile uint32_t RESERVED1;		
  volatile uint32_t ADC1_RESULT;	
  volatile uint32_t RESERVED2;		
  volatile uint32_t ADC1_STATUS;	
  volatile uint32_t RESERVED3;   	
  volatile uint32_t ADC1_CHSEL;		
  volatile uint32_t RESERVED4;		
  volatile uint32_t ADC1_TRIM;
} MDR_ADC_TypeDef;

   

   



 



  

 
 
#line 2397 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 2416 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   




  

 
 


 


   




  

 






   




  

 
 






 






   



  

 
 



 



   

   

   



 



 



 

typedef struct {
  volatile uint32_t CFG;
  volatile uint32_t DAC1_DATA;
  volatile uint32_t DAC2_DATA;
} MDR_DAC_TypeDef;

   

   



 



  

 
 






 






   




  

 
 



 



   





  

 
 



 



   



   

   



 



 



 

typedef struct {
  volatile uint32_t RXTX;
  volatile uint32_t OE;
  volatile uint32_t FUNC;
  volatile uint32_t ANALOG;
  volatile uint32_t PULL;
  volatile uint32_t PD;
  volatile uint32_t PWR;
  volatile uint32_t GFEN;
  volatile uint32_t SETTX;
  volatile uint32_t CLRTX;
  volatile uint32_t RDTX;
} MDR_PORT_TypeDef;


   

   



 



  

 
 
#line 2631 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 2649 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 



 



   



  

 
 



 



   



  

 
 
#line 2704 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 2722 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   


   

   



 



 

 
typedef struct
{
	volatile uint32_t CONTROL1;
	volatile uint32_t CONTROL2;
	volatile uint32_t CONTROL3;
	volatile uint32_t STATUS1;
	volatile uint32_t STATUS2;
	volatile uint32_t CONTROL4;
	volatile uint32_t CONTROL5;
	volatile uint32_t CHANNEL;
	volatile uint32_t LABEL;
	volatile uint32_t DATA_R;
	volatile uint32_t CONTROL6;
	volatile uint32_t CONTROL7;
}MDR_ARINC429R_TypeDef;

   



 



  

 
 
#line 2796 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 2827 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 2865 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"
 
#line 2895 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
 
#line 2930 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   

 
#line 2966 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 



 



   



  

 
 
#line 3073 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3103 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3140 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3170 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   

   

   



 



 

 
typedef struct
{
	volatile uint32_t CONTROL1;
	volatile uint32_t CONTROL2;
	volatile uint32_t STATUS;
	volatile uint32_t DATA1_T;
	volatile uint32_t DATA2_T;
	volatile uint32_t DATA3_T;
	volatile uint32_t DATA4_T;
	volatile uint32_t CONTROL3;
}MDR_ARINC429T_TypeDef;

   



 



  

 
 
#line 3225 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3242 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3265 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3281 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 





 





   



  

 
 
#line 3321 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3335 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t REG_00;
  volatile uint32_t REG_01;
  volatile uint32_t REG_02;
  volatile uint32_t REG_03;
  volatile uint32_t REG_04;
  volatile uint32_t REG_05;
  volatile uint32_t REG_06;
  volatile uint32_t REG_07;
  volatile uint32_t REG_08;
  volatile uint32_t REG_09;
  volatile uint32_t REG_0A;
  volatile uint32_t REG_0B;
  volatile uint32_t REG_0C;
  volatile uint32_t REG_0D;
  volatile uint32_t REG_0E;
  volatile uint32_t REG_0F;
  volatile uint32_t RTC_CNT;
  volatile uint32_t RTC_DIV;
  volatile uint32_t RTC_PRL;
  volatile uint32_t RTC_ALRM;
  volatile uint32_t RTC_CS;
}MDR_BKP_TypeDef;

   



 



  

 
 
#line 3395 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3404 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3428 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3445 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3461 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3470 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   

   

   



 



 

 
typedef struct
{
       uint32_t RESERVED0[20];
  volatile uint32_t NAND_CYCLES;
  volatile uint32_t CONTROL;
  volatile uint32_t MEM_REGION[4];
}MDR_EBC_TypeDef;

   



 



  

 
 
#line 3513 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3522 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   




  

 
 
#line 3540 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3550 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   




  

 
 






 






   

   

   



 



 

typedef struct {
  volatile uint16_t ETH_Dilimiter;		
  volatile uint16_t ETH_MAC_T;			
  volatile uint16_t ETH_MAC_M;			
  volatile uint16_t ETH_MAC_H;			
  volatile uint16_t ETH_HASH0;			
  volatile uint16_t ETH_HASH1;			
  volatile uint16_t ETH_HASH2;			
  volatile uint16_t ETH_HASH3;			
  volatile uint16_t ETH_IPG;			
  volatile uint16_t ETH_PSC;			
  volatile uint16_t ETH_BAG;			
  volatile uint16_t ETH_JitterWnd;		
  volatile uint16_t ETH_R_CFG;			
  volatile uint16_t ETH_X_CFG;			
  volatile uint16_t ETH_G_CFGl;			
  volatile uint16_t ETH_G_CFGh;			
  volatile uint16_t ETH_IMR;			
  volatile uint16_t ETH_IFR;			
  volatile uint16_t ETH_MDIO_CTRL;		
  volatile uint16_t ETH_MDIO_DATA;		
  volatile uint16_t ETH_R_Head;			
  volatile uint16_t ETH_X_Tail;			
  volatile uint16_t ETH_R_Tail;			
  volatile uint16_t ETH_X_Head;			
  volatile uint16_t ETH_STAT;			
  volatile uint16_t Reserved;			
  volatile uint16_t PHY_Control;		
  volatile uint16_t PHY_Status;			
} MDR_ETHERNET_TypeDef;

   



 



  

 
 
#line 3637 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3646 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3661 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3669 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3687 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3698 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3719 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3733 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3757 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3774 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3798 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3815 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3835 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3848 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3863 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3871 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3887 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3896 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



  

 
 
#line 3915 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 3927 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   

   

   



 



 

 
typedef struct
{
	volatile uint32_t POWCTL;
	volatile uint32_t ADCCTL;
	volatile uint32_t DACCTL;
	volatile uint32_t MASKCTL;
	volatile uint32_t IRQFLAG;
	volatile uint32_t ADCREG;
	volatile uint32_t DACREG;
}MDR_AUDIO_IP_TypeDef;

   



 


 
 
 






 






   



 

 
 





 





   



 

 
 
#line 4013 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 4024 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



 

 
 





 





   



 

 
 





 





   



 

 
 


 


   



 

 
 


 


   

   

   



 



 

 
typedef struct
{
	volatile uint32_t KEYPAD_SR;
	volatile uint32_t KEYPAD_CR;
	volatile uint32_t KEYPAD_DR;
	volatile uint32_t KEYPAD_SWR[4];
}MDR_KEYPAD_TypeDef;

   



 



 
 
 
#line 4134 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 4147 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



 

 
 
#line 4162 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 4170 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



 

 
 



 



   

   

   



 



 

 
typedef struct
{
	uint32_t TextBuf[128];
	uint32_t DecodeBuf[320];
	uint32_t CR;
	uint32_t Jark;
	uint32_t RESRVED[2];
	uint32_t DivR;
	uint32_t SR;
}MDR_LED_TypeDef;

   



 



 

 
 
#line 4235 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

 
#line 4248 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



 

 
 


 


   



 

 
 



 



   



 

 
 


 


   

   

   



 

#line 4344 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   



 

#line 4395 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE3\\inc\\MDR1986VE3.h"

   

   

   

   





 
#line 65 "..\\..\\Config\\MDR32F9Qx_config.h"



 





 
 






 
#line 90 "..\\..\\Config\\MDR32F9Qx_config.h"


 




#line 116 "..\\..\\Config\\MDR32F9Qx_config.h"










 



 
 


 


 
            


 

 


 
 
 
 


 


 
 
 
 
 

 
 

 



 



 


 
 


 







 

 
 








 
#line 211 "..\\..\\Config\\MDR32F9Qx_config.h"

#line 225 "..\\..\\Config\\MDR32F9Qx_config.h"





 
#line 25 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_timer.c"
#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"





















 

 







 
#line 34 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"



 



 



 



 

typedef struct {





	uint32_t TIMER_IniCounter;		
 


	uint16_t TIMER_Prescaler; 		 

 






	uint32_t TIMER_Period;			

 


	uint16_t TIMER_CounterMode;		 
 

	uint16_t TIMER_CounterDirection; 
 

	uint16_t TIMER_EventSource; 	
 

	uint16_t TIMER_FilterSampling;  
 

	uint16_t TIMER_ARR_UpdateMode; 	
 

	uint16_t TIMER_ETR_FilterConf; 	
 

	uint16_t TIMER_ETR_Prescaler; 	
 

	uint16_t TIMER_ETR_Polarity; 	
 

	uint16_t TIMER_BRK_Polarity; 	
 
} TIMER_CntInitTypeDef;



 

typedef struct
{
  uint16_t TIMER_CH_Number;             
 

  uint16_t TIMER_CH_Mode;               
 

  uint16_t TIMER_CH_ETR_Ena;            
 

  uint16_t TIMER_CH_ETR_Reset;          
 

  uint16_t TIMER_CH_BRK_Reset;          
 

  uint16_t TIMER_CH_REF_Format;         
 

  uint16_t TIMER_CH_Prescaler;          
 

  uint16_t TIMER_CH_EventSource;        
 

  uint16_t TIMER_CH_FilterConf;         
 

  uint16_t TIMER_CH_CCR_UpdateMode;     
 

  uint16_t TIMER_CH_CCR1_Ena;           
 

  uint16_t TIMER_CH_CCR1_EventSource;   
 
}TIMER_ChnInitTypeDef;



 

typedef struct
{
  uint16_t TIMER_CH_Number;             
 

  uint16_t TIMER_CH_DirOut_Polarity;    
 

  uint16_t TIMER_CH_DirOut_Source;      
 

  uint16_t TIMER_CH_DirOut_Mode;        
 

  uint16_t TIMER_CH_NegOut_Polarity;    
 

  uint16_t TIMER_CH_NegOut_Source;      
 

  uint16_t TIMER_CH_NegOut_Mode;        
 

  uint16_t TIMER_CH_DTG_MainPrescaler;  

 

  uint16_t TIMER_CH_DTG_AuxPrescaler;   

 

  uint16_t TIMER_CH_DTG_ClockSource;    
 
}TIMER_ChnOutInitTypeDef;

   



 

#line 201 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"



 











   



 







   



 

#line 243 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"

#line 253 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"

   



 











   



 







   



 

#line 304 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"

#line 321 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"

   



 











   



 







   



 







   



 











   



 







   



 







   



 







   



 

#line 442 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"

#line 451 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"

   



 











   



 











   



 











   



 







   



 







   



 











   



 











   



 





   



 







   



 

#line 601 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"

#line 619 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"

#line 637 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"



   



 
 













   



 

#line 673 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"

#line 682 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_timer.h"

   

   



 
























 


   



 

void TIMER_DeInit(MDR_TIMER_TypeDef* TIMERx);

void TIMER_CntInit(MDR_TIMER_TypeDef* TIMERx, const TIMER_CntInitTypeDef* TIMER_CntInitStruct);
void TIMER_CntStructInit(TIMER_CntInitTypeDef* TIMER_CntInitStruct);

void TIMER_Cmd(MDR_TIMER_TypeDef* TIMERx, FunctionalState NewState);


	void TIMER_SetCounter(MDR_TIMER_TypeDef* TIMERx, uint32_t Counter);




void TIMER_SetCntPrescaler(MDR_TIMER_TypeDef* TIMERx, uint16_t Prescaler);

	void TIMER_SetCntAutoreload(MDR_TIMER_TypeDef* TIMERx, uint32_t Autoreload);




	void TIMER_CntAutoreloadConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Autoreload, uint32_t UpdateMode);





	uint32_t TIMER_GetCounter(MDR_TIMER_TypeDef* TIMERx);




void TIMER_CntEventSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t EventSource);
void TIMER_FilterSamplingConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Prescaler);
void TIMER_CounterModeConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Mode);
void TIMER_SetCounterDirection(MDR_TIMER_TypeDef* TIMERx, uint32_t Direction);
void TIMER_ETRInputConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Prescaler, uint32_t Polarity, uint32_t Filter);
void TIMER_ETRFilterConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Filter);
void TIMER_ETRPrescalerConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Prescaler);
void TIMER_ETRPolarityConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Polarity);
void TIMER_BRKPolarityConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Polarity);
uint32_t TIMER_GetCounterDirection(MDR_TIMER_TypeDef* TIMERx);
FlagStatus TIMER_GetCntWriteComplete(MDR_TIMER_TypeDef* TIMERx);

void TIMER_ChnInit(MDR_TIMER_TypeDef* TIMERx, const TIMER_ChnInitTypeDef* TIMER_ChnInitStruct);
void TIMER_ChnStructInit(TIMER_ChnInitTypeDef* TIMER_ChnInitStruct);


	void TIMER_SetChnCompare(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Compare);





	void TIMER_SetChnCompare1(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Compare);





	void TIMER_ChnCompareConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Compare, uint32_t UpdateMode);





	void TIMER_ChnCompare1Config(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Compare, uint32_t UpdateMode);





	uint32_t TIMER_GetChnCapture(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel);





	uint32_t TIMER_GetChnCapture1(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel);





void TIMER_ChnETR_Cmd(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, FunctionalState NewState);
void TIMER_ChnETRResetConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t NewState);
void TIMER_ChnBRKResetConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t NewState);
void TIMER_ChnREFFormatConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Format);
void TIMER_ChnCapturePrescalerConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Prescaler);
void TIMER_ChnEventSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t EventSource);
void TIMER_ChnFilterConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Filter);
FlagStatus TIMER_GetChnWriteComplete(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel);
void TIMER_ChnCCR1_EventSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t EventSource);
void TIMER_ChnCCR1_Cmd(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, FunctionalState NewState);

void TIMER_ChnOutInit(MDR_TIMER_TypeDef* TIMERx, const TIMER_ChnOutInitTypeDef* TIMER_ChnOutInitStruct);
void TIMER_ChnOutStructInit(TIMER_ChnOutInitTypeDef* TIMER_ChnOutInitStruct);
void TIMER_ChnOutConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t OutSource, uint32_t Mode, uint32_t Polarity);
void TIMER_ChnOutSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t OutSource);
void TIMER_ChnOutModeConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Mode);
void TIMER_ChnOutPolarityConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Polarity);
void TIMER_ChnNOutConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t OutSource, uint32_t Mode, uint32_t Polarity);
void TIMER_ChnNOutSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t OutSource);
void TIMER_ChnNOutModeConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Mode);
void TIMER_ChnNOutPolarityConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Polarity);
void TIMER_ChnOutDTGConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel,
                         uint32_t MainPrescaler, uint32_t AuxPrescaler, uint32_t ClockSource);

uint32_t TIMER_GetStatus(MDR_TIMER_TypeDef* TIMERx);
FlagStatus TIMER_GetFlagStatus(MDR_TIMER_TypeDef* TIMERx, uint32_t Flag);
void TIMER_ClearFlag(MDR_TIMER_TypeDef* TIMERx, uint32_t Flags);

void TIMER_DMACmd(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_DMASource, uint32_t TIMER_DMAChannel, FunctionalState NewState);





void TIMER_ITConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_IT, FunctionalState NewState);
ITStatus TIMER_GetITStatus(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_IT);
void TIMER_BRGInit(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_BRG);

   

   

   









 
#line 26 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_timer.c"





 



 



 





 
void TIMER_DeInit ( MDR_TIMER_TypeDef* TIMERx ) {
	 
	((void)0);

	TIMERx->CNTRL = 0;
	TIMERx->CNT = 0;
	TIMERx->PSG = 0;
	TIMERx->ARR = 0;

	TIMERx->CH1_CNTRL = 0;
	TIMERx->CH2_CNTRL = 0;
	TIMERx->CH3_CNTRL = 0;
	TIMERx->CH4_CNTRL = 0;
	TIMERx->CH1_CNTRL1 = 0;
	TIMERx->CH2_CNTRL1 = 0;
	TIMERx->CH3_CNTRL1 = 0;
	TIMERx->CH4_CNTRL1 = 0;
	TIMERx->CH1_CNTRL2 = 0;
	TIMERx->CH2_CNTRL2 = 0;
	TIMERx->CH3_CNTRL2 = 0;
	TIMERx->CH4_CNTRL2 = 0;

	TIMERx->CCR1 = 0;
	TIMERx->CCR2 = 0;
	TIMERx->CCR3 = 0;
	TIMERx->CCR4 = 0;
	TIMERx->CCR11 = 0;
	TIMERx->CCR21 = 0;
	TIMERx->CCR31 = 0;
	TIMERx->CCR41 = 0;
	TIMERx->CH1_DTG = 0;
	TIMERx->CH2_DTG = 0;
	TIMERx->CH3_DTG = 0;
	TIMERx->CH4_DTG = 0;
	TIMERx->BRKETR_CNTRL = 0;
	TIMERx->STATUS = 0;
	TIMERx->IE = 0;
	TIMERx->DMA_RE = 0;

	TIMERx->DMA_REChx[0] = TIMERx->DMA_REChx[1] =
			TIMERx->DMA_REChx[2] = TIMERx->DMA_REChx[3] = 0;

}









 
void TIMER_CntInit(MDR_TIMER_TypeDef* TIMERx, const TIMER_CntInitTypeDef* TIMER_CntInitStruct)
{
  uint32_t tmpreg_CNTRL;
  uint32_t tmpreg_BRKETR_CNTRL;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  TIMERx->CNT = TIMER_CntInitStruct->TIMER_IniCounter;
  TIMERx->PSG = TIMER_CntInitStruct->TIMER_Prescaler;
  TIMERx->ARR = TIMER_CntInitStruct->TIMER_Period;

   
  tmpreg_CNTRL = TIMER_CntInitStruct->TIMER_CounterMode
               + TIMER_CntInitStruct->TIMER_CounterDirection
               + TIMER_CntInitStruct->TIMER_EventSource
               + TIMER_CntInitStruct->TIMER_FilterSampling
               + TIMER_CntInitStruct->TIMER_ARR_UpdateMode;

   
  TIMERx->CNTRL = tmpreg_CNTRL;

   
  tmpreg_BRKETR_CNTRL = (TIMER_CntInitStruct->TIMER_ETR_FilterConf << 4)
                      + TIMER_CntInitStruct->TIMER_ETR_Prescaler
                      + TIMER_CntInitStruct->TIMER_ETR_Polarity
                      + TIMER_CntInitStruct->TIMER_BRK_Polarity;

   
  TIMERx->BRKETR_CNTRL = tmpreg_BRKETR_CNTRL;
}






 
void TIMER_CntStructInit(TIMER_CntInitTypeDef* TIMER_CntInitStruct)
{
  TIMER_CntInitStruct->TIMER_IniCounter = 0;
  TIMER_CntInitStruct->TIMER_Prescaler  = 0;
  TIMER_CntInitStruct->TIMER_Period     = 0;
  TIMER_CntInitStruct->TIMER_CounterMode      = (((uint32_t)0x0) << 6);
  TIMER_CntInitStruct->TIMER_CounterDirection = (((uint32_t)0x0) << 3);
  TIMER_CntInitStruct->TIMER_EventSource      = (((uint32_t)0x0) << 8);
  TIMER_CntInitStruct->TIMER_FilterSampling   = (((uint32_t)0x0) << 4);
  TIMER_CntInitStruct->TIMER_ARR_UpdateMode   = (((uint32_t)0x0) << 1);
  TIMER_CntInitStruct->TIMER_ETR_FilterConf   = ((uint32_t)0x0);
  TIMER_CntInitStruct->TIMER_ETR_Prescaler    = (((uint32_t)0x0) << 2);
  TIMER_CntInitStruct->TIMER_ETR_Polarity     = (((uint32_t)0x0) << 1);
  TIMER_CntInitStruct->TIMER_BRK_Polarity     = (((uint32_t)0x0) << 0);
}







 
void TIMER_Cmd(MDR_TIMER_TypeDef* TIMERx, FunctionalState NewState)
{
  uint32_t tmpreg_CNTRL;

   
  ((void)0);
  ((void)0);

  tmpreg_CNTRL = TIMERx->CNTRL;

   
  if (NewState != DISABLE)
  {
     
    tmpreg_CNTRL |= ((uint32_t)0x00000001);
  }
  else
  {
     
    tmpreg_CNTRL &= ~((uint32_t)0x00000001);
  }

   
  TIMERx->CNTRL = tmpreg_CNTRL;
}






 

void TIMER_SetCounter(MDR_TIMER_TypeDef* TIMERx, uint32_t Counter)



{
   
  ((void)0);

  TIMERx->CNT = Counter;
}






 
void TIMER_SetCntPrescaler(MDR_TIMER_TypeDef* TIMERx, uint16_t Prescaler)
{
   
  ((void)0);

  TIMERx->PSG = Prescaler;
}






 

void TIMER_SetCntAutoreload(MDR_TIMER_TypeDef* TIMERx, uint32_t Autoreload)



{
   
  ((void)0);

  TIMERx->ARR = Autoreload;
}










 

void TIMER_CntAutoreloadConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Autoreload, uint32_t UpdateMode)



{
  uint32_t tmpreg_CNTRL;

   
  ((void)0);
  ((void)0);

  tmpreg_CNTRL = TIMERx->CNTRL;
  tmpreg_CNTRL &= ~((uint32_t)0x00000002);
  tmpreg_CNTRL += UpdateMode;
  TIMERx->CNTRL = tmpreg_CNTRL;

  TIMERx->ARR = Autoreload;
}





 

uint32_t TIMER_GetCounter(MDR_TIMER_TypeDef* TIMERx)



{
   
  ((void)0);

  return TIMERx->CNT;
}
















 
void TIMER_CntEventSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t EventSource)
{
  uint32_t tmpreg_CNTRL;

   
  ((void)0);
  ((void)0);

  tmpreg_CNTRL = TIMERx->CNTRL;
  tmpreg_CNTRL &= ~((uint32_t)0x00000F00);
  tmpreg_CNTRL += EventSource;
  TIMERx->CNTRL = tmpreg_CNTRL;
}











 
void TIMER_FilterSamplingConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Prescaler)
{
  uint32_t tmpreg_CNTRL;

   
  ((void)0);
  ((void)0);

  tmpreg_CNTRL = TIMERx->CNTRL;
  tmpreg_CNTRL &= ~((uint32_t)0x00000030);
  tmpreg_CNTRL += Prescaler;
  TIMERx->CNTRL = tmpreg_CNTRL;
}











 
void TIMER_CounterModeConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Mode)
{
  uint32_t tmpreg_CNTRL;

   
  ((void)0);
  ((void)0);

  tmpreg_CNTRL = TIMERx->CNTRL;
  tmpreg_CNTRL &= ~((uint32_t)0x000000C0);
  tmpreg_CNTRL += Mode;
  TIMERx->CNTRL = tmpreg_CNTRL;
}









 
void TIMER_SetCounterDirection(MDR_TIMER_TypeDef* TIMERx, uint32_t Direction)
{
  uint32_t tmpreg_CNTRL;

   
  ((void)0);
  ((void)0);

  tmpreg_CNTRL = TIMERx->CNTRL;
  tmpreg_CNTRL &= ~((uint32_t)0x00000008);
  tmpreg_CNTRL += Direction;
  TIMERx->CNTRL = tmpreg_CNTRL;
}

































 
void TIMER_ETRInputConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Prescaler, uint32_t Polarity, uint32_t Filter)
{
  uint32_t tmpreg_BRKETR_CNTRL;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_BRKETR_CNTRL = TIMERx->BRKETR_CNTRL;
  tmpreg_BRKETR_CNTRL &= ~(((uint32_t)0x0000000C) + ((uint32_t)0x00000002) + ((uint32_t)0x000000F0));
  tmpreg_BRKETR_CNTRL += Prescaler + Polarity + (Filter << 4);
  TIMERx->BRKETR_CNTRL = tmpreg_BRKETR_CNTRL;
}























 
void TIMER_ETRFilterConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Filter)
{
  uint32_t tmpreg_BRKETR_CNTRL;

   
  ((void)0);
  ((void)0);

  tmpreg_BRKETR_CNTRL = TIMERx->BRKETR_CNTRL;
  tmpreg_BRKETR_CNTRL &= ~((uint32_t)0x000000F0);
  tmpreg_BRKETR_CNTRL += Filter << 4;
  TIMERx->BRKETR_CNTRL = tmpreg_BRKETR_CNTRL;
}











 
void TIMER_ETRPrescalerConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Prescaler)
{
  uint32_t tmpreg_BRKETR_CNTRL;

   
  ((void)0);
  ((void)0);

  tmpreg_BRKETR_CNTRL = TIMERx->BRKETR_CNTRL;
  tmpreg_BRKETR_CNTRL &= ~((uint32_t)0x0000000C);
  tmpreg_BRKETR_CNTRL += Prescaler;
  TIMERx->BRKETR_CNTRL = tmpreg_BRKETR_CNTRL;
}









 
void TIMER_ETRPolarityConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Polarity)
{
  uint32_t tmpreg_BRKETR_CNTRL;

   
  ((void)0);
  ((void)0);

  tmpreg_BRKETR_CNTRL = TIMERx->BRKETR_CNTRL;
  tmpreg_BRKETR_CNTRL &= ~((uint32_t)0x00000002);
  tmpreg_BRKETR_CNTRL += Polarity;
  TIMERx->BRKETR_CNTRL = tmpreg_BRKETR_CNTRL;
}









 
void TIMER_BRKPolarityConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Polarity)
{
  uint32_t tmpreg_BRKETR_CNTRL;

   
  ((void)0);
  ((void)0);

  tmpreg_BRKETR_CNTRL = TIMERx->BRKETR_CNTRL;
  tmpreg_BRKETR_CNTRL &= ~((uint32_t)0x00000001);
  tmpreg_BRKETR_CNTRL += Polarity;
  TIMERx->BRKETR_CNTRL = tmpreg_BRKETR_CNTRL;
}





 
uint32_t TIMER_GetCounterDirection(MDR_TIMER_TypeDef* TIMERx)
{
  uint32_t bitstatus;

   
  ((void)0);

  if ((TIMERx->CNTRL & ((uint32_t)0x00000008)) == 0)
  {
    bitstatus = (((uint32_t)0x0) << 3);
  }
  else
  {
    bitstatus = (((uint32_t)0x1) << 3);
  }

  return bitstatus;
}





 
FlagStatus TIMER_GetCntWriteComplete(MDR_TIMER_TypeDef* TIMERx)
{
  FlagStatus bitstatus;

   
  ((void)0);

  if ((TIMERx->CNTRL & ((uint32_t)0x00000004)) == 0)
  {
    bitstatus = RESET;
  }
  else
  {
    bitstatus = SET;
  }

  return bitstatus;
}









 
void TIMER_ChnInit(MDR_TIMER_TypeDef* TIMERx, const TIMER_ChnInitTypeDef* TIMER_ChnInitStruct)
{
  uint32_t tmpreg_CH_Number;
  uint32_t tmpreg_CH_CNTRL;
  uint32_t tmpreg_CH_CNTRL2;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRL = TIMER_ChnInitStruct->TIMER_CH_Mode
                  + TIMER_ChnInitStruct->TIMER_CH_ETR_Reset
                  + TIMER_ChnInitStruct->TIMER_CH_BRK_Reset
                  + TIMER_ChnInitStruct->TIMER_CH_REF_Format
                  + (TIMER_ChnInitStruct->TIMER_CH_Prescaler << 6)
                  + TIMER_ChnInitStruct->TIMER_CH_EventSource
                  + (TIMER_ChnInitStruct->TIMER_CH_FilterConf << 0);

  if (TIMER_ChnInitStruct->TIMER_CH_ETR_Ena != DISABLE)
  {
    tmpreg_CH_CNTRL += ((uint32_t)0x00002000);
  }

  tmpreg_CH_Number = TIMER_ChnInitStruct->TIMER_CH_Number;

  *(&TIMERx->CH1_CNTRL + tmpreg_CH_Number) = tmpreg_CH_CNTRL;

  tmpreg_CH_CNTRL2 = TIMER_ChnInitStruct->TIMER_CH_CCR_UpdateMode
                   + TIMER_ChnInitStruct->TIMER_CH_CCR1_EventSource;

  if (TIMER_ChnInitStruct->TIMER_CH_CCR1_Ena != DISABLE)
  {
    tmpreg_CH_CNTRL2 += ((uint32_t)0x00000004);
  }

  *(&TIMERx->CH1_CNTRL2 + tmpreg_CH_Number) = tmpreg_CH_CNTRL2;
}






 
void TIMER_ChnStructInit(TIMER_ChnInitTypeDef* TIMER_ChnInitStruct)
{
  TIMER_ChnInitStruct->TIMER_CH_Number           = ((uint32_t)0x0);
  TIMER_ChnInitStruct->TIMER_CH_Mode             = (((uint32_t)0x0) << 15);
  TIMER_ChnInitStruct->TIMER_CH_ETR_Ena          = DISABLE;
  TIMER_ChnInitStruct->TIMER_CH_ETR_Reset        = (((uint32_t)0x0) << 13);
  TIMER_ChnInitStruct->TIMER_CH_BRK_Reset        = (((uint32_t)0x0) << 12);
  TIMER_ChnInitStruct->TIMER_CH_REF_Format       = (((uint32_t)0x0) << 9);
  TIMER_ChnInitStruct->TIMER_CH_Prescaler        = ((uint32_t)0x0);
  TIMER_ChnInitStruct->TIMER_CH_EventSource      = (((uint32_t)0x0) << 4);
  TIMER_ChnInitStruct->TIMER_CH_FilterConf       = ((uint32_t)0x0);
  TIMER_ChnInitStruct->TIMER_CH_CCR_UpdateMode   = (((uint32_t)0x0) << 3);
  TIMER_ChnInitStruct->TIMER_CH_CCR1_Ena         = DISABLE;
  TIMER_ChnInitStruct->TIMER_CH_CCR1_EventSource = (((uint32_t)0x0) << 0);
}












 

void TIMER_SetChnCompare(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Compare)



{
  volatile uint32_t *tmpreg_CCRx;

   
  ((void)0);
  ((void)0);

  tmpreg_CCRx = &TIMERx->CCR1 + Channel;
  *tmpreg_CCRx = Compare;
}












 

void TIMER_SetChnCompare1(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Compare)



{
  volatile uint32_t *tmpreg_CCR1x;

   
  ((void)0);
  ((void)0);

  tmpreg_CCR1x = &TIMERx->CCR11 + Channel;
  *tmpreg_CCR1x = Compare;
}
















 

void TIMER_ChnCompareConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Compare, uint32_t UpdateMode)



{
  volatile uint32_t *tmpreg_CNTRL2x;
  volatile uint32_t *tmpreg_CCRx;
  uint32_t tmpreg_CNTRL2;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CNTRL2x = &TIMERx->CH1_CNTRL2 + Channel;

  tmpreg_CNTRL2 = *tmpreg_CNTRL2x;
  tmpreg_CNTRL2 &= ~((uint32_t)0x00000008);
  tmpreg_CNTRL2 += UpdateMode;
  *tmpreg_CNTRL2x = tmpreg_CNTRL2;

  tmpreg_CCRx = &TIMERx->CCR1 + Channel;

  *tmpreg_CCRx = Compare;
}
















 

void TIMER_ChnCompare1Config(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Compare, uint32_t UpdateMode)



{
  volatile uint32_t *tmpreg_CNTRL2x;
  volatile uint32_t *tmpreg_CCR1x;
  uint32_t tmpreg_CNTRL2;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CNTRL2x = &TIMERx->CH1_CNTRL2 + Channel;

  tmpreg_CNTRL2 = *tmpreg_CNTRL2x;
  tmpreg_CNTRL2 &= ~((uint32_t)0x00000008);
  tmpreg_CNTRL2 += UpdateMode;
  *tmpreg_CNTRL2x = tmpreg_CNTRL2;

  tmpreg_CCR1x = &TIMERx->CCR11 + Channel;

  *tmpreg_CCR1x = Compare;
}











 

uint32_t TIMER_GetChnCapture(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel)



{
  volatile uint32_t *tmpreg_CCRx;
  uint32_t tmpreg;

   
  ((void)0);
  ((void)0);

  tmpreg_CCRx = &TIMERx->CCR1 + Channel;
  tmpreg = *tmpreg_CCRx;

  return tmpreg;
}











 

uint32_t TIMER_GetChnCapture1(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel)



{
  volatile uint32_t *tmpreg_CCR1x;
  uint32_t tmpreg;

   
  ((void)0);
  ((void)0);

  tmpreg_CCR1x = &TIMERx->CCR11 + Channel;
  tmpreg = *tmpreg_CCR1x;

  return tmpreg;
}













 
void TIMER_ChnETR_Cmd(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, FunctionalState NewState)
{
  volatile uint32_t *tmpreg_CH_CNTRLx;
  uint32_t tmpreg_CH_CNTRL;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;

  tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;

   
  if (NewState != DISABLE)
  {
     
    tmpreg_CH_CNTRL |= ((uint32_t)0x00000100);
  }
  else
  {
     
    tmpreg_CH_CNTRL &= ~((uint32_t)0x00000100);
  }

   
  *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
}















 
void TIMER_ChnETRResetConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t NewState)
{
  volatile uint32_t *tmpreg_CH_CNTRLx;
  uint32_t tmpreg_CH_CNTRL;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;

  tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
  tmpreg_CH_CNTRL &= ~((uint32_t)0x00002000);
  tmpreg_CH_CNTRL += NewState;
  *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
}















 
void TIMER_ChnBRKResetConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t NewState)
{
  volatile uint32_t *tmpreg_CH_CNTRLx;
  uint32_t tmpreg_CH_CNTRL;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;

  tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
  tmpreg_CH_CNTRL &= ~((uint32_t)0x00001000);
  tmpreg_CH_CNTRL += NewState;
  *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
}













 
void TIMER_ChnREFFormatConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Format)
{
  volatile uint32_t *tmpreg_CH_CNTRLx;
  uint32_t tmpreg_CH_CNTRL;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;

  tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
  tmpreg_CH_CNTRL &= ~((uint32_t)0x00000E00);
  tmpreg_CH_CNTRL += Format;
  *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
}

















 
void TIMER_ChnCapturePrescalerConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Prescaler)
{
  volatile uint32_t *tmpreg_CH_CNTRLx;
  uint32_t tmpreg_CH_CNTRL;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;

  tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
  tmpreg_CH_CNTRL &= ~((uint32_t)0x000000C0);
  tmpreg_CH_CNTRL += Prescaler << 6;
  *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
}

















 
void TIMER_ChnEventSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t EventSource)
{
  volatile uint32_t *tmpreg_CH_CNTRLx;
  uint32_t tmpreg_CH_CNTRL;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;

  tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
  tmpreg_CH_CNTRL &= ~((uint32_t)0x00000030);
  tmpreg_CH_CNTRL += EventSource;
  *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
}





























 
void TIMER_ChnFilterConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Filter)
{
  volatile uint32_t *tmpreg_CH_CNTRLx;
  uint32_t tmpreg_CH_CNTRL;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;

  tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
  tmpreg_CH_CNTRL &= ~((uint32_t)0x0000000F);
  tmpreg_CH_CNTRL += Filter << 0;
  *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
}











 
FlagStatus TIMER_GetChnWriteComplete(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel)
{
  volatile uint32_t *tmpreg_CH_CNTRLx;
  FlagStatus bitstatus;

   
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;

  if ((*tmpreg_CH_CNTRLx & ((uint32_t)0x00004000)) == 0)
  {
    bitstatus = RESET;
  }
  else
  {
    bitstatus = SET;
  }

  return bitstatus;
}

















 
void TIMER_ChnCCR1_EventSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t EventSource)
{
  volatile uint32_t *tmpreg_CH_CNTRL2x;
  uint32_t tmpreg_CH_CNTRL2;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRL2x = &TIMERx->CH1_CNTRL2 + Channel;

  tmpreg_CH_CNTRL2 = *tmpreg_CH_CNTRL2x;
  tmpreg_CH_CNTRL2 &= ~((uint32_t)0x00000003);
  tmpreg_CH_CNTRL2 += EventSource;
  *tmpreg_CH_CNTRL2x = tmpreg_CH_CNTRL2;
}













 
void TIMER_ChnCCR1_Cmd(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, FunctionalState NewState)
{
  volatile uint32_t *tmpreg_CH_CNTRL2x;
  uint32_t tmpreg_CH_CNTRL2;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRL2x = &TIMERx->CH1_CNTRL2 + Channel;

  tmpreg_CH_CNTRL2 = *tmpreg_CH_CNTRL2x;

   
  if (NewState != DISABLE)
  {
     
    tmpreg_CH_CNTRL2 |= ((uint32_t)0x00000004);
  }
  else
  {
     
    tmpreg_CH_CNTRL2 &= ~((uint32_t)0x00000004);
  }

   
  *tmpreg_CH_CNTRL2x = tmpreg_CH_CNTRL2;
}









 
void TIMER_ChnOutInit(MDR_TIMER_TypeDef* TIMERx, const TIMER_ChnOutInitTypeDef* TIMER_ChnOutInitStruct)
{
  uint32_t tmpreg_CH_Number;
  uint32_t tmpreg_CH_CNTRL1;
  uint32_t tmpreg_CH_DTG;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRL1 = (TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Polarity << 4)
                   + (TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Source   << 2)
                   + (TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Mode     << 0)
                   + (TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Polarity << 12)
                   + (TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Source   << 10)
                   + (TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Mode     << 8);

  tmpreg_CH_Number = TIMER_ChnOutInitStruct->TIMER_CH_Number;

  *(&TIMERx->CH1_CNTRL1 + tmpreg_CH_Number) = tmpreg_CH_CNTRL1;

  tmpreg_CH_DTG = (TIMER_ChnOutInitStruct->TIMER_CH_DTG_MainPrescaler << 8)
                + (TIMER_ChnOutInitStruct->TIMER_CH_DTG_AuxPrescaler  << 0)
                + TIMER_ChnOutInitStruct->TIMER_CH_DTG_ClockSource;

  *(&TIMERx->CH1_DTG + tmpreg_CH_Number) = tmpreg_CH_DTG;
}






 
void TIMER_ChnOutStructInit(TIMER_ChnOutInitTypeDef* TIMER_ChnOutInitStruct)
{
  TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Polarity   = ((uint32_t)0x0);
  TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Source     = ((uint32_t)0x0);
  TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Mode       = ((uint32_t)0x0);
  TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Polarity   = ((uint32_t)0x0);
  TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Source     = ((uint32_t)0x0);
  TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Mode       = ((uint32_t)0x0);
  TIMER_ChnOutInitStruct->TIMER_CH_DTG_MainPrescaler = 0;
  TIMER_ChnOutInitStruct->TIMER_CH_DTG_AuxPrescaler  = 0;
  TIMER_ChnOutInitStruct->TIMER_CH_DTG_ClockSource   = (((uint32_t)0x0) << 4);
}



























 
void TIMER_ChnOutConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t OutSource, uint32_t Mode, uint32_t Polarity)
{
  volatile uint32_t *tmpreg_CH_CNTRL1x;
  uint32_t tmpreg_CH_CNTRL1;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;

  tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
  tmpreg_CH_CNTRL1 &= ~(((uint32_t)0x00000010) + ((uint32_t)0x0000000C) + ((uint32_t)0x00000003));
  tmpreg_CH_CNTRL1 += (Polarity  << 4)
                    + (OutSource << 2)
                    + (Mode      << 0);
  *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
}

















 
void TIMER_ChnOutSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t OutSource)
{
  volatile uint32_t *tmpreg_CH_CNTRL1x;
  uint32_t tmpreg_CH_CNTRL1;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;

  tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
  tmpreg_CH_CNTRL1 &= ~((uint32_t)0x0000000C);
  tmpreg_CH_CNTRL1 += OutSource << 2;
  *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
}

















 
void TIMER_ChnOutModeConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Mode)
{
  volatile uint32_t *tmpreg_CH_CNTRL1x;
  uint32_t tmpreg_CH_CNTRL1;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;

  tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
  tmpreg_CH_CNTRL1 &= ~((uint32_t)0x00000003);
  tmpreg_CH_CNTRL1 += Mode << 0;
  *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
}















 
void TIMER_ChnOutPolarityConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Polarity)
{
  volatile uint32_t *tmpreg_CH_CNTRL1x;
  uint32_t tmpreg_CH_CNTRL1;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;

  tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
  tmpreg_CH_CNTRL1 &= ~((uint32_t)0x00000010);
  tmpreg_CH_CNTRL1 += Polarity << 4;
  *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
}



























 
void TIMER_ChnNOutConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t OutSource, uint32_t Mode, uint32_t Polarity)
{
  volatile uint32_t *tmpreg_CH_CNTRL1x;
  uint32_t tmpreg_CH_CNTRL1;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;

  tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
  tmpreg_CH_CNTRL1 &= ~(((uint32_t)0x00001000) + ((uint32_t)0x00000C00) + ((uint32_t)0x00000300));
  tmpreg_CH_CNTRL1 += (Polarity  << 12)
                    + (OutSource << 10)
                    + (Mode      << 8);
  *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
}

















 
void TIMER_ChnNOutSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t OutSource)
{
  volatile uint32_t *tmpreg_CH_CNTRL1x;
  uint32_t tmpreg_CH_CNTRL1;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;

  tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
  tmpreg_CH_CNTRL1 &= ~((uint32_t)0x00000C00);
  tmpreg_CH_CNTRL1 += OutSource << 10;
  *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
}

















 
void TIMER_ChnNOutModeConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Mode)
{
  volatile uint32_t *tmpreg_CH_CNTRL1x;
  uint32_t tmpreg_CH_CNTRL1;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;

  tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
  tmpreg_CH_CNTRL1 &= ~((uint32_t)0x00000300);
  tmpreg_CH_CNTRL1 += Mode << 8;
  *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
}















 
void TIMER_ChnNOutPolarityConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Polarity)
{
  volatile uint32_t *tmpreg_CH_CNTRL1x;
  uint32_t tmpreg_CH_CNTRL1;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;

  tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
  tmpreg_CH_CNTRL1 &= ~((uint32_t)0x00001000);
  tmpreg_CH_CNTRL1 += Polarity << 12;
  *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
}



















 
void TIMER_ChnOutDTGConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel,
                         uint32_t MainPrescaler, uint32_t AuxPrescaler, uint32_t ClockSource)
{
  uint32_t tmpreg_CH_DTG;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_CH_DTG = (MainPrescaler << 8)
                + (AuxPrescaler  << 0)
                + ClockSource;

  *(&TIMERx->CH1_DTG + Channel) = tmpreg_CH_DTG;
}





 
uint32_t TIMER_GetStatus(MDR_TIMER_TypeDef* TIMERx)
{
   
  ((void)0);

  return (TIMERx->STATUS);
}
























 
FlagStatus TIMER_GetFlagStatus(MDR_TIMER_TypeDef* TIMERx, uint32_t Flag)
{
  FlagStatus bitstatus;

   
  ((void)0);
  ((void)0);

  if ((TIMERx->STATUS & Flag) == 0)
  {
    bitstatus = RESET;
  }
  else
  {
    bitstatus = SET;
  }

  return bitstatus;
}
























 
void TIMER_ClearFlag(MDR_TIMER_TypeDef* TIMERx, uint32_t Flags)
{
   
  ((void)0);
  ((void)0);

  TIMERx->STATUS &= ~Flags;
}


































 

void TIMER_DMACmd(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_DMASource, uint32_t TIMER_DMAChannel, FunctionalState NewState)




{
  uint32_t tmpreg_DMA_RE;

   
  ((void)0);
  ((void)0);
  ((void)0);

  if(TIMER_DMAChannel == ((uint32_t)0x00000004)){

	  tmpreg_DMA_RE = TIMERx->DMA_RE;

	   
	  if (NewState != DISABLE)
	  {
		 
		tmpreg_DMA_RE |= TIMER_DMASource;
	  }
	  else
	  {
		 
		tmpreg_DMA_RE &= ~TIMER_DMASource;
	  }

	   
	  TIMERx->DMA_RE = tmpreg_DMA_RE;

  }
  else{
	  tmpreg_DMA_RE = TIMERx->DMA_REChx[TIMER_DMAChannel];

	   
	  if (NewState != DISABLE)
	  {
		 
		tmpreg_DMA_RE |= TIMER_DMASource;
	  }
	  else
	  {
		 
		tmpreg_DMA_RE &= ~TIMER_DMASource;
	  }

	   
	  TIMERx->DMA_REChx[TIMER_DMAChannel] = tmpreg_DMA_RE;

  }

}


























 
void TIMER_ITConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_IT, FunctionalState NewState)
{
  uint32_t tmpreg_IE;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpreg_IE = TIMERx->IE;

   
  if (NewState != DISABLE)
  {
     
    tmpreg_IE |= TIMER_IT;
  }
  else
  {
     
    tmpreg_IE &= ~TIMER_IT;
  }

   
  TIMERx->IE = tmpreg_IE;
}
























 
ITStatus TIMER_GetITStatus(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_IT)
{
  ITStatus bitstatus;
  uint32_t tmpreg;

   
  ((void)0);
  ((void)0);

  tmpreg = TIMERx->STATUS & TIMERx->IE & TIMER_IT;

  if (tmpreg == 0)
  {
    bitstatus = RESET;
  }
  else
  {
    bitstatus = SET;
  }

  return bitstatus;
}
















 
void TIMER_BRGInit ( MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_BRG ) {
	uint32_t tmpreg;

	 
	((void)0);
	((void)0);


	if(TIMERx == ((MDR_TIMER_TypeDef *)(0x40098000) ))
		tmpreg = ((MDR_RST_CLK_TypeDef *)(0x40020000) )->UART_CLOCK;
	else

		tmpreg = ((MDR_RST_CLK_TypeDef *)(0x40020000) )->TIM_CLOCK;

	if (TIMERx == ((MDR_TIMER_TypeDef *)(0x40070000) )) {
		tmpreg &= ~((uint32_t)0x000000FF);
		tmpreg |= TIMER_BRG << 0;
		tmpreg |= ((uint32_t)0x01000000);
	}
	else
		if (TIMERx == ((MDR_TIMER_TypeDef *)(0x40078000) )) {
			tmpreg &= ~((uint32_t)0x0000FF00);
			tmpreg |= TIMER_BRG << 8;
			tmpreg |= ((uint32_t)0x02000000);
		}
		else
			if (TIMERx == ((MDR_TIMER_TypeDef *)(0x40080000) )) {
				tmpreg &= ~((uint32_t)0x00FF0000);
				tmpreg |= TIMER_BRG << 16;
				tmpreg |= ((uint32_t)0x04000000);
			}

			else
				if(TIMERx == ((MDR_TIMER_TypeDef *)(0x40098000) )) {
					tmpreg &= ~((uint32_t)0x00FF0000);
					tmpreg |= TIMER_BRG << 16;
					tmpreg |= ((uint32_t)0x04000000);
				} 



	if(TIMERx == ((MDR_TIMER_TypeDef *)(0x40098000) ))
		((MDR_RST_CLK_TypeDef *)(0x40020000) )->UART_CLOCK = tmpreg;
	else

		((MDR_RST_CLK_TypeDef *)(0x40020000) )->TIM_CLOCK = tmpreg;

}

   

   

   



 

