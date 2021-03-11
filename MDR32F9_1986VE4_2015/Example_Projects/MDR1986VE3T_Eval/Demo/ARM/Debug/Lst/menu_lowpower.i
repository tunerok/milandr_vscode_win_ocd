#line 1 "..\\..\\src\\Menu_lowpower.c"

















 
 
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





 
#line 21 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_port.h"





















 

 







 
#line 34 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_port.h"
#line 35 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_port.h"




 



 



 

#line 68 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_port.h"



 

typedef enum
{
  PORT_OE_IN            = 0x0,
  PORT_OE_OUT           = 0x1
}PORT_OE_TypeDef;






 

typedef enum
{
  PORT_MODE_ANALOG      = 0x0,
  PORT_MODE_DIGITAL     = 0x1
}PORT_MODE_TypeDef;






 

typedef enum
{
  PORT_PULL_UP_OFF      = 0x0,
  PORT_PULL_UP_ON       = 0x1
}PORT_PULL_UP_TypeDef;






 

typedef enum
{
  PORT_PULL_DOWN_OFF    = 0x0,
  PORT_PULL_DOWN_ON     = 0x1
}PORT_PULL_DOWN_TypeDef;






 

typedef enum
{
  PORT_PD_SHM_OFF       = 0x0,
  PORT_PD_SHM_ON        = 0x1
}PORT_PD_SHM_TypeDef;







 

typedef enum
{
  PORT_PD_DRIVER        = 0x0,
  PORT_PD_OPEN          = 0x1
}PORT_PD_TypeDef;





 

typedef enum
{
  PORT_GFEN_OFF         = 0x0,
  PORT_GFEN_ON          = 0x1
}PORT_GFEN_TypeDef;






 

typedef enum
{
  PORT_FUNC_PORT        = 0x0,
  PORT_FUNC_MAIN        = 0x1,
  PORT_FUNC_ALTER       = 0x2,
  PORT_FUNC_OVERRID     = 0x3
}PORT_FUNC_TypeDef;






 

typedef enum
{
  PORT_OUTPUT_OFF       = 0x0,
  PORT_SPEED_SLOW       = 0x1,
  PORT_SPEED_FAST       = 0x2,
  PORT_SPEED_MAXFAST    = 0x3
}PORT_SPEED_TypeDef;







 

typedef struct
{
  uint16_t PORT_Pin;                     
 
  PORT_OE_TypeDef PORT_OE;               
 
  PORT_PULL_UP_TypeDef PORT_PULL_UP;     
 
  PORT_PULL_DOWN_TypeDef PORT_PULL_DOWN; 
 
  PORT_PD_SHM_TypeDef PORT_PD_SHM;       
 
  PORT_PD_TypeDef PORT_PD;               
 
  PORT_GFEN_TypeDef PORT_GFEN;           
 
  PORT_FUNC_TypeDef PORT_FUNC;           
 
  PORT_SPEED_TypeDef PORT_SPEED;         
 
  PORT_MODE_TypeDef PORT_MODE;           
 
}PORT_InitTypeDef;




 

typedef enum
{
  Bit_RESET = 0,
  Bit_SET
}BitAction;



   



 



 

#line 251 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_port.h"












   



 

#line 286 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_port.h"




#line 306 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_port.h"

   

   



 

   



 

void PORT_DeInit(MDR_PORT_TypeDef* PORTx);
void PORT_Init(MDR_PORT_TypeDef* PORTx, const PORT_InitTypeDef* PORT_InitStruct);
void PORT_StructInit(PORT_InitTypeDef* PORT_InitStruct);

uint8_t PORT_ReadInputDataBit(MDR_PORT_TypeDef* PORTx, uint32_t PORT_Pin);
uint32_t PORT_ReadInputData(MDR_PORT_TypeDef* PORTx);

void PORT_SetBits(MDR_PORT_TypeDef* PORTx, uint32_t PORT_Pin);
void PORT_ResetBits(MDR_PORT_TypeDef* PORTx, uint32_t PORT_Pin);
void PORT_WriteBit(MDR_PORT_TypeDef* PORTx, uint32_t PORT_Pin, BitAction BitVal);
void PORT_Write(MDR_PORT_TypeDef* PORTx, uint32_t PortVal);

   

   

   









 
#line 22 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_power.h"





















 

 







 
#line 34 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_power.h"



 



 



 

   



 



 


#line 66 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_power.h"

#line 75 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_power.h"

   



 
#line 89 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_power.h"

#line 98 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_power.h"

   





 

#line 115 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_power.h"

#line 124 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_power.h"

   



 











   




 






   



 






   



 





   



 





   




 









   

   



 

   



 

void POWER_DeInit(void);

void POWER_DUccMode(uint32_t DUccMode);
void POWER_DUccTrim(uint32_t DUccTrim);
void POWER_DUccStandby(void);
void POWER_SetFlagPOR(void);
ErrorStatus POWER_FlagPORstatus(void);
void POWER_PVDenable(FunctionalState NewState);
void POWER_PVDlevelConfig(uint32_t POWER_PVDlevel);
void POWER_PVBDlevelConfig(uint32_t POWER_PVBDlevel);
FlagStatus POWER_GetFlagStatus(uint32_t POWER_FLAG);
void POWER_ClearFlag(uint32_t POWER_FLAG);
void POWER_PVD_ITconfig(uint32_t POWER_IT, FunctionalState NewState);
void POWER_PVD_INVconfig(uint32_t POWER_INV, FunctionalState NewState);



	void POWER_EnterSLEEPMode(void);
	void POWER_SetTrim(uint32_t ducc_trim);

void POWER_EnterSTANDBYMode(void);

   

   

   









 
#line 23 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"





















 

 







 
#line 34 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"



 



 



 



 

typedef struct
{
  uint32_t CPU_CLK_Frequency;
  uint32_t USB_CLK_Frequency;
  uint32_t ADC_CLK_Frequency;
  uint32_t RTCHSI_Frequency;
  uint32_t RTCHSE_Frequency;
}RST_CLK_FreqTypeDef;



 

typedef struct {
     uint32_t REG_0F;
} Init_NonVolatile_RST_CLK_TypeDef;

   



 



 



 









   





 



 









   





 



 









   



 



 











   



 



 

#line 176 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"



   




 



 











   



 



 

#line 226 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"



   




 



 

#line 249 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

#line 259 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

   



 



 











   



 



 
#line 296 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

#line 304 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"
   



 



 

#line 323 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

#line 333 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

   



 



 
#line 349 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

#line 356 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"
   



 

 

 
#line 374 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

#line 384 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"
   




 



 






#line 440 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

#line 477 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

#line 511 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

#line 521 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"












   



 



 

#line 550 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

#line 558 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

   






 



 

#line 581 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

#line 591 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

   



 



 
#line 610 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

#line 620 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

   

   



 

   



 

void RST_CLK_DeInit(void);
void RST_CLK_WarmDeInit(void);


void RST_CLK_HSEconfig(uint32_t RST_CLK_HSE);
ErrorStatus RST_CLK_HSEstatus(void);

void RST_CLK_LSEconfig(uint32_t RST_CLK_LSE);
ErrorStatus RST_CLK_LSEstatus(void);

void RST_CLK_HSIcmd(FunctionalState NewState);
void RST_CLK_HSIadjust(uint32_t HSItrimValue);
ErrorStatus RST_CLK_HSIstatus(void);

void RST_CLK_LSIcmd(FunctionalState NewState);
void RST_CLK_LSIadjust(uint32_t LSItrimValue);
ErrorStatus RST_CLK_LSIstatus(void);

void RST_CLK_CPU_PLLconfig(uint32_t RST_CLK_CPU_PLLsource, uint32_t RST_CLK_CPU_PLLmul);
void RST_CLK_CPU_PLLuse(FunctionalState UsePLL);
void RST_CLK_CPU_PLLcmd(FunctionalState NewState);
ErrorStatus RST_CLK_CPU_PLLstatus(void);

void RST_CLK_CPUclkPrescaler(uint32_t CPUclkDivValue);
void RST_CLK_CPUclkSelection(uint32_t CPU_CLK);

void RST_CLK_USB_PLLconfig(uint32_t RST_CLK_USB_PLLsource, uint32_t RST_CLK_USB_PLLmul);
void RST_CLK_USB_PLLuse(FunctionalState UsePLL);
void RST_CLK_USB_PLLcmd(FunctionalState NewState);
ErrorStatus RST_CLK_USB_PLLstatus(void);

void RST_CLK_USBclkPrescaler(FunctionalState NewState);
void RST_CLK_USBclkEnable(FunctionalState NewState);

void RST_CLK_ADCclkSelection(uint32_t ADC_CLK);
void RST_CLK_ADCclkPrescaler(uint32_t ADCclkDivValue);
void RST_CLK_ADCclkEnable(FunctionalState NewState);

void RST_CLK_HSIclkPrescaler(uint32_t HSIclkDivValue);
void RST_CLK_RTC_HSIclkEnable(FunctionalState NewState);

void RST_CLK_HSEclkPrescaler(uint32_t HSEclkDivValue);
void RST_CLK_RTC_HSEclkEnable(FunctionalState NewState);

void RST_CLK_PCLKcmd(uint32_t RST_CLK_PCLK, FunctionalState NewState);

	void RST_CLK_PCLK2cmd ( uint32_t RST_CLK_PCLK2, FunctionalState NewState);
	void RST_CLK_AUCclkDeInit(void);
	void RST_CLK_AUCclkSelection(uint32_t AUC_CLK);
	void RST_CLK_AUCclkPrescaler(uint32_t AUCclkDIVValue);
	void RST_CLK_AUCclkCMD(FunctionalState NewState);

void RST_CLK_GetClocksFreq(RST_CLK_FreqTypeDef* RST_CLK_Clocks);

FlagStatus RST_CLK_GetFlagStatus(uint32_t RST_CLK_FLAG);


	void RST_CLK_HSE2config(uint32_t RST_CLK_HSE2);
	ErrorStatus RST_CLK_HSE2status(void);


   

   

   









 
#line 24 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_bkp.h"





















 

 







 
#line 34 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_bkp.h"
#line 35 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_bkp.h"


 




 



 



 

   



 

   



 



 

#line 84 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_bkp.h"

#line 94 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_bkp.h"

#line 103 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_bkp.h"

   



 











   



 







   



 



   



 



   



 











   

   



 
void BKP_DeInit(void);




void BKP_RTCclkSource(uint32_t RTC_CLK);
void BKP_RTC_Enable(FunctionalState NewState);
void BKP_RTC_Calibration(uint32_t RTC_Calibration);
void BKP_RTC_Reset(FunctionalState NewState);
void BKP_RTC_ITConfig(uint32_t RTC_IT, FunctionalState NewState);
uint32_t  BKP_RTC_GetCounter(void);
void BKP_RTC_SetCounter(uint32_t CounterValue);
void BKP_RTC_SetAlarm(uint32_t AlarmValue);
uint32_t  BKP_RTC_GetDivider(void);
void BKP_RTC_SetPrescaler(uint32_t PrescalerValue);
void BKP_RTC_WaitForUpdate(void);
FlagStatus BKP_RTC_GetFlagStatus(uint32_t RTC_FLAG);

   

   

   









 

#line 25 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\Inc\\systick.h"


















 

 



 
#line 27 "..\\..\\Inc\\systick.h"
#line 1 "..\\..\\Inc\\types.h"

















 


 



 
#line 27 "..\\..\\Inc\\types.h"

typedef unsigned char const    ucint8_t;
typedef volatile unsigned char vuint8_t;
typedef volatile unsigned long vuint32_t;

typedef enum {FALSE = 0, TRUE = !FALSE} bool;





 

#line 28 "..\\..\\Inc\\systick.h"



 



 



 



 

 
void SysTickStart(uint32_t ticks);
void SysTickStop(void);

 
void SysTickDelay(uint32_t val);

   

   

   

   





 

#line 26 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\Inc\\Menu.h"


















 

 



 
#line 27 "..\\..\\Inc\\Menu.h"



 



 



 



   



 



   



 

void Menu_Init(void);
void DisplayMenuTitle(ucint8_t *ptr);
void DisplayMenu(void);
 
void BackToMenuOnSel(void);
void BackToMenuOnBack(void);
 
void ReadKey(void);

   

   

   





 

#line 27 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\Inc\\Menu_items.h"

















 

 





 



 



 



 

void ElementsFunc(void);
void IndicatorsFunc(void);

   



 

void LightsOnFunc(void);

   



 

void FontFunc(void);
void StyleFunc(void);
void ShiftFunc(void);
void BookFunc(void);
void AboutFunc(void);

   



 

void UARTwFIFOFunc(void);
void UARTFunc(void);

   



 

void TSENSORFunc(void);

   



 

void TimeAdjustFunc(void);
void TimeShowFunc(void);
void DateAdjustFunc(void);
void DateShowFunc(void);
void AlarmAdjustFunc(void);
void AlarmShowFunc(void);

   



 

void VCOMFunc(void);

   



 

void STANDBYMode_WAKEUP(void);
void STANDBYMode_RTCAlarm(void);
void STOPMode_RTCAlarm(void);

   

   

   

   





 

#line 28 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\Inc\\leds.h"


















 

 



 
#line 27 "..\\..\\Inc\\leds.h"
#line 28 "..\\..\\Inc\\leds.h"
#line 29 "..\\..\\Inc\\leds.h"



 



 



 
#line 48 "..\\..\\Inc\\leds.h"

   



 
 


   



 

extern uint32_t CurrentLights;           

   



 

void ShiftLights(void);

   

   

   





 

#line 29 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\Inc\\lcd.h"

















 




 
#line 25 "..\\..\\Inc\\lcd.h"
#line 26 "..\\..\\Inc\\lcd.h"
#line 27 "..\\..\\Inc\\lcd.h"
#line 28 "..\\..\\Inc\\lcd.h"
#line 29 "..\\..\\Inc\\lcd.h"



 



 



 

 
typedef enum
{
    LCD_CRYSTAL1    = 0,
    LCD_CRYSTAL2    = 1,
    NUM_LCD_CRYSTALS
}LCD_Crystal;

 
typedef enum
{
    MET_OR          = 0,
    MET_XOR         = 1,
    MET_NOT_OR      = 2,
    MET_NOT_XOR     = 3,
    MET_AND         = 4,
    NUM_LCD_METHOD
}LCD_Method;

   



 

 









 






 



   



 

 






   



 

 
extern LCD_Crystal CurrentCrystal;   
extern LCD_Method CurrentMethod;     

   

 
#line 1 "..\\..\\Inc\\lcd_MDR1986VE3.h"



















 

 



 
#line 28 "..\\..\\Inc\\lcd_MDR1986VE3.h"
#line 29 "..\\..\\Inc\\lcd_MDR1986VE3.h"
#line 30 "..\\..\\Inc\\lcd_MDR1986VE3.h"
#line 31 "..\\..\\Inc\\lcd_MDR1986VE3.h"
#line 1 "..\\..\\Inc\\lcd.h"

















 

#line 137 "..\\..\\Inc\\lcd.h"



 

#line 32 "..\\..\\Inc\\lcd_MDR1986VE3.h"



 



 



 



 

 
typedef struct
{
    uint32_t Data;
    uint32_t Cmd;
}LCD_Ports;

   



 

extern const LCD_Ports CrystalPorts[NUM_LCD_CRYSTALS];

   



 




   

   

   

   





 

#line 115 "..\\..\\Inc\\lcd.h"




 

void ResetLCD(void);
void SetCrystal(LCD_Crystal num);
void WriteLCD_Cmd(uint32_t val);
void WriteLCD_Data(uint32_t val);
uint32_t ReadLCD_Cmd(void);
uint32_t ReadLCD_Data(void);
void LCD_INIT(void);
void LCD_CLS(void);

   

   

   





 

#line 30 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\Inc\\text.h"


















 

 



 
#line 1 "..\\..\\Inc\\font_defs.h"

















 

 



 
#line 26 "..\\..\\Inc\\font_defs.h"



 



 



 



 
typedef struct
{
  uint32_t  Height;         
  uint32_t  Width;          
  uint32_t  Count;          
  ucint8_t  *pData;         
}sFONT;

   



 

extern sFONT Font_6x8;            
extern sFONT Font_7x10_thin;      
extern sFONT Font_7x10_bold;      
extern sFONT Font_12x16;          

   

   

   





 
#line 27 "..\\..\\Inc\\text.h"



 



 



 




 
#line 50 "..\\..\\Inc\\text.h"

   



 

 
typedef enum
{
  StyleSimple,
  StyleBlink,
  StyleFlipFlop,
  StyleVibratory
}TextStyle;

   



 



 



   



 

 
extern sFONT *CurrentFont;

   



 

 
void LCD_PUT_BYTE(uint8_t x, uint8_t y, uint8_t data);
 
void LCD_PUTC(uint8_t x, uint8_t y, uint8_t ch);
void LCD_PUTS(uint8_t x, uint8_t y, ucint8_t* str);
void LCD_PUTS_Ex(uint8_t x, uint8_t y, ucint8_t* str, uint8_t style);

   

   

   





 

#line 31 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\Inc\\joystick.h"

















 

 



 
#line 26 "..\\..\\Inc\\joystick.h"
#line 27 "..\\..\\Inc\\joystick.h"
#line 28 "..\\..\\Inc\\joystick.h"



 



 



 

 
typedef enum
{
  SEL        = 0,
  UP         = 1,
  DOWN       = 2,
  LEFT       = 3,
  RIGHT      = 4,
  BACK		 = 5,
  NOKEY      = 6,
  MULTIPLE   = 7,
  NUM_KEY_CODES
}KeyCode;

   



 

 


#line 76 "..\\..\\Inc\\joystick.h"

   



 






   



 

KeyCode GetKey(void);

   

   

   





 

#line 32 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\Inc\\time.h"


















 

 



 



 



 



 



 

   



 

void Date_Update(void);
void Calendar_Init(void);

   

   

   

   





 

#line 33 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\Inc\\demo_init.h"

















 

 





 



 



 

static PORT_InitTypeDef PortInitStructure;

   



 

void Demo_Init(void);

   

   

   



#line 34 "..\\..\\src\\Menu_lowpower.c"
#line 1 "..\\..\\Inc\\MDR1986VE3_it.h"

















 

 



 
#line 26 "..\\..\\Inc\\MDR1986VE3_it.h"
#line 27 "..\\..\\Inc\\MDR1986VE3_it.h"



 



 



 

typedef void (* tUARTFunc)(void);
typedef void (* tUARTLineStateFunc)(uint32_t);

   



 

 



   




 

 
extern vuint32_t TimerCounter;

 
extern vuint32_t ADC1_Value;

 
extern tUARTFunc pfUARTSenderFunc;
extern tUARTFunc pfUARTReceiverFunc;
extern tUARTLineStateFunc pfUARTLineStateFunc;

 
extern vuint32_t STOPModeStatus;

 
extern vuint32_t AlarmSetStatus;

   

   

   





 

#line 35 "..\\..\\src\\Menu_lowpower.c"



 



 



 



 

   



 

typedef struct
{
  uint32_t OE;
  uint32_t FUNC;
  uint32_t ANALOG;
  uint32_t PULL;
  uint32_t PD;
  uint32_t PWR;
  uint32_t GFEN;
}PORTConfigData;

typedef struct
{
  uint32_t PVDCS;
  uint32_t CPU_CLOCK;
  uint32_t PER_CLOCK;
}ClockConfigData;

   



 

   



 
static PORTConfigData PORTA_Data, PORTB_Data, PORTC_Data, PORTD_Data, PORTE_Data,
                      PORTF_Data;

static ClockConfigData ClockData;

   



 







 
void LowPower_Init(void)
{
  RST_CLK_PCLKcmd(((uint32_t)(1 << ((((uint32_t)(0x40058000)) >> 15) & 0x1F))), ENABLE);
}








 
static void PORT_SaveConfig(void)
{
  PORTA_Data.ANALOG = ((MDR_PORT_TypeDef *)(0x400A8000) )->ANALOG;
  PORTA_Data.FUNC   = ((MDR_PORT_TypeDef *)(0x400A8000) )->FUNC;
  PORTA_Data.GFEN   = ((MDR_PORT_TypeDef *)(0x400A8000) )->GFEN;
  PORTA_Data.OE     = ((MDR_PORT_TypeDef *)(0x400A8000) )->OE;
  PORTA_Data.PD     = ((MDR_PORT_TypeDef *)(0x400A8000) )->PD;
  PORTA_Data.PULL   = ((MDR_PORT_TypeDef *)(0x400A8000) )->PULL;
  PORTA_Data.PWR    = ((MDR_PORT_TypeDef *)(0x400A8000) )->PWR;

  PORTB_Data.ANALOG = ((MDR_PORT_TypeDef *)(0x400B0000) )->ANALOG;
  PORTB_Data.FUNC   = ((MDR_PORT_TypeDef *)(0x400B0000) )->FUNC;
  PORTB_Data.GFEN   = ((MDR_PORT_TypeDef *)(0x400B0000) )->GFEN;
  PORTB_Data.OE     = ((MDR_PORT_TypeDef *)(0x400B0000) )->OE;
  PORTB_Data.PD     = ((MDR_PORT_TypeDef *)(0x400B0000) )->PD;
  PORTB_Data.PULL   = ((MDR_PORT_TypeDef *)(0x400B0000) )->PULL;
  PORTB_Data.PWR    = ((MDR_PORT_TypeDef *)(0x400B0000) )->PWR;

  PORTC_Data.ANALOG = ((MDR_PORT_TypeDef *)(0x400B8000) )->ANALOG;
  PORTC_Data.FUNC   = ((MDR_PORT_TypeDef *)(0x400B8000) )->FUNC;
  PORTC_Data.GFEN   = ((MDR_PORT_TypeDef *)(0x400B8000) )->GFEN;
  PORTC_Data.OE     = ((MDR_PORT_TypeDef *)(0x400B8000) )->OE;
  PORTC_Data.PD     = ((MDR_PORT_TypeDef *)(0x400B8000) )->PD;
  PORTC_Data.PULL   = ((MDR_PORT_TypeDef *)(0x400B8000) )->PULL;
  PORTC_Data.PWR    = ((MDR_PORT_TypeDef *)(0x400B8000) )->PWR;

  PORTD_Data.ANALOG = ((MDR_PORT_TypeDef *)(0x400C0000) )->ANALOG;
  PORTD_Data.FUNC   = ((MDR_PORT_TypeDef *)(0x400C0000) )->FUNC;
  PORTD_Data.GFEN   = ((MDR_PORT_TypeDef *)(0x400C0000) )->GFEN;
  PORTD_Data.OE     = ((MDR_PORT_TypeDef *)(0x400C0000) )->OE;
  PORTD_Data.PD     = ((MDR_PORT_TypeDef *)(0x400C0000) )->PD;
  PORTD_Data.PULL   = ((MDR_PORT_TypeDef *)(0x400C0000) )->PULL;
  PORTD_Data.PWR    = ((MDR_PORT_TypeDef *)(0x400C0000) )->PWR;

  PORTE_Data.ANALOG = ((MDR_PORT_TypeDef *)(0x400C8000) )->ANALOG;
  PORTE_Data.FUNC   = ((MDR_PORT_TypeDef *)(0x400C8000) )->FUNC;
  PORTE_Data.GFEN   = ((MDR_PORT_TypeDef *)(0x400C8000) )->GFEN;
  PORTE_Data.OE     = ((MDR_PORT_TypeDef *)(0x400C8000) )->OE;
  PORTE_Data.PD     = ((MDR_PORT_TypeDef *)(0x400C8000) )->PD;
  PORTE_Data.PULL   = ((MDR_PORT_TypeDef *)(0x400C8000) )->PULL;
  PORTE_Data.PWR    = ((MDR_PORT_TypeDef *)(0x400C8000) )->PWR;

  PORTF_Data.ANALOG = ((MDR_PORT_TypeDef *)(0x400E8000) )->ANALOG;
  PORTF_Data.FUNC   = ((MDR_PORT_TypeDef *)(0x400E8000) )->FUNC;
  PORTF_Data.GFEN   = ((MDR_PORT_TypeDef *)(0x400E8000) )->GFEN;
  PORTF_Data.OE     = ((MDR_PORT_TypeDef *)(0x400E8000) )->OE;
  PORTF_Data.PD     = ((MDR_PORT_TypeDef *)(0x400E8000) )->PD;
  PORTF_Data.PULL   = ((MDR_PORT_TypeDef *)(0x400E8000) )->PULL;
  PORTF_Data.PWR    = ((MDR_PORT_TypeDef *)(0x400E8000) )->PWR;

   
  PORT_DeInit(((MDR_PORT_TypeDef *)(0x400A8000) ));
  PORT_DeInit(((MDR_PORT_TypeDef *)(0x400B0000) ));
  PORT_DeInit(((MDR_PORT_TypeDef *)(0x400B8000) ));
  PORT_DeInit(((MDR_PORT_TypeDef *)(0x400C0000) ));
  PORT_DeInit(((MDR_PORT_TypeDef *)(0x400C8000) ));
  PORT_DeInit(((MDR_PORT_TypeDef *)(0x400E8000) ));
}







 
static void PORT_RestoreConfig(void)
{
  ((MDR_PORT_TypeDef *)(0x400A8000) )->ANALOG = PORTA_Data.ANALOG;
  ((MDR_PORT_TypeDef *)(0x400A8000) )->FUNC   = PORTA_Data.FUNC;
  ((MDR_PORT_TypeDef *)(0x400A8000) )->GFEN   = PORTA_Data.GFEN;
  ((MDR_PORT_TypeDef *)(0x400A8000) )->OE     = PORTA_Data.OE;
  ((MDR_PORT_TypeDef *)(0x400A8000) )->PD     = PORTA_Data.PD;
  ((MDR_PORT_TypeDef *)(0x400A8000) )->PULL   = PORTA_Data.PULL;
  ((MDR_PORT_TypeDef *)(0x400A8000) )->PWR    = PORTA_Data.PWR;

  ((MDR_PORT_TypeDef *)(0x400B0000) )->ANALOG = PORTB_Data.ANALOG;
  ((MDR_PORT_TypeDef *)(0x400B0000) )->FUNC   = PORTB_Data.FUNC;
  ((MDR_PORT_TypeDef *)(0x400B0000) )->GFEN   = PORTB_Data.GFEN;
  ((MDR_PORT_TypeDef *)(0x400B0000) )->OE     = PORTB_Data.OE;
  ((MDR_PORT_TypeDef *)(0x400B0000) )->PD     = PORTB_Data.PD;
  ((MDR_PORT_TypeDef *)(0x400B0000) )->PULL   = PORTB_Data.PULL;
  ((MDR_PORT_TypeDef *)(0x400B0000) )->PWR    = PORTB_Data.PWR;

  ((MDR_PORT_TypeDef *)(0x400B8000) )->ANALOG = PORTC_Data.ANALOG;
  ((MDR_PORT_TypeDef *)(0x400B8000) )->FUNC   = PORTC_Data.FUNC;
  ((MDR_PORT_TypeDef *)(0x400B8000) )->GFEN   = PORTC_Data.GFEN;
  ((MDR_PORT_TypeDef *)(0x400B8000) )->OE     = PORTC_Data.OE;
  ((MDR_PORT_TypeDef *)(0x400B8000) )->PD     = PORTC_Data.PD;
  ((MDR_PORT_TypeDef *)(0x400B8000) )->PULL   = PORTC_Data.PULL;
  ((MDR_PORT_TypeDef *)(0x400B8000) )->PWR    = PORTC_Data.PWR;

  ((MDR_PORT_TypeDef *)(0x400C0000) )->ANALOG = PORTD_Data.ANALOG;
  ((MDR_PORT_TypeDef *)(0x400C0000) )->FUNC   = PORTD_Data.FUNC;
  ((MDR_PORT_TypeDef *)(0x400C0000) )->GFEN   = PORTD_Data.GFEN;
  ((MDR_PORT_TypeDef *)(0x400C0000) )->OE     = PORTD_Data.OE;
  ((MDR_PORT_TypeDef *)(0x400C0000) )->PD     = PORTD_Data.PD;
  ((MDR_PORT_TypeDef *)(0x400C0000) )->PULL   = PORTD_Data.PULL;
  ((MDR_PORT_TypeDef *)(0x400C0000) )->PWR    = PORTD_Data.PWR;

  ((MDR_PORT_TypeDef *)(0x400C8000) )->ANALOG = PORTE_Data.ANALOG;
  ((MDR_PORT_TypeDef *)(0x400C8000) )->FUNC   = PORTE_Data.FUNC;
  ((MDR_PORT_TypeDef *)(0x400C8000) )->GFEN   = PORTE_Data.GFEN;
  ((MDR_PORT_TypeDef *)(0x400C8000) )->OE     = PORTE_Data.OE;
  ((MDR_PORT_TypeDef *)(0x400C8000) )->PD     = PORTE_Data.PD;
  ((MDR_PORT_TypeDef *)(0x400C8000) )->PULL   = PORTE_Data.PULL;
  ((MDR_PORT_TypeDef *)(0x400C8000) )->PWR    = PORTE_Data.PWR;

  ((MDR_PORT_TypeDef *)(0x400E8000) )->ANALOG = PORTF_Data.ANALOG;
  ((MDR_PORT_TypeDef *)(0x400E8000) )->FUNC   = PORTF_Data.FUNC;
  ((MDR_PORT_TypeDef *)(0x400E8000) )->GFEN   = PORTF_Data.GFEN;
  ((MDR_PORT_TypeDef *)(0x400E8000) )->OE     = PORTF_Data.OE;
  ((MDR_PORT_TypeDef *)(0x400E8000) )->PD     = PORTF_Data.PD;
  ((MDR_PORT_TypeDef *)(0x400E8000) )->PULL   = PORTF_Data.PULL;
  ((MDR_PORT_TypeDef *)(0x400E8000) )->PWR    = PORTF_Data.PWR;
}







 
void Clock_SaveConfig(void)
{
  ClockData.PVDCS           = ((MDR_POWER_TypeDef *)(0x40058000) )->PVDCS;
  ClockData.CPU_CLOCK       = ((MDR_RST_CLK_TypeDef *)(0x40020000) )->CPU_CLOCK;
  ClockData.PER_CLOCK       = ((MDR_RST_CLK_TypeDef *)(0x40020000) )->PER_CLOCK;
}







 
void Clock_RestoreConfig(void)
{
  ((MDR_POWER_TypeDef *)(0x40058000) )->PVDCS       = ClockData.PVDCS;
  ((MDR_RST_CLK_TypeDef *)(0x40020000) )->CPU_CLOCK = ClockData.CPU_CLOCK;
  ((MDR_RST_CLK_TypeDef *)(0x40020000) )->PER_CLOCK = ClockData.PER_CLOCK;
}










 
void STANDBYMode_WAKEUP(void)
{
   
  LCD_CLS();
  CurrentMethod = MET_AND;
  CurrentFont = &Font_6x8;
  DisplayMenuTitle("STANDBY. Exit: WAKEUP");
  while((GetKey() == SEL)){};

  LCD_PUTS(0, 8 + 4, "                    ");
  LCD_PUTS(0, 8 + 4 + 8 + 2, "                    ");
  LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2, "MCU in STANDBY Mode ");
  LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, "To exit press Wakeup");
  LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, "                     ");

   
  POWER_EnterSTANDBYMode();
}










 
void STANDBYMode_RTCAlarm(void)
{
   
  LCD_CLS();
  CurrentMethod = MET_AND;
  CurrentFont = &Font_6x8;
  DisplayMenuTitle("STANDBY. Exit: Alarm");
  while((GetKey() == SEL)){};

  if((((MDR_BKP_TypeDef *)(0x400D8000) )->REG_00 != 0x1234))
  {
    LCD_PUTS(0, 8 + 4, "RTC is not configured");
    LCD_PUTS(0, 8 + 4 + 8 + 2, "Please, use the ");
    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2, "Time Adjust menu and ");
    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, "Alarm Adjust menu to ");
    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, "set the Alarm time. ");
    while(!(GetKey() == SEL)){};
    while((GetKey() == SEL)){};

     
    DisplayMenu();
    return;
  }

  LCD_PUTS(0, 8 + 4, "                    ");
  LCD_PUTS(0, 8 + 4 + 8 + 2, "                    ");
  LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2, " MCU in STANDBY Mode");
  LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, " Wait For RTC Alarm ");
  LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, "                    ");

   
  POWER_EnterSTANDBYMode();
}








 
void STOPMode_RTCAlarm(void)
{
  uint32_t tmp;

   
  LCD_CLS();
  CurrentMethod = MET_AND;
  CurrentFont = &Font_6x8;
  DisplayMenuTitle("STOP. Exit: Alarm");
  while((GetKey() == SEL)){};

  if((((MDR_BKP_TypeDef *)(0x400D8000) )->REG_00 != 0x1234) || (((MDR_BKP_TypeDef *)(0x400D8000) )->RTC_PRL != 32768))
  {
    LCD_PUTS(0, 8 + 4, "RTC is not configured");
    LCD_PUTS(0, 8 + 4 + 8 + 2, "Please, use the ");
    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2, "Time Adjust menu and ");
    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, "Alarm Adjust menu to ");
    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, "set the Alarm time.");
    while(!(GetKey() == SEL)){};
    while((GetKey() == SEL)){};

     
    DisplayMenu();
    return;
  }

  STOPModeStatus = 1;

  LCD_PUTS(0, 8 + 4, "                     ");
  LCD_PUTS(0, 8 + 4 + 8 + 2, "                     ");
  LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2, "  MCU in STOP Mode   ");
  LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, " Wait For RTC Alarm  ");
  LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, "                     ");

  
 
  PORT_SaveConfig();

   
  Clock_SaveConfig();

   
  
  
  

   
  POWER_EnterSTANDBYMode ();

   
  Clock_RestoreConfig();

   
  PORT_RestoreConfig();

  LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2, "Wake-Up by RTC Alarm");
  LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, "Press SEL to continue");

   
  while(!(GetKey() == SEL)){};
  while((GetKey() == SEL)){};

   
  DisplayMenu();
}

   

   

   

   



 

