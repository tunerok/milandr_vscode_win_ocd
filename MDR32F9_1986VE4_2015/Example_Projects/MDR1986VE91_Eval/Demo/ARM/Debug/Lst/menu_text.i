#line 1 "..\\..\\src\\Menu_text.c"

















 

 
#line 1 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\string.h"


  
  typedef unsigned int size_t;








extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 185 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 201 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 224 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 239 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 262 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 494 "C:\\Keil5\\ARM\\ARMCC\\bin\\..\\include\\string.h"



 

#line 22 "..\\..\\src\\Menu_text.c"
#line 1 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"





















 

 







 
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


 
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"





















 

 





 



 



 






  #pragma anon_unions


 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn     = -14,   
  HardFault_IRQn          = -13,   
  MemoryManagement_IRQn   = -12,   
  BusFault_IRQn           = -11,   
  UsageFault_IRQn         = -10,   
  SVCall_IRQn             = -5,    
  PendSV_IRQn             = -2,    
  SysTick_IRQn            = -1,    

 
  CAN1_IRQn               =  0,    
  CAN2_IRQn               =  1,    
  USB_IRQn                =  2,    
  DMA_IRQn                =  5,    
  UART1_IRQn              =  6,    
  UART2_IRQn              =  7,    
  SSP1_IRQn               =  8,    
  I2C_IRQn                =  10,   
  POWER_IRQn              =  11,   
  WWDG_IRQn               =  12,   
  Timer1_IRQn             =  14,   
  Timer2_IRQn             =  15,   
  Timer3_IRQn             =  16,   
  ADC_IRQn                =  17,   
  COMPARATOR_IRQn         =  19,   
  SSP2_IRQn               =  20,   
  BACKUP_IRQn             =  27,   
  EXT_INT1_IRQn           =  28,   
  EXT_INT2_IRQn           =  29,   
  EXT_INT3_IRQn           =  30,   
  EXT_INT4_IRQn           =  31    
}IRQn_Type;



 

 





   

 
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cm3.h"
 







 

























 
























 




 


 

 













#line 108 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cm3.h"


 







#line 138 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cm3.h"

#line 140 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cm3.h"
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 







 







 









 









 

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










 










 











 









 









 









 











 











 











 







 










 










 









 






#line 685 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cmInstr.h"

   

#line 141 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cm3.h"
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
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








 







 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}







 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}




#line 307 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cmFunc.h"


#line 632 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cmFunc.h"

 


#line 142 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cm3.h"








 
#line 172 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cm3.h"

 






 
#line 188 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cm3.h"

 












 


 





 


 
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
  volatile uint32_t ISER[8];                  
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];                  
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];                  
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];                  
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];                  
       uint32_t RESERVED4[56];
  volatile uint8_t  IP[240];                  
       uint32_t RESERVED5[644];
  volatile  uint32_t STIR;                     
}  NVIC_Type;

 



 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
  volatile uint32_t VTOR;                     
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
  volatile uint8_t  SHP[12];                  
  volatile uint32_t SHCSR;                    
  volatile uint32_t CFSR;                     
  volatile uint32_t HFSR;                     
  volatile uint32_t DFSR;                     
  volatile uint32_t MMFAR;                    
  volatile uint32_t BFAR;                     
  volatile uint32_t AFSR;                     
  volatile const  uint32_t PFR[2];                   
  volatile const  uint32_t DFR;                      
  volatile const  uint32_t ADR;                      
  volatile const  uint32_t MMFR[4];                  
  volatile const  uint32_t ISAR[5];                  
       uint32_t RESERVED0[5];
  volatile uint32_t CPACR;                    
} SCB_Type;

 















 






























 




#line 415 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cm3.h"

 





















 









 


















 










































 









 









 















 






 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile const  uint32_t ICTR;                     



       uint32_t RESERVED1[1];

} SCnSCB_Type;

 



 










 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 






 


 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                   
    volatile  uint16_t   u16;                  
    volatile  uint32_t   u32;                  
  }  PORT [32];                           
       uint32_t RESERVED0[864];
  volatile uint32_t TER;                      
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;                      
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;                      
       uint32_t RESERVED3[29];
  volatile  uint32_t IWR;                      
  volatile const  uint32_t IRR;                      
  volatile uint32_t IMCR;                     
       uint32_t RESERVED4[43];
  volatile  uint32_t LAR;                      
  volatile const  uint32_t LSR;                      
       uint32_t RESERVED5[6];
  volatile const  uint32_t PID4;                     
  volatile const  uint32_t PID5;                     
  volatile const  uint32_t PID6;                     
  volatile const  uint32_t PID7;                     
  volatile const  uint32_t PID0;                     
  volatile const  uint32_t PID1;                     
  volatile const  uint32_t PID2;                     
  volatile const  uint32_t PID3;                     
  volatile const  uint32_t CID0;                     
  volatile const  uint32_t CID1;                     
  volatile const  uint32_t CID2;                     
  volatile const  uint32_t CID3;                     
} ITM_Type;

 



 



























 



 



 



 









   






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t CYCCNT;                   
  volatile uint32_t CPICNT;                   
  volatile uint32_t EXCCNT;                   
  volatile uint32_t SLEEPCNT;                 
  volatile uint32_t LSUCNT;                   
  volatile uint32_t FOLDCNT;                  
  volatile const  uint32_t PCSR;                     
  volatile uint32_t COMP0;                    
  volatile uint32_t MASK0;                    
  volatile uint32_t FUNCTION0;                
       uint32_t RESERVED0[1];
  volatile uint32_t COMP1;                    
  volatile uint32_t MASK1;                    
  volatile uint32_t FUNCTION1;                
       uint32_t RESERVED1[1];
  volatile uint32_t COMP2;                    
  volatile uint32_t MASK2;                    
  volatile uint32_t FUNCTION2;                
       uint32_t RESERVED2[1];
  volatile uint32_t COMP3;                    
  volatile uint32_t MASK3;                    
  volatile uint32_t FUNCTION3;                
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   






 


 
typedef struct
{
  volatile uint32_t SSPSR;                    
  volatile uint32_t CSPSR;                    
       uint32_t RESERVED0[2];
  volatile uint32_t ACPR;                     
       uint32_t RESERVED1[55];
  volatile uint32_t SPPR;                     
       uint32_t RESERVED2[131];
  volatile const  uint32_t FFSR;                     
  volatile uint32_t FFCR;                     
  volatile const  uint32_t FSCR;                     
       uint32_t RESERVED3[759];
  volatile const  uint32_t TRIGGER;                  
  volatile const  uint32_t FIFO0;                    
  volatile const  uint32_t ITATBCTR2;                
       uint32_t RESERVED4[1];
  volatile const  uint32_t ITATBCTR0;                
  volatile const  uint32_t FIFO1;                    
  volatile uint32_t ITCTRL;                   
       uint32_t RESERVED5[39];
  volatile uint32_t CLAIMSET;                 
  volatile uint32_t CLAIMCLR;                 
       uint32_t RESERVED7[8];
  volatile const  uint32_t DEVID;                    
  volatile const  uint32_t DEVTYPE;                  
} TPI_Type;

 



 



 












 






 



 





















 



 





















 



 



 


















 






   







 


 
typedef struct
{
  volatile const  uint32_t TYPE;                     
  volatile uint32_t CTRL;                     
  volatile uint32_t RNR;                      
  volatile uint32_t RBAR;                     
  volatile uint32_t RASR;                     
  volatile uint32_t RBAR_A1;                  
  volatile uint32_t RASR_A1;                  
  volatile uint32_t RBAR_A2;                  
  volatile uint32_t RASR_A2;                  
  volatile uint32_t RBAR_A3;                  
  volatile uint32_t RASR_A3;                  
} MPU_Type;

 









 









 



 









 






























 







 


 
typedef struct
{
  volatile uint32_t DHCSR;                    
  volatile  uint32_t DCRSR;                    
  volatile uint32_t DCRDR;                    
  volatile uint32_t DEMCR;                    
} CoreDebug_Type;

 




































 






 







































 






 

 
#line 1246 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cm3.h"

#line 1255 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\CoreSupport\\core_cm3.h"






 










 

 



 




 










 

static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);                

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((0xFFFFUL << 16) | (7UL << 8));              
  reg_value  =  (reg_value                                 |
                ((uint32_t)0x5FA << 16) |
                (PriorityGroupTmp << 8));                                      
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}







 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8);    
}







 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 3)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 3)) & 0xff);    }         
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 3)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)]           >> (8 - 3)));  }  
}













 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 3) ? 3 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 3) < 7) ? 0 : PriorityGroupTmp - 7 + 3;

  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}













 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 3) ? 3 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 3) < 7) ? 0 : PriorityGroupTmp - 7 + 3;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
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

 



 




 

extern volatile int32_t ITM_RxBuffer;                     












 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL << 0))                  &&       
      (((ITM_Type *) (0xE0000000UL) )->TER & (1UL << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}








 
static __inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }

  return (ch);
}








 
static __inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}



 









#line 99 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"
#line 1 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\startup\\arm\\system_MDR32F9Qx.h"




















 



 



 



 

 





 

extern uint32_t SystemCoreClock;          
 

   



 

extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);

   



   

   

   



 
#line 100 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"



 

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

   



 



  

 
 






 






   



  

 
 
#line 220 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 236 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 251 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 259 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 






 






   



  

 
 
 
 



 



   



  

 
 
 
 
#line 314 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 322 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
 
 





 





   



  

 
 
 
 





 





   



  

 
 
#line 381 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 391 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   

   

   



 



 

 
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

   



 



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 
#line 570 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 580 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 






 






   



  

 
 
#line 618 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 628 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 






 






   



  

 
 






 






   



  

 
 






 






   



  

 
 
#line 708 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 718 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 



 



   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CMD;
  volatile uint32_t ADR;
  volatile uint32_t DI;
  volatile uint32_t DO;
  volatile uint32_t KEY;
}MDR_EEPROM_TypeDef;

   



 



  

 
 
#line 782 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 796 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   

   

   



 



 

 
typedef struct
{
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
}MDR_RST_CLK_TypeDef;

   



 



  

 
 




 




   



  

 
 
#line 863 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 871 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 



 



   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 
#line 996 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 1004 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 





 





   



  

 
 





 





   

   

   



 



 

 
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

   



 



  

 
 





 





   



  

 
 



 



   

   

   



 



 

 
typedef struct
{
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
}MDR_UART_TypeDef;

   



 



  

 
 






 






   



  

 
 





 





   



  

 
 
#line 1214 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 1225 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 1241 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 1250 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 1271 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 1285 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 



 



   



  

 
 
#line 1320 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 1333 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 1353 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 1366 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 1386 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 1399 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 1419 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 1432 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 




 




   

   

   



 



 

 
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

   



 



  

 
 






 






   



  

 
 





 





   



  

 
 






 






   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 



 



   



  

 
 



 



   

   

   



 



 

 
typedef struct
{
  volatile uint32_t PRL;
  volatile uint32_t PRH;
  volatile uint32_t CTR;
  volatile uint32_t RXD;
  volatile uint32_t STA;
  volatile uint32_t TXD;
  volatile uint32_t CMD;
}MDR_I2C_TypeDef;

   



 



  

 
 




 




   



  

 
 






 






   



  

 
 
#line 1713 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 1721 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t PVDCS;
}MDR_POWER_TypeDef;

   



 



  

 
 
#line 1763 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 1774 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   

   

   



 



 

 
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

   



 



  

 
 



 



   

   

   



 



 

 
typedef struct
{
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
}MDR_TIMER_TypeDef;

   



 



  

 
 
#line 1945 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 1954 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 1972 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 1983 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 1998 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2006 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 




 




   



  

 
 





 





   



  

 
 
#line 2059 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2069 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 2086 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2096 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 2113 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2123 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 




 




   

   

   



 



 

 
typedef struct
{
  volatile uint32_t ADC1_CFG;
  volatile uint32_t ADC2_CFG;
  volatile uint32_t ADC1_H_LEVEL;
  volatile uint32_t ADC2_H_LEVEL;
  volatile uint32_t ADC1_L_LEVEL;
  volatile uint32_t ADC2_L_LEVEL;
  volatile uint32_t ADC1_RESULT;
  volatile uint32_t ADC2_RESULT;
  volatile uint32_t ADC1_STATUS;
  volatile uint32_t ADC2_STATUS;
  volatile uint32_t ADC1_CHSEL;
  volatile uint32_t ADC2_CHSEL;
}MDR_ADC_TypeDef;

   



 



  

 
 
#line 2201 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2220 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 2241 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2255 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
 



 



   



  

 
 
 






 






   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CFG;
  volatile uint32_t DAC1_DATA;
  volatile uint32_t DAC2_DATA;
}MDR_DAC_TypeDef;

   



 



  

 
 






 






   



  

 
 



 



   



  

 
 



 



   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CFG;
  volatile uint32_t RESULT;
  volatile uint32_t RESULT_LATCH;
}MDR_COMP_TypeDef;

   



 



  

 
 
#line 2415 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2427 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 




 




   

   

   



 



 

 
typedef struct
{
  volatile uint32_t RXTX;
  volatile uint32_t OE;
  volatile uint32_t FUNC;
  volatile uint32_t ANALOG;
  volatile uint32_t PULL;
  volatile uint32_t PD;
  volatile uint32_t PWR;
  volatile uint32_t GFEN;
}MDR_PORT_TypeDef;

   



 



  

 
 
#line 2500 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2518 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 



 



   



  

 
 



 



   



  

 
 
#line 2573 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2591 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   

   

   



 



 

 
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

   



 



  

 
 
#line 2651 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2660 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 2684 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2701 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 2717 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2726 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   

   

   



 



 

 
typedef struct
{
       uint32_t RESERVED0[20];
  volatile uint32_t NAND_CYCLES;
  volatile uint32_t CONTROL;



}MDR_EBC_TypeDef;

   



 



  

 
 
#line 2771 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2780 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



  

 
 
#line 2799 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

 
#line 2811 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"


   

#line 2838 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   

   

   




 

#line 2878 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   



 

#line 2913 "..\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\MDR32F9Qx\\inc\\MDR32Fx.h"

   





   

   

   





 
#line 61 "..\\..\\Config\\MDR32F9Qx_config.h"







 


 


 
 






 
#line 90 "..\\..\\Config\\MDR32F9Qx_config.h"


 




#line 116 "..\\..\\Config\\MDR32F9Qx_config.h"










 



 
 


 


 
            


 

 


 
 
 
 


 


 
 
 
 
 

 
 

 



 



 


 
 


 







 

 
 








 
#line 211 "..\\..\\Config\\MDR32F9Qx_config.h"

#line 225 "..\\..\\Config\\MDR32F9Qx_config.h"





 
#line 34 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"
#line 35 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"



 



 



 



 

typedef struct {

	uint32_t ADC_SynchronousMode; 		
 


	uint32_t ADC_StartDelay; 			
 

	uint32_t ADC_TempSensor; 			
 

	uint32_t ADC_TempSensorAmplifier; 	

 

	uint32_t ADC_TempSensorConversion; 	
 

	uint32_t ADC_IntVRefConversion; 	
 

	uint32_t ADC_IntVRefTrimming; 		
 





} ADC_InitTypeDef;



 

typedef struct
{
  uint32_t ADC_ClockSource;             
 

  uint32_t ADC_SamplingMode;            
 

  uint32_t ADC_ChannelSwitching;        
 

  uint32_t ADC_ChannelNumber;           
 

  uint32_t ADC_Channels;                
 

  uint32_t ADC_LevelControl;            
 

  uint16_t ADC_LowLevel;                
 

  uint16_t ADC_HighLevel;                
 

  uint32_t ADC_VRefSource;              
 

  uint32_t ADC_IntVRefSource;           
 

  uint32_t ADC_Prescaler;               
 

  uint32_t ADC_DelayGo;                 
 
}ADCx_InitTypeDef;

   



 





 







   





 



   



 







   



 







   



 







   



 







   



 







   



 







   



 







   



 







   




 

#line 275 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"

#line 292 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"





   



 

#line 321 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"

#line 338 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"











   



 









   



 







   



 







   



 

#line 409 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"

#line 426 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"

   



 



   



 









#line 455 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"

#line 464 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"







   



 












#line 494 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"






   

#line 516 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_adc.h"


   



 

   



 

void ADC_DeInit(void);

void ADC_Init(const ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);

void ADC_SetTrim(uint32_t Trim);

void ADC1_Init(const ADCx_InitTypeDef* ADCx_InitStruct);
void ADC2_Init(const ADCx_InitTypeDef* ADCx_InitStruct);
void ADCx_StructInit(ADCx_InitTypeDef* ADCx_InitStruct);

void ADC1_Cmd(FunctionalState NewState);
void ADC2_Cmd(FunctionalState NewState);

void ADC1_SetChannel(uint32_t Channel);
void ADC2_SetChannel(uint32_t Channel);
void ADC1_SetChannels(uint32_t ChannelMask);
void ADC2_SetChannels(uint32_t ChannelMask);

void ADC1_OperationModeConfig(uint32_t SamplingMode, uint32_t SwitchingMode);
void ADC2_OperationModeConfig(uint32_t SamplingMode, uint32_t SwitchingMode);
void ADC1_SamplingModeConfig(uint32_t SamplingMode);
void ADC2_SamplingModeConfig(uint32_t SamplingMode);
void ADC1_ChannelSwithingConfig(uint32_t SwitchingMode);
void ADC2_ChannelSwithingConfig(uint32_t SwitchingMode);

void ADC1_LevelsConfig(uint32_t LowLevel, uint32_t HighLevel, uint32_t NewState);
void ADC2_LevelsConfig(uint32_t LowLevel, uint32_t HighLevel, uint32_t NewState);
void ADC1_SetLowLevel(uint32_t LowLevel);
void ADC2_SetLowLevel(uint32_t LowLevel);
void ADC1_SetHighLevel(uint32_t HighLevel);
void ADC2_SetHighLevel(uint32_t HighLevel);

void ADC1_Start(void);
void ADC2_Start(void);

uint32_t ADC1_GetResult(void);
uint32_t ADC2_GetResult(void);

uint32_t ADC_GetStatus(void);
uint32_t ADC1_GetStatus(void);
uint32_t ADC2_GetStatus(void);
FlagStatus ADC_GetFlagStatus(uint32_t Flag);
FlagStatus ADC1_GetFlagStatus(uint32_t Flag);
FlagStatus ADC2_GetFlagStatus(uint32_t Flag);
void ADC1_ClearOverwriteFlag(void);
void ADC2_ClearOverwriteFlag(void);
void ADC1_ClearOutOfRangeFlag(void);
void ADC2_ClearOutOfRangeFlag(void);

void ADC_ITConfig(uint32_t ADC_IT, FunctionalState NewState);
void ADC1_ITConfig(uint32_t ADC_IT, FunctionalState NewState);
void ADC2_ITConfig(uint32_t ADC_IT, FunctionalState NewState);
ITStatus ADC_GetITStatus(uint32_t ADC_IT);
ITStatus ADC1_GetITStatus(uint32_t ADC_IT);
ITStatus ADC2_GetITStatus(uint32_t ADC_IT);

   

   

   









 

#line 23 "..\\..\\src\\Menu_text.c"
#line 1 "..\\..\\inc\\lcd.h"

















 




 
#line 25 "..\\..\\inc\\lcd.h"
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

   

   

   









 
#line 26 "..\\..\\inc\\lcd.h"
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

   



 



 



 









   


#line 113 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"



 



 









   



 



 











   



 



 

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
   




 



 








#line 434 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"







#line 477 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

#line 532 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"

   



 



 

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
#line 687 "..\\..\\..\\..\\Libraries\\MDR32F9Qx_StdPeriph_Driver\\inc\\MDR32F9Qx_rst_clk.h"
void RST_CLK_GetClocksFreq(RST_CLK_FreqTypeDef* RST_CLK_Clocks);

FlagStatus RST_CLK_GetFlagStatus(uint32_t RST_CLK_FLAG);






   

   

   









 
#line 27 "..\\..\\inc\\lcd.h"
#line 1 "..\\..\\inc\\types.h"

















 


 



 
#line 27 "..\\..\\inc\\types.h"

typedef unsigned char const    ucint8_t;
typedef volatile unsigned char vuint8_t;
typedef volatile unsigned long vuint32_t;

typedef enum {FALSE = 0, TRUE = !FALSE} bool;





 

#line 28 "..\\..\\inc\\lcd.h"
#line 29 "..\\..\\inc\\lcd.h"



 



 



 

 
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

   

 
#line 1 "..\\..\\inc\\lcd_MDR32F9Q1.h"



















 



 



 
#line 30 "..\\..\\inc\\lcd_MDR32F9Q1.h"
#line 31 "..\\..\\inc\\lcd_MDR32F9Q1.h"
#line 32 "..\\..\\inc\\lcd_MDR32F9Q1.h"
#line 33 "..\\..\\inc\\lcd_MDR32F9Q1.h"
#line 1 "..\\..\\inc\\lcd.h"

















 

#line 141 "..\\..\\inc\\lcd.h"



 

#line 34 "..\\..\\inc\\lcd_MDR32F9Q1.h"



 



 



 



 

 
typedef struct
{
    uint32_t Data;
    uint32_t Cmd;
}LCD_Ports;

   



 

extern const LCD_Ports CrystalPorts[NUM_LCD_CRYSTALS];

   



 




   

   

   

   







 

#line 116 "..\\..\\inc\\lcd.h"







 

void ResetLCD(void);
void SetCrystal(LCD_Crystal num);
void WriteLCD_Cmd(uint32_t val);
void WriteLCD_Data(uint32_t val);
uint32_t ReadLCD_Cmd(void);
uint32_t ReadLCD_Data(void);
void LCD_INIT(void);
void LCD_CLS(void);

   

   

   





 

#line 24 "..\\..\\src\\Menu_text.c"
#line 1 "..\\..\\inc\\Menu.h"


















 

 



 
#line 27 "..\\..\\inc\\Menu.h"



 



 



 



   



 



   



 

void Menu_Init(void);
void DisplayMenuTitle(ucint8_t *ptr);
void DisplayMenu(void);
 
void BackToMenuOnSel(void);
 
void ReadKey(void);

   

   

   





 

#line 25 "..\\..\\src\\Menu_text.c"
#line 1 "..\\..\\inc\\Menu_items.h"

















 

 





 



 



 



 

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

   

   

   

   





 

#line 26 "..\\..\\src\\Menu_text.c"
#line 1 "..\\..\\inc\\text.h"


















 

 



 
#line 1 "..\\..\\inc\\font_defs.h"

















 

 



 
#line 26 "..\\..\\inc\\font_defs.h"



 



 



 



 
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

   

   

   





 
#line 27 "..\\..\\inc\\text.h"



 



 



 




 
#line 50 "..\\..\\inc\\text.h"

   



 

 
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

   

   

   





 

#line 27 "..\\..\\src\\Menu_text.c"
#line 1 "..\\..\\inc\\joystick.h"

















 

 



 
#line 26 "..\\..\\inc\\joystick.h"
#line 27 "..\\..\\inc\\joystick.h"
#line 28 "..\\..\\inc\\joystick.h"



 



 



 

 
typedef enum
{
  SEL        = 0,
  UP         = 1,
  DOWN       = 2,
  LEFT       = 3,
  RIGHT      = 4,
  NOKEY      = 5,
  MULTIPLE   = 6,
  NUM_KEY_CODES
}KeyCode;

   



 

 

#line 73 "..\\..\\inc\\joystick.h"

#line 111 "..\\..\\inc\\joystick.h"

   



 






   



 

KeyCode GetKey(void);

   

   

   





 

#line 28 "..\\..\\src\\Menu_text.c"
#line 1 "..\\..\\inc\\adc.h"

















 

 



 
#line 26 "..\\..\\inc\\adc.h"
#line 27 "..\\..\\inc\\adc.h"



 



 



 


   



 


   



 

void ADC_Config(void);
void ADC_Temp_Sensor_Config(void);

   

   

   





 

#line 29 "..\\..\\src\\Menu_text.c"



 



 



 



 







 
void FontFunc(void)
{
  sFONT *OldFont = CurrentFont;

   
  LCD_CLS();
  CurrentMethod = MET_AND;
  CurrentFont = &Font_6x8;
  DisplayMenuTitle("Font examples");
  while((GetKey() == SEL)){};

   
  LCD_PUTS(0, 12, "Font6X8");

  CurrentFont = &Font_12x16;
  LCD_PUTS(0, 20, "Font12X16");

  CurrentFont = &Font_7x10_thin;
  LCD_PUTS(0, 36, "Font7X10");

  CurrentFont = &Font_7x10_bold;
  LCD_PUTS(0, 47, "Font7X10 bold");

   
  CurrentFont = OldFont;
  BackToMenuOnSel();
}







 
void StyleFunc(void)
{
  sFONT *OldFont = CurrentFont;

  LCD_CLS();
  CurrentMethod = MET_AND;
  CurrentFont = &Font_6x8;

   
  LCD_PUTS(0, 12, "Turn the Trimmer TRIM");
  LCD_PUTS(0, 22, "to control the delay");
  LCD_PUTS(0, 32, "between style frames.");
  LCD_PUTS(0, 42, "Push JoyStick SEL to");
  LCD_PUTS(0, 52, "start or stop.");

  while (!(GetKey() == SEL))
  {
  }

   
  ADC_Config();
   
  ADC1_Cmd(ENABLE);

   
  LCD_CLS();
  DisplayMenuTitle("Style examples");
  while((GetKey() == SEL)){};

   
  do
  {
    LCD_PUTS_Ex(0, 12, "Blink     ", StyleBlink);
    if ((GetKey() == SEL)) break;
    LCD_PUTS_Ex(0, 32, "FlipFlop", StyleFlipFlop);
    if ((GetKey() == SEL)) break;
    LCD_PUTS_Ex(0, 52, "Vibratory", StyleVibratory);
  } while (!(GetKey() == SEL));

   
  CurrentFont = OldFont;
   
  ADC1_Cmd(DISABLE);
  DisplayMenu();
}



 

 
static uint8_t Book[16][22] = {
    {"Microcontrollers of  "},
    {"MDR32F9Qx series are "},
    {"microcontrollers     "},
    {"with embedded Flash  "},
    {"program memory; they "},
    {"are built on the     "},
    {"base of high perfo-  "},
    {"mance RISC processor "},
    {"core Cortex-M3.      "},
    {"Microcontroller works"},
    {"on the up to 80 Mhz  "},
    {"frecuency and        "},
    {"contains 128 K Flash "},
    {"program memory and   "},
    {"32 K of RAM.         "}
};

   







 
void BookFunc(void)
{
  uint32_t top_ind, key, i;

   
  LCD_CLS();
  CurrentMethod = MET_AND;
  while((GetKey() == SEL)){};

   
  for (top_ind = 0, key = NOKEY; key != SEL; )
  {
     
    for (i = 0; i < 8; i++)
    {
      LCD_PUTS(0, (CurrentFont->Height) * i, Book[top_ind + i]);
    }
    while(GetKey() == NOKEY){};

     
    key = GetKey();
    switch (key)
    {
       
      case UP:
        if (top_ind > 0)
        {
          top_ind--;
        }
        break;
       
      case DOWN:
        if (top_ind < 7)
        {
          top_ind++;
        }
        break;
    }
  }

   
  while((GetKey() == key)){};
  DisplayMenu();
}







 
void AboutFunc(void)
{

#line 228 "..\\..\\src\\Menu_text.c"

   
  LCD_CLS();
  CurrentMethod = MET_AND;

  LCD_PUTS(0, 0, "   Milandr MDR32F9Q1   ");
  LCD_PUTS(0, CurrentFont->Height + 1, "   Evaluation board  ");
  LCD_PUTS(0, (CurrentFont->Height) * 2 + 2, "          ");
  LCD_PUTS(0, (CurrentFont->Height) * 3 + 2, "          ");
  LCD_PUTS(0, (CurrentFont->Height) * 4 + 3, " Appl. example v.3.0");
  LCD_PUTS(0, (CurrentFont->Height) * 5 + 4, "     Phyton 2011   ");
  LCD_PUTS(0, (CurrentFont->Height) * 6 + 5, "    www.phyton.ru  ");

   
  BackToMenuOnSel();
}

   

   

   

   



 

