#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_eth.c"





















 

 
#line 1 "..\\..\\Config\\MDR32F9Qx_config.h"

















 





















 

 



#line 1 "..\\..\\Config\\MDR32F9Qx_board.h"

















 

 




 




 

 

 

 

 

 



 

 

 







 

#line 47 "..\\..\\Config\\MDR32F9Qx_config.h"
#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_lib.h"





















 

 







#line 59 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_lib.h"



 










 
#line 48 "..\\..\\Config\\MDR32F9Qx_config.h"
#line 1 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"
 
 





 







 




  
 







#line 37 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"







 

     

     
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




     

     





     





     





     

     





     





     





     

     





     





     





     

     


     


     


     

     


     


     


     

     



     



     


     
    
 



#line 208 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"

     







     










     











#line 272 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"



 



#line 49 "..\\..\\Config\\MDR32F9Qx_config.h"

#line 56 "..\\..\\Config\\MDR32F9Qx_config.h"


 
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"





















 
 





 



 



 






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
  ARINC429T1_IRQn			  = 21,		 
  ARINC429T2_IRQn			  = 22,		 
  ARINC429T3_IRQn			  = 23,		 
  ARINC429T4_IRQn			  = 24,		 
  BKP_IRQn		              = 27,      
  EXT_INT1_IRQn               = 28,      
  EXT_INT2_IRQn               = 29,      
  EXT_INT3_IRQn               = 30,      
  EXT_INT4_IRQn               = 31       
}IRQn_Type;



 
 





   

 
#line 1 "..\\..\\Config\\MDR32F9Qx_config.h"

















 





















 

 
#line 227 "..\\..\\Config\\MDR32F9Qx_config.h"



 
#line 106 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"
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
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] = (((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) & 0xFF) >> (8 - 2)));  }  
  else {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( ((uint32_t)(IRQn) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) & 0xFF) >> (8 - 2)));  }  
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
  NVIC_SetPriority (SysTick_IRQn, (1<<2) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 








#line 107 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\startup\\arm\\system_MDR1986VE1T.h"




















 



 



 



 

 





 

extern uint32_t SystemCoreClock;          
 

   



 

extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);

   



   

   

   



 
#line 108 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"



 
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

   



 



  

 
 






 






   



  

 
 
#line 223 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 239 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 254 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 262 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 






 






   



  

 
 
 
 



 



   



  

 
 
 
 
#line 317 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 325 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
 
 





 





   



  

 
 
 
 





 





   



  

 
 
#line 384 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 394 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
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

   



 



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 
#line 573 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 583 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 






 






   



  

 
 
#line 621 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 631 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 






 






   



  

 
 






 






   



  

 
 






 






   



  

 
 
#line 711 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 721 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 



 



   

   

   




 



 

 
typedef struct
{
  volatile uint32_t CMD;
  volatile uint32_t ADR;
  volatile uint32_t DI;
  volatile uint32_t DO;
  volatile uint32_t KEY;
}MDR_EEPROM_TypeDef;

   



 



  

 
 
#line 786 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 800 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
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
} MDR_RST_CLK_TypeDef;

   



 



  

 
 





 





   




  

 
 
#line 871 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 879 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 





 





   



 

 
 





 





   




  

 
 





 





   




  

 
 





 





   




  

 
 





 





   




  

 
 





 





   




  

 
 
#line 1014 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1022 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 
#line 1038 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1046 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 
#line 1062 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1070 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   





  

 
 
#line 1090 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1101 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   




 



 

 
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

   

   



 



  

 
 






 






   



  

 
 





 





   



  

 
 
#line 1280 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1291 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 1307 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1316 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 1337 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1351 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 



 



   



  

 
 
#line 1386 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1399 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 
#line 1420 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1433 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 1453 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1466 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 1486 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1499 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 




 




   



  

 
 




 




   

   

   




 



 



 

 
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

   



 


  

 
 
#line 1841 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1855 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 
#line 1871 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1879 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 1895 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1904 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 





 





   

   

   




 



 

 
typedef struct
{
  volatile uint32_t PVDCS;
}MDR_POWER_TypeDef;

   



 



  

 
 
#line 1966 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 1977 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
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


   

   



 



  

 
 
#line 2155 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2164 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 2182 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2193 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



 

 
 
#line 2208 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2216 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 




 




   



  

 
 





 





   



  

 
 
#line 2269 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2279 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 2296 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2306 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 2323 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2333 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 




 




   

   

   



 



 



 

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

   

   



 



  

 
 
#line 2416 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2435 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 


 


   




  

 






   




  

 
 






 






   



  

 
 



 



   

   

   



 



 



 

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


   

   



 



  

 
 
#line 2662 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2680 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 



 



   



  

 
 



 



   



  

 
 
#line 2735 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2753 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
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
		 uint32_t RESERVED1[2];
	volatile uint32_t DATA_R_Direct[8];
		 uint32_t RESERVED2[6];
	volatile uint32_t INTMASK;
}MDR_ARINC429R_TypeDef;

   



 



  

 
 
#line 2816 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2834 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 2861 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2881 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 2910 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 2932 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 





 





   



  

 
 





 





   



  

 
 
#line 3011 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3045 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3070 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3088 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3113 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3131 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
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

   



 



  

 
 
#line 3186 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3203 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3226 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3242 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 





 





   



  

 
 
#line 3282 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3296 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
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

   



 



  

 
 
#line 3356 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3365 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3389 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3406 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3422 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3431 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   



 



 

 
typedef struct
{
       uint32_t RESERVED0[20];
  volatile uint32_t NAND_CYCLES;
  volatile uint32_t CONTROL;
  volatile uint32_t MEM_REGION[4];
}MDR_EBC_TypeDef;

   



 



  

 
 
#line 3474 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3483 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 
#line 3501 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3511 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   




  

 
 






 






   

   

   



 



 

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

   



 



  

 
 
#line 3598 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3607 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3622 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3630 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3648 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3659 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3680 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3694 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3718 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3735 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3759 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3776 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3796 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3809 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3824 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3832 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3848 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3857 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



  

 
 
#line 3876 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

 
#line 3888 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   






 

#line 3936 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   



 

#line 3977 "..\\..\\..\\..\\Libraries\\CMSIS\\CM1\\DeviceSupport\\MDR1986VE1T\\inc\\MDR1986VE1T.h"

   

   

   

   





 
#line 63 "..\\..\\Config\\MDR32F9Qx_config.h"





 





 
 






 
#line 90 "..\\..\\Config\\MDR32F9Qx_config.h"


 




#line 116 "..\\..\\Config\\MDR32F9Qx_config.h"










 



 
 


 


 
            


 

 


 
 
 
 


 


 
 
 
 
 

 
 

 



 



 


 
 


 







 

 
 








 
#line 211 "..\\..\\Config\\MDR32F9Qx_config.h"

#line 225 "..\\..\\Config\\MDR32F9Qx_config.h"





 
#line 26 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_eth.c"
#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"





















 

 







 
#line 34 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"



 



 



 



 

typedef struct
{
  uint32_t DMA_SourceBaseAddr;                  

  uint32_t DMA_DestBaseAddr;                   

  uint32_t DMA_SourceIncSize;                 
 

  uint32_t DMA_DestIncSize;                   
 

  uint32_t DMA_MemoryDataSize;                
 

  uint32_t DMA_Mode;                          
 

  uint32_t DMA_CycleSize;                     
 

  uint32_t DMA_NumContinuous;                 
 

  uint32_t DMA_SourceProtCtrl;                
 

  uint32_t DMA_DestProtCtrl;                  
 
} DMA_CtrlDataInitTypeDef;



 

typedef struct
{
  uint32_t DMA_SourceEndAddr;                  

  uint32_t DMA_DestEndAddr;                    

  uint32_t DMA_Control;                        

  uint32_t DMA_Unused;                         

}DMA_CtrlDataTypeDef;



 

typedef struct
{
  DMA_CtrlDataInitTypeDef *DMA_PriCtrlData;   
 

  DMA_CtrlDataInitTypeDef *DMA_AltCtrlData;   
 

  uint32_t DMA_ProtCtrl;                      
 

  uint8_t DMA_Priority;                       
 

  uint8_t DMA_UseBurst;                       
 

  uint8_t DMA_SelectDataStructure;            
 

} DMA_ChannelInitTypeDef;



 

typedef struct
{
  DMA_CtrlDataTypeDef *DMA_SG_TaskArray;      




 

  uint32_t DMA_SG_TaskNumber;                  


  uint32_t DMA_SourceProtCtrl;                
 

  uint32_t DMA_DestProtCtrl;                  
 

  uint32_t DMA_ProtCtrl;                      
 

  uint8_t DMA_Priority;                       
 

  uint8_t DMA_UseBurst;                       
 

} DMA_Channel_SG_InitTypeDef;


   



 



 



   



 







   



 
#line 223 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"

 
#line 257 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"

 
#line 291 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"

#line 363 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"



   



 

#line 380 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"

   



 

#line 395 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"

   



 

#line 408 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"

   



 

#line 424 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"

#line 434 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"

   



 



   



 






   



 






   




 







   



 







   



 







   



 

#line 519 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"

#line 531 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"

   



 













   



 

#line 564 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"

#line 573 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_dma.h"

   

   



 

   



 

void DMA_DeInit(void);
void DMA_Init(uint8_t DMA_Channel, DMA_ChannelInitTypeDef* DMA_InitStruct);
void DMA_SG_Init( uint8_t DMA_Channel, DMA_Channel_SG_InitTypeDef *DMA_SG_InitStruct);
void DMA_StructInit(DMA_ChannelInitTypeDef* DMA_InitStruct);
void DMA_SG_StructInit(DMA_Channel_SG_InitTypeDef* DMA_InitStruct);
void DMA_CtrlInit(uint8_t DMA_Channel, uint8_t DMA_CtrlDataType,  DMA_CtrlDataInitTypeDef* DMA_CtrlStruct);
void DMA_SG_CtrlInit(uint32_t DMA_Task, DMA_CtrlDataTypeDef *DMA_SG_TaskArray,  DMA_CtrlDataInitTypeDef* DMA_CtrlStruct);
void DMA_Cmd(uint8_t DMA_Channel, FunctionalState NewState);
void DMA_Request(uint8_t DMA_Channel);
void DMA_ClearError(void);
uint32_t DMA_GetCurrTransferCounter(uint8_t DMA_Channel, uint8_t DMA_CtrlData);
FlagStatus DMA_GetFlagStatus(uint8_t DMA_Channel, uint8_t DMA_Flag);
void DMA_CtrlDataInit(DMA_CtrlDataInitTypeDef *DMA_ctrl_data_ptr, DMA_CtrlDataTypeDef *DMA_ctrl_table_ptr);

   

   

   









 

#line 27 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_eth.c"
#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_eth.h"






















 

 







 
#line 35 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_eth.h"



 



 



 






 
typedef struct {

	

 

	uint32_t 			ETH_PHY_Address;					
 
	uint32_t			ETH_PHY_Mode;						
 
	uint32_t			ETH_PHY_Interface;					
 

	

 

	uint32_t			ETH_Dilimiter;						
 
	uint32_t			ETH_DBG_Mode;						
 
	FunctionalState 	ETH_DBG_XF;							
 
	FunctionalState		ETH_DBG_RF;							
 
	FunctionalState		ETH_Loopback_Mode;					
 
	BitStatus			ETH_Receiver_RST;					
 
	BitStatus			ETH_Transmitter_RST;				
 
	FunctionalState		ETH_Register_CLR;					
 
	uint32_t			ETH_Buffer_Mode;					
 
	FunctionalState		ETH_Extension_Mode;					
 
	FunctionalState		ETH_HalfDuplex_Mode;				
 
	FunctionalState		ETH_DTRM;							
 
	FunctionalState		ETH_Pause;							
 
	uint32_t			ETH_ColWnd;							
 
	

 

	FunctionalState		ETH_Transmitter_State;				
 
	uint32_t			ETH_Transmitter_BE;					
 
	uint32_t 			ETH_Transmitter_Bits_Order;			
 
	uint32_t			ETH_Transmitter_Event_Mode;			
 
	FunctionalState     ETH_Automatic_Pad_Strip;    		
 
	FunctionalState		ETH_Automatic_Preamble;				
 
	FunctionalState		ETH_Automatic_CRC_Strip;			
 
	FunctionalState		ETH_Automatic_IPG;					
 
	uint32_t			ETH_Retry_Counter;					
 
	

 

	FunctionalState		ETH_Receiver_State;					
 
	uint32_t			ETH_Receiver_BE;					
 
	uint32_t			ETH_Receiver_Bits_Order;			
 
	uint32_t			ETH_Receiver_Event_Mode;			
 
	FunctionalState		ETH_Receive_All_Packets;			
 
	FunctionalState		ETH_Short_Frames_Reception;			
 
	FunctionalState		ETH_Long_Frames_Reception;			
 
	FunctionalState		ETH_Broadcast_Frames_Reception;		
 
	FunctionalState		ETH_Error_CRC_Frames_Reception;		
 
	FunctionalState		ETH_Control_Frames_Reception;		
 
	FunctionalState		ETH_Unicast_Frames_Reception;		
 
	FunctionalState		ETH_Source_Addr_HASH_Filter;		
 
	

 

	uint16_t 			ETH_MAC_Address[3];					 
	

 

	uint32_t            ETH_Hash_Table_High;             	 
	uint32_t            ETH_Hash_Table_Low;              	 
	

 

	uint32_t 			ETH_IPG;							
 
	uint32_t 			ETH_PSC;							
 
	uint32_t 			ETH_BAG;							
 
	uint32_t 			ETH_JitterWnd;						
 
} ETH_InitTypeDef;




 
typedef struct{
	uint32_t Length			:16;		 
	uint32_t PF_ERR			:1;			 
	uint32_t CF_ERR			:1;			 
	uint32_t LF_ERR			:1;			 
	uint32_t SF_ERR			:1;			 
	uint32_t LEN_ERR		:1;			 
	uint32_t DN_ERR			:1;			 
	uint32_t CRC_ERR		:1;			 
	uint32_t SMB_ERR		:1;			 
	uint32_t MCA			:1;			 
	uint32_t BCA			:1;			 
	uint32_t UCA			:1;			 
}ETH_StatusPacketReceptionBitFileds;



 
typedef union {
	uint32_t Status;								 
	ETH_StatusPacketReceptionBitFileds Fields;		 
}ETH_StatusPacketReceptionTypeDef;

   



 



 

#line 219 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_eth.h"





   



 






   



 









   



 









   



 







   



 







   



 

#line 301 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_eth.h"





   



 







   



 







   



 

#line 344 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_eth.h"





   



 

#line 370 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_eth.h"



   



 

#line 389 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_eth.h"




   



 











   



 

#line 423 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_eth.h"



   



 

#line 440 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_eth.h"



   



 






   

 



 


 
 



 

#line 480 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_eth.h"

#line 491 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_eth.h"

   



 




   



 

#line 518 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_eth.h"





   

   



 

void ETH_ClockDeInit(void);
void ETH_PHY_ClockConfig(uint32_t clock_source, uint32_t PHY_HCLKdiv);
void ETH_BRGInit(uint32_t ETH_HCLKdiv);
void ETH_ClockCMD(uint32_t ETHx, FunctionalState NewState);
void ETH_PHY_Reset(MDR_ETHERNET_TypeDef * ETHERNETx);
void ETH_PHYCmd(MDR_ETHERNET_TypeDef * ETHERNETx, FunctionalState NewState);
void ETH_DeInit(MDR_ETHERNET_TypeDef * ETHERNETx );
void ETH_StructInit(ETH_InitTypeDef * ETH_InitStruct);
void ETH_Init(MDR_ETHERNET_TypeDef * ETHERNETx, ETH_InitTypeDef * ETH_InitStruct);
void ETH_Start(MDR_ETHERNET_TypeDef * ETHERNETx);
void ETH_MACTransmissionCmd( MDR_ETHERNET_TypeDef * ETHERNETx, FunctionalState NewState);
void ETH_MACReceptionCmd( MDR_ETHERNET_TypeDef * ETHERNETx, FunctionalState NewState);
uint16_t ETH_GetMACITStatusRegister(MDR_ETHERNET_TypeDef * ETHERNETx);
FlagStatus ETH_GetMACITStatus(MDR_ETHERNET_TypeDef * ETHERNETx, uint32_t ETH_MAC_FLAG);
uint32_t ETH_GetMACStatusRegister(MDR_ETHERNET_TypeDef * ETHERNETx);
void ETH_MACITConfig(MDR_ETHERNET_TypeDef * ETHERNETx, uint32_t ETH_MAC_IT, FunctionalState NewState);
void ETH_MACAddressConfig(MDR_ETHERNET_TypeDef * ETHERNETx, uint16_t *MacAddr);
void ETH_GetMACAddress(MDR_ETHERNET_TypeDef * ETHERNETx, uint16_t *Addr);
FlagStatus ETH_GetPHYStatus(MDR_ETHERNET_TypeDef * ETHERNETx, uint16_t ETH_PHY_FLAG);
uint16_t ETH_ReadPHYRegister(MDR_ETHERNET_TypeDef * ETHERNETx, uint16_t PHYAddress, uint16_t PHYReg);
uint32_t ETH_WritePHYRegister(MDR_ETHERNET_TypeDef * ETHERNETx, uint16_t PHYAddress, uint16_t PHYReg, uint16_t PHYValue);
uint32_t ETH_ReceivedFrame(MDR_ETHERNET_TypeDef * ETHERNETx, uint32_t * ptr_InputBuffer);
void ETH_SendFrame(MDR_ETHERNET_TypeDef * ETHERNETx, uint32_t * ptr_OututBuffer, uint32_t BufLen);
void ETH_DMAPrepare(void);
void ETH_DMAFrameRx(uint32_t * DstBuf, uint32_t BufferSize, uint32_t * SrcBuf);
void ETH_DMAFrameTx(uint32_t * DstBuf, uint32_t BufferSize, uint32_t *  SrcBuf);

   

   

   









 
#line 28 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_eth.c"

#line 1 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\math.h"




 





 












 







 




  
 





 






#line 59 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\math.h"

#line 73 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\math.h"

   




 















 
#line 104 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\math.h"











 





extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double  , double  );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double  );
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     








#line 222 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\math.h"







   
  typedef float float_t;
  typedef double double_t;
#line 243 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\math.h"



extern const int math_errhandling;
#line 253 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\math.h"

extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    __inline double _sqrt(double __x) { return sqrt(__x); }




    __inline float _sqrtf(float __x) { return (float)sqrt(__x); }

    



 

extern __declspec(__nothrow) __attribute__((const)) double ceil(double  );
    
    
extern __declspec(__nothrow) __attribute__((const)) double fabs(double  );
    
    

extern __declspec(__nothrow) __attribute__((const)) double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
__inline __declspec(__nothrow) __attribute__((const)) double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
__inline __declspec(__nothrow) __attribute__((const)) float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 471 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __attribute__((const)) double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __attribute__((const)) float _fabsf(float);  
__inline __declspec(__nothrow) __attribute__((const)) float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __attribute__((const)) float ceilf(float  );
extern __declspec(__nothrow) __attribute__((const)) float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );



#line 851 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\math.h"





#line 1006 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\math.h"











#line 1208 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\math.h"



 

#line 30 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_eth.c"
#line 1 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"


  
  typedef unsigned int size_t;    








 
 

 
  typedef struct __va_list __va_list;





   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 138 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 
extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 957 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"



 

#line 31 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_eth.c"





 




 





 
extern DMA_CtrlDataTypeDef DMA_ControlTable[32 * (1 + 1)];
   



 

#line 65 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\src\\MDR32F9Qx_eth.c"



   



 
   



 

   



 
   



 





 
void ETH_ClockDeInit(void)
{
	uint32_t tmpreg_ETH_CLOCK;

	 
	tmpreg_ETH_CLOCK = ((MDR_RST_CLK_TypeDef *)(0x40020000) )->ETH_CLOCK;

	 
	tmpreg_ETH_CLOCK &= ~(((uint32_t)0x30000000) |
						  ((uint32_t)0x40000000) |
						  ((uint32_t)0x08000000) |
						  ((uint32_t)0x01000000) |
						  ((uint32_t)0x000000FF) |
						  ((uint32_t)0x00FF0000));
	 
	((MDR_RST_CLK_TypeDef *)(0x40020000) )->ETH_CLOCK = tmpreg_ETH_CLOCK;
}




















 
void ETH_PHY_ClockConfig(uint32_t clock_source, uint32_t PHY_HCLKdiv)
{
	uint32_t tmpreg_ETH_CLOCK;

	 
	((void)0);
	((void)0);

	tmpreg_ETH_CLOCK = ((MDR_RST_CLK_TypeDef *)(0x40020000) )->ETH_CLOCK;
	tmpreg_ETH_CLOCK &= ~ (((uint32_t)0x00FF0000) | ((uint32_t)0x30000000));

	 
	tmpreg_ETH_CLOCK |= clock_source | PHY_HCLKdiv;
	 
	tmpreg_ETH_CLOCK |= ((uint32_t)0x08000000);

	((MDR_RST_CLK_TypeDef *)(0x40020000) )->ETH_CLOCK = tmpreg_ETH_CLOCK;
}















 
void ETH_BRGInit(uint32_t ETH_HCLKdiv)
{
	uint32_t tmpreg_ETH_CLOCK;

	 
	((void)0);

	tmpreg_ETH_CLOCK = ((MDR_RST_CLK_TypeDef *)(0x40020000) )->ETH_CLOCK;
	tmpreg_ETH_CLOCK &= ~(((uint32_t)0x000000FF));
	tmpreg_ETH_CLOCK |= ETH_HCLKdiv;

	((MDR_RST_CLK_TypeDef *)(0x40020000) )->ETH_CLOCK = tmpreg_ETH_CLOCK;
}










 
void ETH_ClockCMD(uint32_t ETHx, FunctionalState NewState)
{
	 
	((void)0);
	((void)0);

	if(NewState == ENABLE){
		((MDR_RST_CLK_TypeDef *)(0x40020000) )->ETH_CLOCK |= ETHx;
	}
	else{
		((MDR_RST_CLK_TypeDef *)(0x40020000) )->ETH_CLOCK &= ~ETHx;
	}
}







 
void ETH_PHY_Reset(MDR_ETHERNET_TypeDef * ETHERNETx)
{
	 
	((void)0);
	 
	ETHERNETx->PHY_Control &= ~((uint32_t)0x00000001);

	 
	while(ETH_GetPHYStatus(ETHERNETx, ((uint32_t)0x00000010)) != SET);
}










 
void ETH_PHYCmd(MDR_ETHERNET_TypeDef * ETHERNETx, FunctionalState NewState)
{
	 
	((void)0);
	((void)0);

	if(NewState == ENABLE){
		ETHERNETx->PHY_Control |= ((uint32_t)0x00000001);
	}
	else{
		ETHERNETx->PHY_Control &= ~((uint32_t)0x00000001);
	}

}








 
void ETH_DeInit(MDR_ETHERNET_TypeDef * ETHERNETx )
{
	 
	((void)0);

	 
	ETH_PHY_Reset(ETHERNETx);

	ETHERNETx->ETH_Dilimiter 	= 0x0800;
	ETHERNETx->ETH_MAC_T 		= 0x78AB;
	ETHERNETx->ETH_MAC_M 		= 0x3456;
	ETHERNETx->ETH_MAC_H 		= 0x0012;
	ETHERNETx->ETH_HASH0 		= 0x0000;
	ETHERNETx->ETH_HASH1 		= 0x0000;
	ETHERNETx->ETH_HASH2 		= 0x0000;
	ETHERNETx->ETH_HASH3 		= 0x8000;
	ETHERNETx->ETH_IPG 			= 0x0060;
	ETHERNETx->ETH_PSC 			= 0x0031;
	ETHERNETx->ETH_BAG 			= 0x0064;
	ETHERNETx->ETH_JitterWnd 	= 0x0004;
	ETHERNETx->ETH_R_CFG 		= 0x0507;
	ETHERNETx->ETH_X_CFG 		= 0x01FA;
	ETHERNETx->ETH_G_CFGl 		= 0x4080;
	ETHERNETx->ETH_G_CFGh		= 0x3000;
	ETHERNETx->ETH_IMR 			= 0x0000;
	ETHERNETx->ETH_IFR 			= 0x0000;
	ETHERNETx->ETH_R_Head 		= 0x0000;
	ETHERNETx->ETH_X_Tail 		= 0x0800;
}





 
void ETH_StructInit(ETH_InitTypeDef * ETH_InitStruct)
{

	 
	ETH_InitStruct->ETH_PHY_Address = 0x1C;
	 
	ETH_InitStruct->ETH_PHY_Mode = (uint32_t)(0x7 << 1);
	 
	ETH_InitStruct->ETH_PHY_Interface = (uint32_t)(0x00 << 7);

	 
	ETH_InitStruct->ETH_Dilimiter = 0x0800;
	 
	ETH_InitStruct->ETH_DBG_Mode = (uint32_t)(0x0 << 14);
	 
	ETH_InitStruct->ETH_DBG_XF = ENABLE;
	 
	ETH_InitStruct->ETH_DBG_RF = ENABLE;
	 
	ETH_InitStruct->ETH_Loopback_Mode = DISABLE;
	 
	ETH_InitStruct->ETH_Receiver_RST = RESET;
	 
	ETH_InitStruct->ETH_Transmitter_RST = RESET;
	 
	ETH_InitStruct->ETH_Register_CLR = ENABLE;
	 
	ETH_InitStruct->ETH_Buffer_Mode = (uint32_t) (0x0 << 12);
	 
	ETH_InitStruct->ETH_Extension_Mode = DISABLE;
	 
	ETH_InitStruct->ETH_HalfDuplex_Mode = DISABLE;
	 
	ETH_InitStruct->ETH_DTRM = DISABLE;
	 
	ETH_InitStruct->ETH_Pause = DISABLE;
	 
	ETH_InitStruct->ETH_ColWnd = 0x80;

	 
	 
	ETH_InitStruct->ETH_Transmitter_State = DISABLE;
	 
	ETH_InitStruct->ETH_Transmitter_BE = (uint32_t)(0x0 << 13);
	 
	ETH_InitStruct->ETH_Transmitter_Bits_Order = (uint32_t)(0 << 12);
	 
	ETH_InitStruct->ETH_Transmitter_Event_Mode = (uint32_t)(0x1 << 8);
	 
	ETH_InitStruct->ETH_Automatic_Pad_Strip = ENABLE;
	 
	ETH_InitStruct->ETH_Automatic_Preamble = ENABLE;
	 
	ETH_InitStruct->ETH_Automatic_CRC_Strip = ENABLE;
	 
	ETH_InitStruct->ETH_Automatic_IPG = ENABLE;
	 
	ETH_InitStruct->ETH_Retry_Counter = 0x0A;

	 
	 
	ETH_InitStruct->ETH_Receiver_State = DISABLE;
	 
	ETH_InitStruct->ETH_Receiver_BE = (uint32_t)(0x0 << 13);
	 
	ETH_InitStruct->ETH_Receiver_Bits_Order = (uint32_t)(0 << 12);
	 
	ETH_InitStruct->ETH_Receiver_Event_Mode = (uint32_t)(0x5 << 8);
	 
	ETH_InitStruct->ETH_Receive_All_Packets = DISABLE;
	 
	ETH_InitStruct->ETH_Short_Frames_Reception = DISABLE;
	 
	ETH_InitStruct->ETH_Long_Frames_Reception = DISABLE;
	 
	ETH_InitStruct->ETH_Broadcast_Frames_Reception = ENABLE;
	 
	ETH_InitStruct->ETH_Error_CRC_Frames_Reception = DISABLE;
	 
	ETH_InitStruct->ETH_Control_Frames_Reception = DISABLE;
	 
	ETH_InitStruct->ETH_Unicast_Frames_Reception = ENABLE;
	 
	ETH_InitStruct->ETH_Source_Addr_HASH_Filter = ENABLE;

	 
	ETH_InitStruct->ETH_MAC_Address[0] = 0x78AB;
	ETH_InitStruct->ETH_MAC_Address[1] = 0x3456;
	ETH_InitStruct->ETH_MAC_Address[2] = 0x0012;

	 
	ETH_InitStruct->ETH_Hash_Table_Low	= 0x00000000;
	ETH_InitStruct->ETH_Hash_Table_High = 0x08000000;

	 
	ETH_InitStruct->ETH_IPG = 0x0060;
	 
	ETH_InitStruct->ETH_PSC = 0x0031;
	 
	ETH_InitStruct->ETH_BAG = 0x0064;
	 
	ETH_InitStruct->ETH_JitterWnd = 0x0004;
}












 
void ETH_Init(MDR_ETHERNET_TypeDef * ETHERNETx, ETH_InitTypeDef * ETH_InitStruct)
{
	uint32_t tmpreg_PHY_Control;
	uint32_t tmpreg_X_CFG;
	uint32_t tmpreg_R_CFG;
	uint16_t tmpreg_G_CFGh;
	uint16_t tmpreg_G_CFGl;
	 
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

	 
	ETHERNETx->ETH_Dilimiter = ETH_InitStruct->ETH_Dilimiter;

	 
	tmpreg_PHY_Control = (ETH_InitStruct->ETH_PHY_Address << 11) | (ETH_InitStruct->ETH_PHY_Mode) | (ETH_InitStruct->ETH_PHY_Interface);
	ETHERNETx->PHY_Control |= tmpreg_PHY_Control;

	 
	tmpreg_G_CFGh = ETH_InitStruct->ETH_DBG_Mode | (ETH_InitStruct->ETH_DBG_XF << 13) |
					(ETH_InitStruct->ETH_DBG_RF << 12) | (ETH_InitStruct->ETH_Loopback_Mode << 2 ) |
					(ETH_InitStruct->ETH_Receiver_RST << 1) | (ETH_InitStruct->ETH_Transmitter_RST << 0);
	 
	ETHERNETx->ETH_G_CFGh = tmpreg_G_CFGh;

	 
	tmpreg_G_CFGl = (ETH_InitStruct->ETH_Register_CLR 		<< 14)
				  |	(ETH_InitStruct->ETH_Buffer_Mode)
				  |	(ETH_InitStruct->ETH_Extension_Mode 	<< 11)
				  |	(ETH_InitStruct->ETH_HalfDuplex_Mode 	<< 10)
				  |	(ETH_InitStruct->ETH_DTRM 				<< 9)
				  |	(ETH_InitStruct->ETH_Pause 				<< 8)
				  |	(ETH_InitStruct->ETH_ColWnd);
	 
	ETHERNETx->ETH_G_CFGl = tmpreg_G_CFGl;

	 
	tmpreg_X_CFG = (ETH_InitStruct->ETH_Transmitter_State 	<< 15)
				 | (ETH_InitStruct->ETH_Transmitter_BE)
				 | (ETH_InitStruct->ETH_Transmitter_Bits_Order)
				 | (ETH_InitStruct->ETH_Transmitter_Event_Mode)
				 | (ETH_InitStruct->ETH_Automatic_Pad_Strip << 7)
				 | (ETH_InitStruct->ETH_Automatic_Preamble 	<< 6)
				 | (ETH_InitStruct->ETH_Automatic_CRC_Strip << 5)
				 | (ETH_InitStruct->ETH_Automatic_IPG 		<< 4)
				 | (ETH_InitStruct->ETH_Retry_Counter);
	 
	ETHERNETx->ETH_X_CFG = tmpreg_X_CFG;

	 
	tmpreg_R_CFG = (ETH_InitStruct->ETH_Receiver_State << 15)
				 | (ETH_InitStruct->ETH_Receiver_BE)
				 | (ETH_InitStruct->ETH_Receiver_Bits_Order)
				 | (ETH_InitStruct->ETH_Receiver_Event_Mode);

	 
	tmpreg_R_CFG |= (ETH_InitStruct->ETH_Short_Frames_Reception 	<< 6)
				 |	(ETH_InitStruct->ETH_Long_Frames_Reception 		<< 6)
				 |	(ETH_InitStruct->ETH_Broadcast_Frames_Reception << 1)
				 |	(ETH_InitStruct->ETH_Error_CRC_Frames_Reception << 4)
				 |	(ETH_InitStruct->ETH_Control_Frames_Reception 	<< 5)
				 |	(ETH_InitStruct->ETH_Unicast_Frames_Reception 	<< 2)
				 |	(ETH_InitStruct->ETH_Source_Addr_HASH_Filter 	<< 0)
				 |	(ETH_InitStruct->ETH_Receive_All_Packets 		<< 3);

	 
	ETHERNETx->ETH_R_CFG = tmpreg_R_CFG;

	 
	ETHERNETx->ETH_MAC_T = ETH_InitStruct->ETH_MAC_Address[0];
	ETHERNETx->ETH_MAC_M = ETH_InitStruct->ETH_MAC_Address[1];
	ETHERNETx->ETH_MAC_H = ETH_InitStruct->ETH_MAC_Address[2];

	 
	ETHERNETx->ETH_HASH0 = ETH_InitStruct->ETH_Hash_Table_Low & 0x0000FFFF;
	ETHERNETx->ETH_HASH1 = (ETH_InitStruct->ETH_Hash_Table_Low & 0xFFFF0000) >> 16;
	ETHERNETx->ETH_HASH2 = ETH_InitStruct->ETH_Hash_Table_High & 0x0000FFFF;
	ETHERNETx->ETH_HASH3 = (ETH_InitStruct->ETH_Hash_Table_High & 0xFFFF0000) >> 16;

	 
	ETHERNETx->ETH_IPG = ETH_InitStruct->ETH_IPG;
	 
	ETHERNETx->ETH_PSC = ETH_InitStruct->ETH_PSC;
	 
	ETHERNETx->ETH_BAG = ETH_InitStruct->ETH_BAG;
	 
	ETHERNETx->ETH_JitterWnd = ETH_InitStruct->ETH_JitterWnd;
}








 
void ETH_Start(MDR_ETHERNET_TypeDef * ETHERNETx)
{
	 
	((void)0);

	ETHERNETx->PHY_Control |= ((uint32_t)0x00000001);

	ETHERNETx->ETH_G_CFGh &= ~(((uint32_t)0x00000002) | ((uint32_t)0x00000001));

	 
	ETH_MACTransmissionCmd(ETHERNETx, ENABLE);
	 
	ETH_MACReceptionCmd(ETHERNETx, ENABLE);
}










 
void ETH_MACTransmissionCmd( MDR_ETHERNET_TypeDef * ETHERNETx, FunctionalState NewState)
{
	 
	((void)0);
	((void)0);

	if(NewState == ENABLE){
		ETHERNETx->ETH_X_CFG |= ((uint32_t)0x00008000);
	}
	else{
		ETHERNETx->ETH_X_CFG &= ~((uint32_t)0x00008000);
	}

}










 
void ETH_MACReceptionCmd( MDR_ETHERNET_TypeDef * ETHERNETx, FunctionalState NewState)
{
	 
	((void)0);
	((void)0);

	if(NewState == ENABLE){
		ETHERNETx->ETH_R_CFG |= ((uint32_t)0x00008000);
	}
	else{
		ETHERNETx->ETH_R_CFG &= ~((uint32_t)0x00008000);
	}

}








 
uint16_t ETH_GetMACITStatusRegister(MDR_ETHERNET_TypeDef * ETHERNETx)
{
	 
	((void)0);

	return(ETHERNETx->ETH_IFR);
}

























 
FlagStatus ETH_GetMACITStatus(MDR_ETHERNET_TypeDef * ETHERNETx, uint32_t ETH_MAC_IT)
{
	 FlagStatus bitstatus;

	 
	((void)0);
	((void)0);

	if(ETHERNETx->ETH_IFR & ETH_MAC_IT){
		bitstatus = SET;
	}
	else{
		bitstatus = RESET;
	}
	return (bitstatus);
}








 
uint32_t ETH_GetMACStatusRegister(MDR_ETHERNET_TypeDef * ETHERNETx)
{
	 
	((void)0);

	return (ETHERNETx->ETH_STAT);
}




















 
FlagStatus ETH_GetFlagStatus(MDR_ETHERNET_TypeDef * ETHERNETx, uint16_t ETH_MAC_FLAG)
{
	 FlagStatus bitstatus;

	 
	((void)0);
	((void)0);

	if(ETHERNETx->ETH_IFR & ETH_MAC_FLAG){
		bitstatus = SET;
	}
	else{
		bitstatus = RESET;
	}
	return (bitstatus);
}




























 
void ETH_MACITConfig(MDR_ETHERNET_TypeDef * ETHERNETx, uint32_t ETH_MAC_IT, FunctionalState NewState)
{
	 
	((void)0);
	((void)0);
	((void)0);

	if(NewState == ENABLE){
		ETHERNETx->ETH_IMR |= ETH_MAC_IT;
	}
	else{
		ETHERNETx->ETH_IMR &= (~ETH_MAC_IT);
	}
}









 
void ETH_MACAddressConfig(MDR_ETHERNET_TypeDef * ETHERNETx, uint16_t *MacAddr)
{
	 
	((void)0);

	ETHERNETx->ETH_MAC_T = MacAddr[0];
	ETHERNETx->ETH_MAC_M = MacAddr[1];
	ETHERNETx->ETH_MAC_H = MacAddr[2];
}









 
void ETH_GetMACAddress(MDR_ETHERNET_TypeDef * ETHERNETx, uint16_t *MacAddr)
{
	 
	((void)0);

	MacAddr[0] = ETHERNETx->ETH_MAC_T;
	MacAddr[1] = ETHERNETx->ETH_MAC_M;
	MacAddr[2] = ETHERNETx->ETH_MAC_H;
}




















 
FlagStatus ETH_GetPHYStatus(MDR_ETHERNET_TypeDef * ETHERNETx, uint16_t ETH_PHY_FLAG)
{
	FlagStatus bitstatus;

	 
	((void)0);
	((void)0);

	if(ETHERNETx->PHY_Status & ETH_PHY_FLAG){
		bitstatus = SET;
	}
	else{
		bitstatus = RESET;
	}
	return (bitstatus);
}
























 
uint16_t ETH_ReadPHYRegister(MDR_ETHERNET_TypeDef * ETHERNETx, uint16_t PHYAddress, uint16_t PHYReg)
{
	uint32_t tmpreg = 0;
	volatile uint32_t timeout = 0;
	 
	((void)0);
	((void)0);
	((void)0);

	 
	tmpreg = ETHERNETx->ETH_MDIO_CTRL;
	 
	tmpreg &= ((uint32_t)0x000000E0);
	 
	tmpreg |= (uint32_t)(PHYAddress << 8) | (PHYReg << 0) | (1 << 13) | (1 << 15) | (1 << 14) | (1<<5);
	 
	ETHERNETx->ETH_MDIO_CTRL = tmpreg;
	do{
		timeout++;
		tmpreg = ETHERNETx->ETH_MDIO_CTRL;
	}while(((tmpreg & ((uint32_t)0x00008000)) == 0 ) && (timeout < ((uint32_t)0x0004FFFF)));

	 
	if(timeout == ((uint32_t)0x0004FFFF)){
		return ((uint16_t)((uint32_t)0));
	}
	 
	return ((uint16_t)ETHERNETx->ETH_MDIO_DATA);
}

























 
uint32_t ETH_WritePHYRegister(MDR_ETHERNET_TypeDef * ETHERNETx, uint16_t PHYAddress, uint16_t PHYReg, uint16_t PHYValue)
{
	uint32_t tmpreg = 0;
	volatile uint32_t timeout = 0;
	 
	((void)0);
	((void)0);
	((void)0);

	 
	tmpreg = ETHERNETx->ETH_MDIO_CTRL;
	 
	tmpreg &= ~((uint32_t)0x000000E0);
	 
	tmpreg |= (uint32_t)(PHYAddress << 8) | (PHYReg << 0) | (0 << 13) | (1 << 15) | (1 << 14) | (1<<5);
	 
	ETHERNETx->ETH_MDIO_DATA = PHYValue;
	 
	ETHERNETx->ETH_MDIO_CTRL = tmpreg;
	do{
		timeout++;
		tmpreg = ETHERNETx->ETH_MDIO_CTRL;
	}while(((tmpreg & ((uint32_t)0x00008000)) == 0 ) && (timeout < ((uint32_t)0x0004FFFF)));

	 
	if(timeout == ((uint32_t)0x0004FFFF)){
		return ((uint16_t)((uint32_t)0));
	}
	 
	return ((uint16_t)((uint32_t)1));
}









 
uint32_t ETH_ReceivedFrame(MDR_ETHERNET_TypeDef * ETHERNETx, uint32_t * ptr_InputBuffer)
{
	ETH_StatusPacketReceptionTypeDef ETH_StatusPacketReceptionStruct;
	uint32_t PacketLength, i, Rhead, EthBaseBufferAddr, * ptr_InputFrame, tmp;
	uint16_t BufferMode;
	int32_t EthReceiverFreeBufferSize;

	 
	((void)0);

	 
	BufferMode = (ETHERNETx->ETH_G_CFGl & ((uint32_t)0x00003000));
	switch (BufferMode){
		 
		case (uint32_t) (0x0 << 12):
			Rhead = ETHERNETx->ETH_R_Head;
			 
			ptr_InputFrame = (uint32_t *)((EthBaseBufferAddr = ((uint32_t)ETHERNETx) + 0x08000000) + Rhead);
			 
			ETH_StatusPacketReceptionStruct.Status = (uint32_t)*ptr_InputFrame++;
			PacketLength = (ETH_StatusPacketReceptionStruct.Fields.Length + 3)/4;
			 
			EthReceiverFreeBufferSize = (uint32_t) (ETHERNETx->ETH_Dilimiter - Rhead) - PacketLength*4;
			if(EthReceiverFreeBufferSize > 0){
				 
				for(i = 0; i < PacketLength; i++){
					ptr_InputBuffer[i] = *ptr_InputFrame++;
				}
			}
			else{
				 
				for(i = 0; i < (PacketLength*4 + EthReceiverFreeBufferSize)/4 - 1; i++){
					ptr_InputBuffer[i] = *ptr_InputFrame++;
				}
				 
				ptr_InputFrame = (uint32_t *)EthBaseBufferAddr;
				EthReceiverFreeBufferSize = 0 - EthReceiverFreeBufferSize;
				tmp = i;
				 
				for( i = 0; i < (EthReceiverFreeBufferSize/4) + 1; i++){
					ptr_InputBuffer[tmp + i] = *ptr_InputFrame++;
				}
			}
			 
			ETHERNETx->ETH_R_Head = ((uint32_t)ptr_InputFrame)&0x1FFF;
			break;
		 
		case (uint32_t) (0x1 << 12):
			 
			Rhead = ETHERNETx->ETH_R_Head;
			ptr_InputFrame = (uint32_t *)((EthBaseBufferAddr = ((uint32_t)ETHERNETx) + 0x08000000) + Rhead);
			 
			ETH_StatusPacketReceptionStruct.Status = (uint32_t)*ptr_InputFrame++;
			 
			PacketLength = ((ETH_StatusPacketReceptionStruct.Fields.Length & 0x0003) != 0) + ETH_StatusPacketReceptionStruct.Fields.Length/4;
			 
			EthReceiverFreeBufferSize = (uint32_t) (ETHERNETx->ETH_Dilimiter - Rhead) - PacketLength*4;
			if(EthReceiverFreeBufferSize > 0){
				 
				for(i = 0; i < PacketLength; i++){
					ptr_InputBuffer[i] = *ptr_InputFrame++;
				}
			}
			else{
				 
				for(i = 0; i < (PacketLength*4 + EthReceiverFreeBufferSize)/4 - 1; i++){
					ptr_InputBuffer[i] = *ptr_InputFrame++;
				}
				 
				ptr_InputFrame = (uint32_t *)EthBaseBufferAddr;
				EthReceiverFreeBufferSize = 0 - EthReceiverFreeBufferSize;
				tmp = i;
				 
				for( i = 0; i < (EthReceiverFreeBufferSize/4) + 1; i++){
					ptr_InputBuffer[tmp + i] = *ptr_InputFrame++;
				}
			}
			break;
		 
		case (uint32_t) (0x2 << 12):
			 
			ptr_InputFrame = (uint32_t *) ((uint32_t)ETHERNETx + 0x08000000);
			 
			ETH_StatusPacketReceptionStruct.Status = (uint32_t)*ptr_InputFrame;
			 
			PacketLength = ((ETH_StatusPacketReceptionStruct.Fields.Length & 0x0003) != 0) + ETH_StatusPacketReceptionStruct.Fields.Length/4;
			 
			ETH_DMAFrameRx((uint32_t * )&ptr_InputBuffer[0],  PacketLength, ptr_InputFrame);
			break;
	}
	 
	return (ETH_StatusPacketReceptionStruct.Status);
}










 
void ETH_SendFrame(MDR_ETHERNET_TypeDef * ETHERNETx, uint32_t * ptr_OutputBuffer, uint32_t BufLen)
{
	uint32_t BufferMode, i, Xtail, tmp;
	uint32_t * ptr_OutputFrame;
	int32_t EthReceiverFreeBufferSize;

	 
	((void)0);

	 
	BufferMode = (ETHERNETx->ETH_G_CFGl & ((uint32_t)0x00003000));
	 
	Xtail = ETHERNETx->ETH_X_Tail;

	switch (BufferMode){
		case (uint32_t) (0x0 << 12):
			 
			ptr_OutputFrame = (uint32_t *)((((uint32_t)ETHERNETx) + 0x08000000) + Xtail);
			 
			EthReceiverFreeBufferSize = (((uint32_t)0x2000) - Xtail) / 4;
			if(((BufLen +3)/4 + 1) < EthReceiverFreeBufferSize){
				for( i = 0; i < (BufLen + 3)/4 + 1; i++ ){
					*ptr_OutputFrame++ = ptr_OutputBuffer[i];
				}
			}
			else{
				for( i = 0; i < EthReceiverFreeBufferSize; i++ ){
					*ptr_OutputFrame++ = ptr_OutputBuffer[i];
				}
				tmp = i;
				ptr_OutputFrame = (uint32_t *)((((uint32_t)ETHERNETx) + 0x08000000) + ETHERNETx->ETH_Dilimiter);
				for(i = 0; i < (((BufLen + 3)/4 + 1) - EthReceiverFreeBufferSize); i++){
					*ptr_OutputFrame++ = ptr_OutputBuffer[i+tmp];
				}
			}
			ptr_OutputFrame++;
			Xtail = (uint32_t)ptr_OutputFrame&0x1FFC;
			if(Xtail >= ((uint32_t)0x2000))
				Xtail = ETHERNETx->ETH_Dilimiter;
			 
			ETHERNETx->ETH_X_Tail = Xtail;
			break;
		case (uint32_t) (0x1 << 12):
			 
			ptr_OutputFrame = (uint32_t *)((((uint32_t)ETHERNETx) + 0x08000000) + Xtail);
			 
			EthReceiverFreeBufferSize = (((uint32_t)0x2000) - Xtail) / 4;
			if(((BufLen +3)/4 + 2) < EthReceiverFreeBufferSize){
				for( i = 0; i < (BufLen + 3)/4 + 2; i++ ){
					*ptr_OutputFrame++ = ptr_OutputBuffer[i];
				}
			}
			else{
				for( i = 0; i < EthReceiverFreeBufferSize; i++ ){
					*ptr_OutputFrame++ = ptr_OutputBuffer[i];
				}
				tmp = i;
				ptr_OutputFrame = (uint32_t *)((((uint32_t)ETHERNETx) + 0x08000000) + ETHERNETx->ETH_Dilimiter);
				for(i = 0; i < (((BufLen + 3)/4 + 2) - EthReceiverFreeBufferSize); i++){
					*ptr_OutputFrame++ = ptr_OutputBuffer[i+tmp];
				}
			}
			break;
		case (uint32_t) (0x2 << 12):
			 
			ptr_OutputFrame = (uint32_t *) ((uint32_t)ETHERNETx + 0x08000004);
			 
			ETH_DMAFrameTx(ptr_OutputFrame, ((BufLen+3)/4 + 2), ptr_OutputBuffer);
			break;
	}
}





 
void ETH_DMAPrepare(void)
{
	DMA_CtrlDataInitTypeDef DMA_PriCtrlStr;
	DMA_ChannelInitTypeDef DMA_InitStr;
	
	DMA_DeInit();
	
	DMA_StructInit(&DMA_InitStr);

	 
	DMA_InitStr.DMA_PriCtrlData = &DMA_PriCtrlStr;
	DMA_InitStr.DMA_Priority = ((uint8_t)0x01);
	DMA_InitStr.DMA_UseBurst = ((uint8_t)0x00);
	DMA_InitStr.DMA_SelectDataStructure = ((uint8_t)0x00);
	 
	DMA_Init(((uint8_t)(14)), &DMA_InitStr);
}







 
void ETH_DMAFrameRx(uint32_t * DstBuf, uint32_t BufferSize, uint32_t *  SrcBuf)
{

	volatile uint32_t * ptrControltable;
	uint32_t tmpval;

	((MDR_DMA_TypeDef *)(0x40028000) )->CHNL_PRIORITY_SET |= 1 << ((uint8_t)(14));
	DMA_ControlTable[((uint8_t)(14))].DMA_SourceEndAddr = (uint32_t)SrcBuf;
	DMA_ControlTable[((uint8_t)(14))].DMA_DestEndAddr = ((uint32_t)DstBuf) + 4*(BufferSize-1);
	DMA_ControlTable[((uint8_t)(14))].DMA_Control = ((uint32_t)(0x2UL << 30))
												  | ((uint32_t)(3 << 26))
												  | ((uint32_t)(0x22 << 24))
												  | ((uint32_t)0x2)
												  | ((uint32_t)(0x0A << 14))
												  | ((BufferSize - 1) << 4);

	 
	DMA_Cmd(((uint8_t)(14)), ENABLE);
	DMA_Request(((uint8_t)(14)));
	 
	ptrControltable = (uint32_t *)&DMA_ControlTable[((uint8_t)(14))].DMA_Control;
	 
	while( 1 ){
		tmpval = (*ptrControltable)&0x3;
		if(tmpval == 0)
			break;
	}
	 
	DMA_Cmd(((uint8_t)(14)), DISABLE);

}







 
void ETH_DMAFrameTx(uint32_t * DstBuf, uint32_t BufferSize, uint32_t * SrcBuf)
{
	volatile uint32_t * ptrControltable;
	uint32_t tmpval;

	((MDR_DMA_TypeDef *)(0x40028000) )->CHNL_PRIORITY_SET |= 1 << ((uint8_t)(15));
	DMA_ControlTable[((uint8_t)(15))].DMA_SourceEndAddr = (uint32_t)SrcBuf + 4*(BufferSize-1);
	DMA_ControlTable[((uint8_t)(15))].DMA_DestEndAddr = (uint32_t)DstBuf;
	DMA_ControlTable[((uint8_t)(15))].DMA_Control = ((uint32_t)(0x3UL << 30))
												  | ((uint32_t)(2 << 26))
												  | ((uint32_t)(0x22 << 24))
												  | ((uint32_t)0x2)

												  | ((uint32_t)(0x0A << 14))
												  | ((BufferSize - 1) << 4);
	 
	DMA_Cmd(((uint8_t)(15)), ENABLE);
	DMA_Request(((uint8_t)(15)));
	 
	ptrControltable = (uint32_t *)&DMA_ControlTable[((uint8_t)(15))].DMA_Control;
	 
	while( 1 ){
		tmpval = (*ptrControltable)&0x3;
		if(tmpval == 0)
			break;
	}
	 
	DMA_Cmd(((uint8_t)(15)), DISABLE);
}

   



   

   



 
