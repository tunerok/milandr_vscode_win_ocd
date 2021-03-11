




















 

 
 

















 





















 

 


















 

 


 

 


 

 

 

 

 

 

 

 





 






















 

 




 





 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 












 






 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 





                 



  

                 













 

   



                 



























 


  #pragma system_include

 
 
 


  #pragma system_include

 

   

 

   #pragma system_include






 

 


 


 

 

 

 

 

 

 

 

 





 


  typedef struct
  {
    char *_Ap;
  } _VA_LIST;


















 












 




















 










 




















































































































 


 










 





















 














 















 













 








 












 











 










 









 











 









 









 









 









 














 














 
















 












 








 











 










 









 









 









 









 









 









 









 









 







 




 









 




 





 
















































 













 






 


   

  







 





 





 




 



 





 




 



 












 
   






 
  #pragma language = save 
  #pragma language = extended
  #pragma language = restore






 





 




 







                 




















 


                 

 

 
 

 

 

 

 



                 






 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 





 

                                 




                                 







                 

                 

                 

                 
                 



                 
                                 


  #pragma language=save
  #pragma language=extended
  typedef long long _Longlong;
  typedef unsigned long long _ULonglong;
  #pragma language=restore

  typedef unsigned short int _Wchart;
  typedef unsigned short int _Wintt;



                 

typedef signed int  _Ptrdifft;
typedef unsigned int     _Sizet;

 

                 
  typedef _VA_LIST __Va_list;


__intrinsic __nounwind void __iar_Atexit(void (*)(void));


  typedef struct
  {        
    unsigned int _Wchar;
    unsigned int _State;
  } _Mbstatet;


  typedef struct __FILE _Filet;

typedef struct
{        
  _Longlong _Off;     
  _Mbstatet _Wstate;
} _Fpost;




                 














 


  #pragma system_include





 






















































































 

 


  
 

   


  





  #pragma language=save 
  #pragma language=extended
  __intrinsic __nounwind void __iar_dlib_perthread_initialize(void  *);
  __intrinsic __nounwind void  *__iar_dlib_perthread_allocate(void);
  __intrinsic __nounwind void __iar_dlib_perthread_destroy(void);
  __intrinsic __nounwind void __iar_dlib_perthread_deallocate(void  *);



  #pragma segment = "__DLIB_PERTHREAD" 
  #pragma segment = "__DLIB_PERTHREAD_init" 









   
  void  *__iar_dlib_perthread_access(void  *);
  #pragma language=restore








     
  



   

  


  
  typedef void *__iar_Rmtx;
  
  
  __intrinsic __nounwind void __iar_system_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxunlock(__iar_Rmtx *m);

  __intrinsic __nounwind void __iar_file_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxunlock(__iar_Rmtx *m);

  
 
  __intrinsic __nounwind void __iar_clearlocks(void);



  



  


  typedef unsigned _Once_t;

  








                 


                 
  
  
    
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock(unsigned int);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock(unsigned int);

  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Initdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Dstdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Lockdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlockdynamicfilelock(__iar_Rmtx *);
  
  

                 


                 







 


 
  typedef signed char   int8_t;
  typedef unsigned char uint8_t;

  typedef signed short int   int16_t;
  typedef unsigned short int uint16_t;

  typedef signed int   int32_t;
  typedef unsigned int uint32_t;

  #pragma language=save
  #pragma language=extended
  typedef signed long long int   int64_t;
  typedef unsigned long long int uint64_t;
  #pragma language=restore


 
typedef signed char   int_least8_t;
typedef unsigned char uint_least8_t;

typedef signed short int   int_least16_t;
typedef unsigned short int uint_least16_t;

typedef signed int   int_least32_t;
typedef unsigned int uint_least32_t;

 
  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_least64_t;
  #pragma language=restore
  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_least64_t;
  #pragma language=restore



 
typedef signed int   int_fast8_t;
typedef unsigned int uint_fast8_t;

typedef signed int   int_fast16_t;
typedef unsigned int uint_fast16_t;

typedef signed int   int_fast32_t;
typedef unsigned int uint_fast32_t;

  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_fast64_t;
  #pragma language=restore
  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_fast64_t;
  #pragma language=restore

 
#pragma language=save
#pragma language=extended
typedef signed long long int   intmax_t;
typedef unsigned long long int uintmax_t;
#pragma language=restore


 
typedef signed long int   intptr_t;
typedef unsigned long int uintptr_t;

 
typedef int __data_intptr_t; typedef unsigned int __data_uintptr_t;

 

























 














 



 





















 

 



 



 



 



 
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



 

 

   

 
 







 

























 


 #pragma system_include   














 




 


 

 






 



 
 





 
 







 

























 




 



 

 











 



#pragma system_include









 


 
 

 

  #pragma system_include






 















 





  #pragma system_include



 



#pragma language=save
#pragma language=extended

__intrinsic __nounwind void    __no_operation(void);

__intrinsic __nounwind void    __disable_interrupt(void);
__intrinsic __nounwind void    __enable_interrupt(void);

typedef unsigned long __istate_t;

__intrinsic __nounwind __istate_t __get_interrupt_state(void);
__intrinsic __nounwind void __set_interrupt_state(__istate_t);


 
__intrinsic __nounwind unsigned long __get_PSR( void );
__intrinsic __nounwind unsigned long __get_IPSR( void );
__intrinsic __nounwind unsigned long __get_MSP( void );
__intrinsic __nounwind void          __set_MSP( unsigned long );
__intrinsic __nounwind unsigned long __get_PSP( void );
__intrinsic __nounwind void          __set_PSP( unsigned long );
__intrinsic __nounwind unsigned long __get_PRIMASK( void );
__intrinsic __nounwind void          __set_PRIMASK( unsigned long );
__intrinsic __nounwind unsigned long __get_CONTROL( void );
__intrinsic __nounwind void          __set_CONTROL( unsigned long );


 
__intrinsic __nounwind unsigned long __get_FAULTMASK( void );
__intrinsic __nounwind void          __set_FAULTMASK(unsigned long);
__intrinsic __nounwind unsigned long __get_BASEPRI( void );
__intrinsic __nounwind void          __set_BASEPRI( unsigned long );


__intrinsic __nounwind void __disable_fiq(void);
__intrinsic __nounwind void __enable_fiq(void);


 

__intrinsic __nounwind unsigned long __SWP( unsigned long, unsigned long * );
__intrinsic __nounwind unsigned char __SWPB( unsigned char, unsigned char * );

typedef unsigned long __ul;


 
__intrinsic __nounwind void          __MCR( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind unsigned long __MRC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind void          __MCR2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind unsigned long __MRC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );

 
__intrinsic __nounwind void __LDC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul const *src);
__intrinsic __nounwind void __LDCL( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul const *src);
__intrinsic __nounwind void __LDC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul const *src);
__intrinsic __nounwind void __LDC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul const *src);

 
__intrinsic __nounwind void __STC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul *dst);
__intrinsic __nounwind void __STCL( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul *dst);
__intrinsic __nounwind void __STC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul *dst);
__intrinsic __nounwind void __STC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul *dst);

 
__intrinsic __nounwind void __LDC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul const *src,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul const *src,
                                unsigned __constrange(0,255) option);

 
__intrinsic __nounwind void __STC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul *dst,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, __ul *dst,
                                unsigned __constrange(0,255) option);

 
__intrinsic __nounwind unsigned long __get_APSR( void );
__intrinsic __nounwind void          __set_APSR( unsigned long );

 
__intrinsic __nounwind unsigned long __get_FPSCR( void );
__intrinsic __nounwind void __set_FPSCR( unsigned long );

 
__intrinsic __nounwind unsigned char __CLZ( unsigned long );

 

__intrinsic __nounwind int         __QCFlag( void );
__intrinsic __nounwind void __reset_QC_flag( void );

__intrinsic __nounwind signed long __SMUL( signed short, signed short );

 
__intrinsic __nounwind unsigned long __REV( unsigned long );
__intrinsic __nounwind signed long __REVSH( short );

__intrinsic __nounwind unsigned long __REV16( unsigned long );
__intrinsic __nounwind unsigned long __RBIT( unsigned long );

__intrinsic __nounwind unsigned char  __LDREXB( unsigned char * );
__intrinsic __nounwind unsigned short __LDREXH( unsigned short * );
__intrinsic __nounwind unsigned long  __LDREX ( unsigned long * );
__intrinsic __nounwind unsigned long long __LDREXD( unsigned long long * );

__intrinsic __nounwind unsigned long  __STREXB( unsigned char, unsigned char * );
__intrinsic __nounwind unsigned long  __STREXH( unsigned short, unsigned short * );
__intrinsic __nounwind unsigned long  __STREX ( unsigned long, unsigned long * );
__intrinsic __nounwind unsigned long  __STREXD( unsigned long long, unsigned long long * );

__intrinsic __nounwind void __CLREX( void );

__intrinsic __nounwind void __SEV( void );
__intrinsic __nounwind void __WFE( void );
__intrinsic __nounwind void __WFI( void );
__intrinsic __nounwind void __YIELD( void );

__intrinsic __nounwind void __PLI( void const * );
__intrinsic __nounwind void __PLD( void const * );
__intrinsic __nounwind void __PLDW( void const * );

__intrinsic __nounwind unsigned long __SSAT     (unsigned long val,
                                      unsigned int __constrange( 1, 32 ) sat );
__intrinsic __nounwind unsigned long __USAT     (unsigned long val,
                                      unsigned int __constrange( 0, 31 ) sat );



 
__intrinsic __nounwind void __DMB(void);
__intrinsic __nounwind void __DSB(void);
__intrinsic __nounwind void __ISB(void);


#pragma language=restore




#pragma diag_suppress=Pe940
#pragma diag_suppress=Pe177



static uint32_t __get_xPSR(void)
{
  return __get_PSR();    
}








static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  return (op1 >> op2) | (op1 << ((sizeof(op1)*8)-op2));
}

#pragma diag_default=Pe940
#pragma diag_default=Pe177




   

 







 

























 




 



 

 




 






 

 






 

 












 


 





 


 
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

 












 


 













 






 

 



 










 

 



 




 










 

static inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
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







 
static inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8);    
}







 
static inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}







 
static inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}











 
static inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}







 
static inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}







 
static inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}










 
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 3)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 3)) & 0xff);    }         
}












 
static inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 3)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)]           >> (8 - 3)));  }  
}













 
static inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
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













 
static inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 3) ? 3 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 3) < 7) ? 0 : PriorityGroupTmp - 7 + 3;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}





 
static inline void NVIC_SystemReset(void)
{
  __DSB();                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                 (1UL << 2));                    
  __DSB();                                                      
  while(1);                                                     
}

 



 




 
















 
static inline uint32_t SysTick_Config(uint32_t ticks)
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











 
static inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL << 0))                  &&       
      (((ITM_Type *) (0xE0000000UL) )->TER & (1UL << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}








 
static inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }

  return (ch);
}








 
static inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}


 
























 



 



 



 

 



 

extern uint32_t SystemCoreClock;          
 

   



 

extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);

   


   

   

   



 



 

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

   



 



  

 
 

 

   



  

 
 

 

   



  

 
 

 

   



  

 
 

 

   



  

 
 

 

   



  

 
 

 

   



  

 
 

 

   



  

 
 

 

   



  

 
 

 

   



  

 
 

 

   



  

 
 

 

   



  

 
 

 

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CMD;
  volatile uint32_t ADR;
  volatile uint32_t DI;
  volatile uint32_t DO;
  volatile uint32_t KEY;
}MDR_EEPROM_TypeDef;

   



 



  

 
 

 

   

   

   



 



 

 
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

   



 



  

 
 

 

   



  

 
 

 

   



  

 
 

 

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t PVDCS;
}MDR_POWER_TypeDef;

   



 



  

 
 

 

   

   

   



 



 

 
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

   



 



  

 
 

 

   



  

 
 

 

   



  

 
 

 

   

   

   



 



 

 
typedef struct
{
       uint32_t RESERVED0[20];
  volatile uint32_t NAND_CYCLES;
  volatile uint32_t CONTROL;
}MDR_EBC_TypeDef;

   



 



  

 
 

 

   



  

 
 

 


   


   

   

   




 


   



 


   


   

   

   




 


 
 

 
 

 

 








 

 
 

 


 
            

 

 

 
 
 
 


 

 
 
 
 
 
 
 

 



 



 


 
 

 







 
 
 








 





 





















 

 


 



 



 



 



 

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
void RST_CLK_GetClocksFreq(RST_CLK_FreqTypeDef* RST_CLK_Clocks);

FlagStatus RST_CLK_GetFlagStatus(uint32_t RST_CLK_FLAG);


   

   

   





 


















 

 


 


















 

 


 

























 

 


 






















 

 


 
























 

 


 



 



 



 



 

typedef enum
{
  USB_EP0  = 0,
  USB_EP1  = 1,
  USB_EP2  = 2,
  USB_EP3  = 3,
  Num_USB_EndPoints
}USB_EP_TypeDef;




 

typedef struct
{
  uint32_t USB_USBC1_Source;       
 
  uint32_t USB_PLLUSBMUL;          
 
}USB_Clock_TypeDef;

typedef struct
{
  uint8_t USB_Version;              
  uint8_t USB_Revision;             
}USB_Version_TypeDef;

   



 


   



 



   



 




   



 



 











   



 








   



 



   



 









   



 



   



 






   



 








   



 












   



 



   


   



 



 









   



 












   



 




   



 




   



 










   



 



   



 




   



 









   


   




 

void USB_BRGInit(const USB_Clock_TypeDef* USB_Clock_InitStruct);
void USB_Reset(void);



 

uint32_t USB_GetHSCR(void);
void     USB_SetHSCR(uint32_t RegValue);

USB_Version_TypeDef USB_GetHSVR(void);



 

uint32_t USB_GetHTXC(void);
void     USB_SetHTXC(uint32_t RegValue);
uint32_t USB_GetHTXT(void);
void     USB_SetHTXT(uint32_t RegValue);
uint32_t USB_GetHTXLC(void);
void     USB_SetHTXLC(uint32_t RegValue);
uint32_t USB_GetHTXSE(void);
void     USB_SetHTXSE(uint32_t RegValue);
uint32_t USB_GetHTXA(void);
void     USB_SetHTXA(uint32_t RegValue);
uint32_t USB_GetHTXE(void);
void     USB_SetHTXE(uint32_t RegValue);
uint32_t USB_GetHFN(void);
uint32_t USB_GetHIS(void);
void     USB_SetHIS(uint32_t RegValue);
uint32_t USB_GetHIM(void);
void     USB_SetHIM(uint32_t RegValue);
uint32_t USB_GetHRXS(void);
uint32_t USB_GetHRXP(void);
uint32_t USB_GetHRXA(void);
uint32_t USB_GetHRXE(void);
uint32_t USB_GetHRXCS(void);
uint32_t USB_GetHSTM(void);
uint32_t USB_GetHRXFD(void);
uint32_t USB_GetHRXFDC(void);
uint32_t USB_GetHRXFC(void);
void     USB_SetHRXFC(uint32_t RegValue);
uint32_t USB_GetHTXFD(void);
void     USB_SetHTXFD(uint32_t RegValue);
uint32_t USB_GetHTXFC(void);
void     USB_SetHTXFC(uint32_t RegValue);



 

uint32_t USB_GetSEPxCTRL(USB_EP_TypeDef EndPointNumber);
void     USB_SetSEPxCTRL(USB_EP_TypeDef EndPointNumber, uint32_t RegValue);
uint32_t USB_GetSEPxSTS(USB_EP_TypeDef EndPointNumber);
uint32_t USB_GetSEPxTS(USB_EP_TypeDef EndPointNumber);
uint32_t USB_GetSEPxNTS(USB_EP_TypeDef EndPointNumber);
uint32_t USB_GetSC(void);
void     USB_SetSC(uint32_t RegValue);
uint32_t USB_GetSLS(void);
uint32_t USB_GetSIS(void);
void     USB_SetSIS(uint32_t RegValue);
uint32_t USB_GetSIM(void);
void     USB_SetSIM(uint32_t RegValue);
uint32_t USB_GetSA(void);
void     USB_SetSA(uint32_t RegValue);
uint32_t USB_GetSFN(void);
uint32_t USB_GetSEPxRXFD(USB_EP_TypeDef EndPointNumber);
uint32_t USB_GetSEPxRXFDC(USB_EP_TypeDef EndPointNumber);
uint32_t USB_GetSEPxRXFC(USB_EP_TypeDef EndPointNumber);
void     USB_SetSEPxRXFC(USB_EP_TypeDef EndPointNumber, uint32_t RegValue);
uint32_t USB_GetSEPxTXFD(USB_EP_TypeDef EndPointNumber);
void     USB_SetSEPxTXFD(USB_EP_TypeDef EndPointNumber, uint32_t RegValue);
uint32_t USB_GetSEPxTXFDC(USB_EP_TypeDef EndPointNumber);
void     USB_SetSEPxTXFDC(USB_EP_TypeDef EndPointNumber, uint32_t RegValue);
void     USB_SEPxToggleEPDATASEQ(USB_EP_TypeDef EndPointNumber);

   

   

   





 



 



 



 



 

typedef enum
{
  USB_HOST_TO_DEVICE  = 0x0,
  USB_DEVICE_TO_HOST  = 0x80
}USB_RequestTypeDT_TypeDef;



 

typedef enum
{
  USB_TYPE_STANDARD  = 0x0,
  USB_TYPE_CLASS     = 0x20,
  USB_TYPE_VENDOR    = 0x40
}USB_RequestType_TypeDef;




 

typedef enum
{
  USB_GET_STATUS = 0,
  USB_CLEAR_FEATURE,
  USB_Reserved0,
  USB_SET_FEATURE,
  USB_Reserved1,
  USB_SET_ADDRESS,
  USB_GET_DESCRIPTOR,
  USB_SET_DESCRIPTOR,
  USB_GET_CONFIGURATION,
  USB_SET_CONFIGURATION,
  USB_GET_INTERFACE,
  USB_SET_INTERFACE,
  USB_SYNCH_FRAME
} USB_Standard_Setup_TypeDef;



 

typedef enum
{
  USB_DEVICE = 1,
  USB_CONFIGURATION,
  USB_STRING,
  USB_INTERFACE,
  USB_ENDPOINT,
  USB_DEVICE_QUALIFIER,
  USB_OTHER_SPEED_CONFIGURATION,
  USB_INTERFACE_POWER
} USB_Standard_Descriptor_TypeDef;



 

typedef enum
{
  USB_ENDPOINT_HALT = 0,
  USB_DEVICE_REMOTE_WAKEUP,
  USB_TEST_MODE
} USB_Standard_Festure_Selector_TypeDef;



 

typedef enum
{
  USB_RECIPIENT_DEVICE    = 0x0,
  USB_RECIPIENT_INTERFACE = 0x1,
  USB_RECIPIENT_ENDPOINT  = 0x2,
  USB_RECIPIENT_OTHER     = 0x3
}USB_RequestRecipient_TypeDef;




 

typedef struct
{
  uint8_t  mRequestTypeData;             


 
  uint8_t  bRequest;                      
  uint16_t wValue;                        
  uint16_t wIndex;                        
  uint16_t wLength;                       
}USB_SetupPacket_TypeDef;

   



 



 



 

typedef enum
{
  USB_SUCCESS     = 0x0,              
  USB_ERROR       = 0x1,              
  USB_ERR_INV_REQ = 0x2,              
  USB_ERR_BUSY    = 0x200,            
}USB_Result;



 

typedef enum {USB_STALL_PROTO = 0x0, USB_STALL_HALT = 0x1} USB_StallType;



 

typedef USB_Result (*USB_EP_IO_Handler)(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length);
typedef USB_Result (*USB_EP_Setup_Handler)(USB_EP_TypeDef EPx, const USB_SetupPacket_TypeDef* USB_SetupPacket);
typedef USB_Result (*USB_EP_Error_Handler)(USB_EP_TypeDef EPx, uint32_t STS, uint32_t TS, uint32_t CTRL);

   

   



 


   



 

   



 

USB_Result USB_EP_Init(USB_EP_TypeDef EPx, uint32_t USB_EP_Ctrl, USB_EP_Error_Handler onError);
USB_Result USB_EP_Reset(USB_EP_TypeDef EPx);
USB_Result USB_EP_Idle(USB_EP_TypeDef EPx);
USB_Result USB_EP_Stall(USB_EP_TypeDef EPx, USB_StallType bHalt);

USB_Result USB_EP_doDataIn(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length, USB_EP_IO_Handler onInDone);
USB_Result USB_EP_doDataOut(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length, USB_EP_IO_Handler onOutDone);

USB_Result USB_EP_setSetupHandler(USB_EP_TypeDef EPx, USB_SetupPacket_TypeDef* USB_SetupPacket, USB_EP_Setup_Handler onSetupPacket);

USB_Result USB_EP_dispatchEvent(USB_EP_TypeDef EPx, uint32_t USB_IT);

   

   



 



 



 

typedef enum
{
  USB_DEV_STATE_UNKNOWN = 0,
  USB_DEV_STATE_ATTACHED,
  USB_DEV_STATE_POWERED,
  USB_DEV_STATE_DEFAULT,
  USB_DEV_STATE_ADDRESS,
  USB_DEV_STATE_CONFIGURED,
  Num_USB_DEV_STATE
}USB_DeviceState_TypeDef;



 

typedef enum
{
  USB_DEV_SELF_POWERED_OFF = 0,
  USB_DEV_SELF_POWERED_ON  = 1
} USB_DeviceSelfPoweredState_TypeDef;



 

typedef enum
{
  USB_DEV_REMOTE_WAKEUP_DISABLED = 0,
  USB_DEV_REMOTE_WAKEUP_ENABLED = 1
}USB_DeviceRemoteWakeup_TypeDef;



 

typedef struct
{
  uint32_t                           Reserved;
}Usb_DeviceStatus_TypeDef;



 

typedef struct {
  USB_DeviceState_TypeDef  USB_DeviceState;
  Usb_DeviceStatus_TypeDef USB_DeviceStatus;
  uint32_t Address;
}USB_DeviceContext_TypeDef;



 

typedef struct {
  uint32_t PULL;                           




 
  uint32_t SPEED;                          


 
  uint32_t MODE;                           


 
}USB_DeviceBUSParam_TypeDef;




   



 

   



 



 

extern USB_SetupPacket_TypeDef USB_CurrentSetupPacket;



 

extern USB_DeviceContext_TypeDef USB_DeviceContext;

   



 

   



 

USB_Result USB_DeviceInit(const USB_Clock_TypeDef* USB_Clock_InitStruct, USB_DeviceBUSParam_TypeDef* USB_DeviceBUSParam);
USB_Result USB_DevicePowerOn(void);
USB_Result USB_DevicePowerOff(void);

USB_Result USB_DeviceReset(void);
USB_Result USB_DeviceSuspend(void);
USB_Result USB_DeviceResume(void);

USB_Result USB_DeviceSetupPacket(USB_EP_TypeDef EPx, const USB_SetupPacket_TypeDef* USB_SetupPacket);

USB_Result USB_DeviceClearFeature(USB_RequestRecipient_TypeDef Recipient, uint16_t wVALUE, uint16_t wINDEX);
USB_Result USB_DeviceSetFeature(USB_RequestRecipient_TypeDef Recipient, uint16_t wVALUE, uint16_t wINDEX);

USB_Result USB_DeviceDoStatusInAck(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length);
USB_Result USB_DeviceDoStatusOutAck(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length);

USB_Result USB_DeviceDispatchEvent(void);

void USB_IRQHandler(void);



 

USB_Result USB_DeviceDummyGetStatus(USB_RequestRecipient_TypeDef Recipient, uint16_t wINDEX);
USB_Result USB_DeviceDummySetAddress(uint16_t wVALUE);
USB_Result USB_DeviceDummyGetDescriptor(uint16_t wVALUE, uint16_t wINDEX, uint16_t wLENGTH);
USB_Result USB_DeviceDummySetDescriptor(uint16_t wVALUE, uint16_t wINDEX, uint16_t wLENGTH);
uint8_t    USB_DeviceDummyGetConfiguration(void);
USB_Result USB_DeviceDummySetConfiguration(uint16_t wVALUE);
uint8_t    USB_DeviceDummyGetInterface(uint16_t wINDEX);
USB_Result USB_DeviceDummySetInterface(uint16_t wVALUE, uint16_t wINDEX);
USB_Result USB_DeviceDummySyncFrame(uint16_t wINDEX, uint8_t* DATA);
USB_Result USB_DeviceDummyClassRequest(void);
USB_Result USB_DeviceDummyVendorRequest(void);
USB_Result USB_DeviceDummyDataError(USB_EP_TypeDef EPx, uint32_t STS, uint32_t TS, uint32_t CTRL);

   

   

   

   

   





 



 



 



 



 



 

typedef enum
{
  USB_CDC_SEND_ENCAPSULATED_COMMAND = 0x00,
  USB_CDC_GET_ENCAPSULATED_RESPONSE,
  USB_CDC_SET_COMM_FEATURE,
  USB_CDC_GET_COMM_FEATURE,
  USB_CDC_CLEAR_COMM_FEATURE,
  USB_CDC_SET_AUX_LINE_STATE        = 0x10,
  USB_CDC_SET_HOOK_STATE,
  USB_CDC_PULSE_SETUP,
  USB_CDC_SEND_PULSE,
  USB_CDC_SET_PULSE_TIME,
  USB_CDC_RING_AUX_JACK,
  USB_CDC_SET_LINE_CODING           = 0x20,
  USB_CDC_GET_LINE_CODING,
  USB_CDC_SET_CONTROL_LINE_STATE,
  USB_CDC_SEND_BREAK,
  USB_CDC_SET_RINGER_PARAMS         = 0x30,
  USB_CDC_GET_RINGER_PARAMS,
  USB_CDC_SET_OPERATION_PARAMS,
  USB_CDC_GET_OPERATION_PARAMS,
  USB_CDC_SET_LINE_PARAMS,
  USB_CDC_GET_LINE_PARAMS,
  USB_CDC_DIAL_DIGITS
} USB_CDC_Class_Setup_TypeDef;




 

typedef enum
{
  USB_CDC_bRxCarrier  = 0x01,
  USB_CDC_bTxCarrier  = 0x02,
  USB_CDC_bBreak      = 0x04,
  USB_CDC_bRingSignal = 0x08,
  USB_CDC_bFraming    = 0x10,
  USB_CDC_bParity     = 0x20,
  USB_CDC_bOverRun    = 0x40
}USB_CDCSerialState_TypeDef;



 

typedef enum
{
  USB_CDC_STOP_BITS1   = 0x0,
  USB_CDC_STOP_BITS1_5 = 0x1,
  USB_CDC_STOP_BITS2   = 0x2,
}USB_CDC_CharFormat_TypeDef;



 

typedef enum
{
  USB_CDC_PARITY_NONE  = 0x0,
  USB_CDC_PARITY_ODD   = 0x1,
  USB_CDC_PARITY_EVEN  = 0x2,
  USB_CDC_PARITY_MARK  = 0x3,
  USB_CDC_PARITY_SPACE = 0x4
}USB_CDC_ParityType_TypeDef;



 

typedef enum
{
  USB_CDC_DATA_BITS5  = 0x5,
  USB_CDC_DATA_BITS6  = 0x6,
  USB_CDC_DATA_BITS7  = 0x7,
  USB_CDC_DATA_BITS8  = 0x8,
  USB_CDC_DATA_BITS16 = 0xA
}USB_CDC_DataBits_TypeDef;



 

typedef struct
{
  uint32_t dwDTERate;
  uint8_t  bCharFormat;
  uint8_t  bParityType;
  uint8_t  bDataBits;
}USB_CDC_LineCoding_TypeDef;



 

typedef enum
{
  USB_CDC_DTR_PRESENT          = 0x1,
  USB_CDC_RTS_ACTIVATE_CARRIER = 0x2
}USB_CDC_ControlLineState_TypeDef;




 

typedef enum
{
  USB_CDC_RING_DETECT             = 0x09,
  USB_CDC_SERIAL_STATE            = 0x20,
  USB_CDC_CALL_STATE_CHANGE       = 0x28,
  USB_CDC_LINE_STATE_CHANGE       = 0x29,
  USB_CDC_CONNECTION_SPEED_CHANGE = 0x2A
}USB_CDC_LineStateReport_TypeDef;

   



 

   



 


   



 



 


   

   



 

USB_Result USB_CDC_Init(uint8_t* ReceiveBuffer, uint32_t DataPortionLength, FlagStatus StartReceiving);

USB_Result USB_CDC_SetReceiveBuffer(uint8_t* ReceiveBuffer, uint32_t DataPortionLength);
USB_Result USB_CDC_ReceiveStart(void);
USB_Result USB_CDC_ReceiveStop(void);

USB_Result USB_CDC_SendData(uint8_t* Buffer, uint32_t Length);




 

USB_Result USB_CDC_Reset(void);
USB_Result USB_CDC_GetDescriptor(uint16_t wVALUE, uint16_t wINDEX, uint16_t wLENGTH);
USB_Result USB_CDC_ClassRequest(void);

   



 

USB_Result USB_CDC_DummyDataReceive(uint8_t* Buffer, uint32_t Length);
USB_Result USB_CDC_DummyDataSent(void);



USB_Result USB_CDC_DummyGetLineCoding(uint16_t wINDEX, USB_CDC_LineCoding_TypeDef* DATA);
USB_Result USB_CDC_DummySetLineCoding(uint16_t wINDEX, const USB_CDC_LineCoding_TypeDef* DATA);



   

   

   

   

   





 

 



 



 



 



 



 




 




 




 




 




 



 




 




 




 



 




 



 




 



 




 



 




 



 




 



 




 



 




 



 




 



 




 

   



 



 



 



 




 



 




 



 




 






 




 



 




 






 




 

   

   



 




   


   

   

   

   





 



 



 



 

 





 







   




 

USB_Result USB_CDC_RecieveData(uint8_t* Buffer, uint32_t Length);

USB_Result USB_CDC_GetLineCoding(uint16_t wINDEX, USB_CDC_LineCoding_TypeDef* DATA);
USB_Result USB_CDC_SetLineCoding(uint16_t wINDEX, const USB_CDC_LineCoding_TypeDef* DATA);



   

   

   

   





 




 



 



 

   



 



 



 

typedef enum
{
  USB_EP_NAK,
  USB_EP_IDLE,
  USB_EP_IN,
  USB_EP_OUT,
  USB_EP_SETUP,
  USB_EP_STALL
}USB_EPState_TypeDef;



 

typedef struct
{
  USB_EPState_TypeDef EP_State;
  USB_StallType EP_Halt;
  struct
  {
    struct
    {
       
      uint8_t *pBuffer;
      uint32_t length, offset;
      uint32_t bytesToAck;        
 
    }IO_Buffer;
     
    USB_SetupPacket_TypeDef *pSetupPacket;
  }Buffer;
  FlagStatus EP_WasScdone;
  FlagStatus EP_WaitOut, EP_WaitSetup;
  USB_EP_IO_Handler InHandler;
  USB_EP_IO_Handler OutHandler;
  USB_EP_Setup_Handler SetupHandler;
  USB_EP_Error_Handler ErrorHandler;
}USB_EPContext_TypeDef;



 

typedef enum
{
  USB_DATA_BIT_KEEP,
  USB_DATA_BIT_TOGGLE,
  USB_DATA_BIT_DATA1,
}USB_EPData_Bit_TypeDef;

   



 



 

USB_EPContext_TypeDef USB_EPContext[Num_USB_EndPoints];

   



 

   



 


   



 

static void USB_EP_sendInDataPortion(USB_EP_TypeDef EPx, USB_EPData_Bit_TypeDef DataBitChange);
static void USB_EP_SetReady(USB_EP_TypeDef EPx, uint32_t val);

   



 













 

USB_Result USB_EP_Init(USB_EP_TypeDef EPx, uint32_t USB_EP_Ctrl, USB_EP_Error_Handler onError)
{
  USB_EPContext_TypeDef *ep = USB_EPContext + EPx;

   
  ep->Buffer.IO_Buffer.pBuffer    = 0;
  ep->Buffer.IO_Buffer.length     = 0;
  ep->Buffer.IO_Buffer.bytesToAck = 0;
  ep->Buffer.IO_Buffer.offset     = 0;
  ep->Buffer.pSetupPacket         = 0;
  ep->InHandler                   = 0;
  ep->OutHandler                  = 0;
  ep->SetupHandler                = 0;
  ep->ErrorHandler                = onError;
  ep->EP_Halt                     = USB_STALL_PROTO;
  ep->EP_State                    = USB_EP_NAK;
  ep->EP_WasScdone                = RESET;

  USB_SetSEPxCTRL(EPx, USB_EP_Ctrl);

  return USB_SUCCESS;
}









 

USB_Result USB_EP_Reset(USB_EP_TypeDef EPx)
{
  USB_EPContext_TypeDef *ep = USB_EPContext + EPx;

  ep->EP_State = USB_EP_NAK;
  ep->EP_WasScdone = RESET;

  USB_SetSEPxCTRL(EPx, (uint32_t)(1 << (4 + 16))  |                            
                       (uint32_t)(1 << (1 + 16)) |                            
                       (uint32_t)(1 << 0));                               

  return USB_SUCCESS;
}












 

USB_Result USB_EP_Idle(USB_EP_TypeDef EPx)
{
  USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
  uint32_t val = (uint32_t)(1 << (3 + 16));                                

  if (ep->EP_WaitOut || ep->EP_WaitSetup)
  {
    ep->EP_State = USB_EP_IDLE;
    val |= (uint32_t)(1 << 1);                                            
  }
  else
  {
    ep->EP_State = USB_EP_NAK;
  }
  ep->EP_Halt = USB_STALL_PROTO;

  USB_EP_SetReady(EPx, val);

  return USB_SUCCESS;
}
















 

USB_Result USB_EP_Stall(USB_EP_TypeDef EPx, USB_StallType bHalt)
{
  USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
  uint32_t val = 0;

  if (bHalt == USB_STALL_HALT && EPx == USB_EP0)
  {
     
    return USB_ERROR;
  }

  if (bHalt == USB_STALL_HALT || ep->EP_WaitSetup)
  {
    ep->EP_Halt  = bHalt;
    ep->EP_State = USB_EP_STALL;
    val = (uint32_t)(1 << 3) |                                           
          (uint32_t)(1 << 1);                                               
  }

  USB_EP_SetReady(EPx, val);

  return USB_SUCCESS;
}

















 

USB_Result USB_EP_doDataIn(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length, USB_EP_IO_Handler onInDone)
{
  USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
   
  USB_EPData_Bit_TypeDef StartInStage = (ep->EP_WaitSetup ? USB_DATA_BIT_DATA1 : USB_DATA_BIT_TOGGLE);

   
  ep->Buffer.IO_Buffer.pBuffer    = Buffer;
  ep->Buffer.IO_Buffer.length     = Length;
  ep->Buffer.IO_Buffer.bytesToAck = 32;
  ep->Buffer.IO_Buffer.offset     = 0;
  ep->InHandler                   = onInDone;
  ep->EP_State                    = USB_EP_IN;

   
  USB_EP_sendInDataPortion(EPx, StartInStage);

  return USB_SUCCESS;
}




















 

USB_Result USB_EP_doDataOut(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length, USB_EP_IO_Handler onOutDone)
{
  USB_EPContext_TypeDef *ep = USB_EPContext + EPx;

   
  ep->Buffer.IO_Buffer.pBuffer    = Buffer;
  ep->Buffer.IO_Buffer.length     = Length;
  ep->Buffer.IO_Buffer.bytesToAck = 0;
  ep->Buffer.IO_Buffer.offset     = 0;
  ep->OutHandler                  = onOutDone;
  ep->EP_WaitOut                  = SET;

   
  USB_EP_Idle(EPx);

  return USB_SUCCESS;
}
















 

USB_Result USB_EP_setSetupHandler(USB_EP_TypeDef EPx, USB_SetupPacket_TypeDef* USB_SetupPacket, USB_EP_Setup_Handler onSetupPacket)
{
  USB_EPContext_TypeDef *ep = USB_EPContext + EPx;

   
  ep->Buffer.pSetupPacket         = USB_SetupPacket;
  ep->Buffer.IO_Buffer.length     = 0;
  ep->Buffer.IO_Buffer.bytesToAck = 0;
  ep->Buffer.IO_Buffer.offset     = 0;
  ep->SetupHandler                = onSetupPacket;
  ep->EP_WaitSetup                = onSetupPacket ? SET : RESET;

   
  USB_EP_Idle(EPx);

  return USB_SUCCESS;
}














 

USB_Result USB_EP_dispatchEvent(USB_EP_TypeDef EPx, uint32_t USB_IT)
{
  FlagStatus nextIteration = RESET;
  USB_Result result = USB_SUCCESS;
  uint32_t tmpSTS, tmpTS, tmpCTRL;
  uint32_t i, count;
  USB_EPContext_TypeDef *ep;

  tmpSTS = USB_GetSEPxSTS(EPx);
  tmpTS  = (USB_GetSEPxTS(EPx) & (uint32_t)(0x00000003));
  tmpCTRL = USB_GetSEPxCTRL(EPx);

  ep = USB_EPContext + EPx;

   
  if (USB_IT & ((uint32_t)0x00000001))
  {
    ep->EP_WasScdone = SET;
  }

  do
  {
    switch (ep->EP_State)
    {
       
      case USB_EP_NAK:
      {
         
        return USB_SUCCESS;
      }

       
      case USB_EP_IDLE:
      {
        if (!(tmpCTRL & ((uint32_t)0x00000002)) && ep->EP_WasScdone)
        {
           
          if ((tmpTS == (uint32_t)(0x00000002)) && ep->EP_WaitOut)
          {
             
            ep->EP_State = USB_EP_OUT;
            ep->EP_WaitOut = RESET;
            nextIteration = SET;
          }
          else if ((tmpTS == (uint32_t)(0x00000000)) && ep->EP_WaitSetup)
          {
             
            ep->EP_State = USB_EP_SETUP;
            nextIteration = SET;
          }
          else
          {
             
            result = USB_ERROR;
            USB_EP_Stall(EPx, USB_STALL_PROTO);
          }
        }
        break;
      }

       
      case USB_EP_IN:
      {
         
        if ((!(tmpCTRL & ((uint32_t)0x00000002))) && ep->EP_WasScdone &&
            (tmpTS == (uint32_t)(0x00000001)) && (tmpSTS & ((uint32_t)0x00000040)))
        {
           
          ep->Buffer.IO_Buffer.offset += ep->Buffer.IO_Buffer.bytesToAck;
          if (ep->Buffer.IO_Buffer.offset >= ep->Buffer.IO_Buffer.length)
          {
            
 
            ep->EP_State = USB_EP_NAK;
            if (ep->InHandler != 0)
            {
              result = ep->InHandler(EPx, ep->Buffer.IO_Buffer.pBuffer, ep->Buffer.IO_Buffer.length);
            }

            if (result == USB_SUCCESS)
            {
              
 
              if (ep->EP_State == USB_EP_NAK)
              {
                USB_EP_Idle(EPx);
              }
            }
            else
            {
               
              USB_EP_Stall(EPx, USB_STALL_PROTO);
            }
          }
          else
          {
             
            USB_EP_sendInDataPortion(EPx, USB_DATA_BIT_TOGGLE);
          }
        }
        else if (tmpSTS & (((uint32_t)0x00000004)
                         | ((uint32_t)0x00000001)
                         | ((uint32_t)0x00000002)
                         | ((uint32_t)0x00000008)))
        {
          
 
          ep->EP_State = USB_EP_NAK;
          if (ep->ErrorHandler != 0)
          {
            result = ep->ErrorHandler(EPx, tmpSTS, tmpTS, tmpCTRL);
          }
          if (result == USB_SUCCESS)
          {
            if (ep->EP_State == USB_EP_NAK)
            {
              
 
              ep->EP_State = USB_EP_IN;
              USB_EP_sendInDataPortion(EPx, USB_DATA_BIT_KEEP);
            }
          }
          else
          {
             
            USB_EP_Stall(EPx, USB_STALL_PROTO);
          }
        }
        break;
      }

       
      case USB_EP_OUT:
      {
         
        if (!(tmpCTRL & ((uint32_t)0x00000002)) && ep->EP_WasScdone)
        {
          nextIteration = RESET;

           
          count = USB_GetSEPxRXFDC(EPx);
          for (i = 0; i < count; i++)
          {
            ep->Buffer.IO_Buffer.pBuffer[ep->Buffer.IO_Buffer.offset + i] = USB_GetSEPxRXFD(EPx);
          }
          USB_SetSEPxRXFC(EPx, 1);
          ep->Buffer.IO_Buffer.offset += count;

          
 
          if (ep->Buffer.IO_Buffer.offset >= ep->Buffer.IO_Buffer.length)
          {
            ep->EP_State = USB_EP_NAK;
            if (ep->OutHandler != 0)
            {
              result = ep->OutHandler(EPx, ep->Buffer.IO_Buffer.pBuffer, ep->Buffer.IO_Buffer.offset);
            }

            if (result == USB_SUCCESS)
            {
              
 
              if (ep->EP_State == USB_EP_NAK)
              {
                USB_EP_Idle(EPx);
              }
            }
            else
            {
               
              USB_EP_Stall(EPx, USB_STALL_PROTO);
            }
          }
          else
          {
             
            USB_EP_SetReady(EPx, (uint32_t)(1 << 1));
          }
        }
        break;
      }

       
      case USB_EP_SETUP:
      {
         
        if (ep->EP_WasScdone)
        {
          ((void)0);

           
          count = USB_GetSEPxRXFDC(EPx);
          if (count == 8)
          {
            for (i = 0; i < count; i++)
            {
              ((uint8_t*)ep->Buffer.pSetupPacket)[i] = USB_GetSEPxRXFD(EPx);
            }
            USB_SetSEPxRXFC(EPx, 1);

             
            result = ep->SetupHandler(EPx, ep->Buffer.pSetupPacket);

            if (result == USB_SUCCESS)
            {
              
 
              if (ep->EP_State == USB_EP_SETUP)
              {
                USB_EP_Idle(EPx);
              }
            }
            else
            {
               
              USB_EP_Stall(EPx, USB_STALL_PROTO);
            }
          }
          else  
          {
            USB_SetSEPxRXFC(EPx, 1);
            result = USB_ERROR;
             
            USB_EP_Stall(EPx, USB_STALL_PROTO);
          }
        }
        nextIteration = RESET;
        break;
      }

       
      case USB_EP_STALL:
      {
        if (!(tmpCTRL & ((uint32_t)0x00000002)))
        {
           
          if (ep->EP_Halt == USB_STALL_HALT)
          {
            USB_EP_Stall(EPx, USB_STALL_HALT);
          }
          else
          {
            USB_EP_Idle(EPx);
          }
        }
        break;
      }
    }
  } while (nextIteration);

  return result;
}















 

static void USB_EP_sendInDataPortion(USB_EP_TypeDef EPx, USB_EPData_Bit_TypeDef DataBitChange)
{
  USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
  uint32_t i, total;

  ((void)0);

   
  USB_SetSEPxTXFDC(EPx, 1);

   
  switch (DataBitChange)
  {
    case USB_DATA_BIT_KEEP:
      break;
    case USB_DATA_BIT_TOGGLE:
      USB_SEPxToggleEPDATASEQ(EPx);
      break;
    case USB_DATA_BIT_DATA1:
      USB_SetSEPxCTRL(EPx, (uint32_t)(1 << 2));
      break;
  }

   
  total = (ep->Buffer.IO_Buffer.offset + ep->Buffer.IO_Buffer.bytesToAck < ep->Buffer.IO_Buffer.length ?
            ep->Buffer.IO_Buffer.offset + ep->Buffer.IO_Buffer.bytesToAck : ep->Buffer.IO_Buffer.length);
  for (i = ep->Buffer.IO_Buffer.offset; i < total; i++)
  {
    USB_SetSEPxTXFD(EPx, ep->Buffer.IO_Buffer.pBuffer[i]);
  };

   
  USB_EP_SetReady(EPx, (uint32_t)(1 << 1));
}
















 

static void USB_EP_SetReady(USB_EP_TypeDef EPx, uint32_t val)
{
  USB_EPContext_TypeDef *ep = USB_EPContext + EPx;

   
  USB_SetSIS(((uint32_t)0x00000001) | ((uint32_t)0x00000002) | ((uint32_t)0x00000004) | ((uint32_t)0x00000008) | ((uint32_t)0x00000010));

  ep->EP_WasScdone = RESET;

   
  USB_SetSEPxCTRL(EPx, val);
}

   

   



 



 

   



 

   



 

USB_SetupPacket_TypeDef USB_CurrentSetupPacket;
USB_DeviceContext_TypeDef USB_DeviceContext;
static uint8_t SetupPacketData[2];

   



 

   



 

static USB_Result USB_Device_setAddressWork(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length);

   



 











 

USB_Result USB_DeviceInit(const USB_Clock_TypeDef* USB_Clock_InitStruct, USB_DeviceBUSParam_TypeDef* USB_DeviceBUSParam)
{
   
  ((void)0);
  ((void)0);
  ((void)0);

   
  USB_BRGInit(USB_Clock_InitStruct);
  USB_Reset();
   
  USB_SetHSCR((uint32_t)(1 << (0 + 16)));
  USB_SetHSCR(USB_DeviceBUSParam->PULL);
   
  USB_SetSC(USB_DeviceBUSParam->SPEED | USB_DeviceBUSParam->MODE | (uint32_t)(1 << 0));
   
  USB_EP_Init(USB_EP0, (uint32_t)(1 << 0) | (uint32_t)(1 << 2), 0);
  USB_EP_setSetupHandler(USB_EP0, &USB_CurrentSetupPacket, USB_DeviceSetupPacket);

  USB_DeviceContext.USB_DeviceState = USB_DEV_STATE_UNKNOWN;
  USB_DeviceContext.Address = 0;

  return USB_SUCCESS;
}







 

USB_Result USB_DevicePowerOn(void)
{
  USB_SetHSCR((uint32_t)(1 << 3) | (uint32_t)(1 << 2));
  USB_DeviceContext.USB_DeviceState = USB_DEV_STATE_POWERED;

  return USB_SUCCESS;
}







 

USB_Result USB_DevicePowerOff(void)
{
  USB_SetHSCR((uint32_t)(1 << (3 + 16)));
  USB_DeviceContext.USB_DeviceState = USB_DEV_STATE_UNKNOWN;

  return USB_SUCCESS;
}




 







 

USB_Result USB_DeviceReset(void)
{
  USB_DeviceContext.USB_DeviceState = USB_DEV_STATE_DEFAULT;
  return USB_SUCCESS;
}







 

USB_Result USB_DeviceSuspend(void)
{
  return USB_SUCCESS;
}







 

USB_Result USB_DeviceResume(void)
{
  return USB_SUCCESS;
}
















 

USB_Result USB_DeviceSetupPacket(USB_EP_TypeDef EPx, const USB_SetupPacket_TypeDef* USB_SetupPacket)
{
  USB_RequestType_TypeDef requestType;
  USB_RequestTypeDT_TypeDef requestDirection;

  USB_Result result = USB_SUCCESS;
  uint16_t wValue, wIndex, wLength;

   
  ((void)0);

   
  requestType = (USB_RequestType_TypeDef)(USB_SetupPacket->mRequestTypeData & 0x60);
  requestDirection = (USB_RequestTypeDT_TypeDef)(USB_SetupPacket->mRequestTypeData & 0x80);

   
  switch (requestType)
  {
     
    case USB_TYPE_STANDARD: {
      USB_RequestRecipient_TypeDef recipient;
      USB_EP_IO_Handler statusAckHandler = 0;

      wValue = USB_SetupPacket->wValue;
      wIndex = USB_SetupPacket->wIndex;
      wLength = USB_SetupPacket->wLength;

       
      recipient = (USB_RequestRecipient_TypeDef)(USB_SetupPacket->mRequestTypeData & 0x1F);
      if (!((recipient) <= USB_RECIPIENT_OTHER)) {
        result = USB_ERR_INV_REQ;
        break;
      }
       
      switch (USB_SetupPacket->bRequest)
      {
         
        case USB_GET_STATUS:
          if (requestDirection != USB_DEVICE_TO_HOST ||
             (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS && (recipient == USB_RECIPIENT_INTERFACE ||
              recipient == USB_RECIPIENT_ENDPOINT && wIndex >= Num_USB_EndPoints)))
          {
            result = USB_ERROR;
          }
          else
          {
             
            result = USB_SUCCESS;
            if (result == USB_SUCCESS)
            {
              switch (recipient)
              {
                 
                case USB_RECIPIENT_DEVICE:
                  SetupPacketData[0] = 0
                    ;
                  break;
                 
                case USB_RECIPIENT_INTERFACE:
                  SetupPacketData[0] = 0;
                  break;
                 
                case USB_RECIPIENT_ENDPOINT:
                  SetupPacketData[0] = USB_EPContext[wIndex].EP_Halt;
                  break;
              }
              SetupPacketData[1] = 0;
              result = USB_EP_doDataIn(EPx, SetupPacketData, 2, 0);
            }
          }
          break;
         
        case USB_CLEAR_FEATURE:
          if (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS && (recipient == USB_RECIPIENT_INTERFACE ||
              (recipient == USB_RECIPIENT_ENDPOINT && wIndex >= Num_USB_EndPoints)))
          {
            result = USB_ERROR;
          }
          else
          {
            result = USB_DeviceClearFeature(recipient, wValue, wIndex);
          }
          break;
         
        case USB_SET_FEATURE:
          if (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS && (recipient == USB_RECIPIENT_INTERFACE ||
              (recipient == USB_RECIPIENT_ENDPOINT && wIndex >= Num_USB_EndPoints)))
          {
            result = USB_ERROR;
          }
          else
          {
            result = USB_DeviceSetFeature(recipient, wValue, wIndex);
          }
          break;
         
        case USB_SET_ADDRESS:
          result = USB_SUCCESS;
           
          USB_DeviceContext.Address = wValue;
          statusAckHandler = USB_Device_setAddressWork;
          break;
         
        case USB_GET_DESCRIPTOR:
          result = USB_CDC_GetDescriptor(wValue, wIndex, wLength);
          break;
         
        case USB_SET_DESCRIPTOR:
          result = USB_ERROR;
          break;
         
        case USB_GET_CONFIGURATION:
          if (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS)
          {
            SetupPacketData[0] = 0;
          }
          else
          {
            SetupPacketData[0] = (uint8_t)1;
          }
          result = USB_EP_doDataIn(EPx, SetupPacketData, 1, 0);
          break;
         
        case USB_SET_CONFIGURATION:
          if (wValue == 0)
          {
            USB_DeviceContext.USB_DeviceState = USB_DEV_STATE_ADDRESS;
          }
          else
          {
            result = ((wValue) == 1 ? USB_SUCCESS : USB_ERROR);
            if (result == USB_SUCCESS)
            {
              USB_DeviceContext.USB_DeviceState = USB_DEV_STATE_CONFIGURED;
            }
          }
          break;
         
        case USB_GET_INTERFACE:
          if (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS)
          {
            result = USB_ERROR;
          }
          else
          {
            SetupPacketData[0] = (uint8_t)0;
            result = USB_EP_doDataIn(EPx, SetupPacketData, 1, 0);
          }
          break;
         
        case USB_SET_INTERFACE:
          if (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS)
          {
            result = USB_ERROR;
          }
          else
          {
            result = ((wIndex) == 0 && (wValue) == 0 ? USB_SUCCESS : USB_ERROR);
          }
          break;
         
        case USB_SYNCH_FRAME:
          if (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS)
          {
            result = USB_ERROR;
          }
          else
          {
            result = USB_ERROR;
            if (result == USB_SUCCESS)
            {
              result = USB_EP_doDataIn(EPx, SetupPacketData, 2, 0);
            }
          }
          break;
        default:
          result = USB_ERR_INV_REQ;
      }
       
      if (result == USB_SUCCESS && wLength == 0)
      {
        result = (USB_SetupPacket->mRequestTypeData & 0x80) == USB_DEVICE_TO_HOST ?
                        USB_EP_doDataOut(EPx, 0, 0, statusAckHandler) :
                        USB_EP_doDataIn(EPx, 0, 0, statusAckHandler);
      }
      break;
    }
     
    case USB_TYPE_CLASS:
      result = USB_CDC_ClassRequest();
      break;
     
    case USB_TYPE_VENDOR:
      result = USB_ERROR;
      break;
    default:
      result = USB_ERR_INV_REQ;
  }
  return result;
}

   



 



















 

USB_Result USB_DeviceClearFeature(USB_RequestRecipient_TypeDef Recipient, uint16_t wVALUE, uint16_t wINDEX)
{
  if ((Recipient == USB_RECIPIENT_ENDPOINT) && (wVALUE == USB_ENDPOINT_HALT))
  {
    return USB_EP_Idle((USB_EP_TypeDef)wINDEX);
  }
  else
  {
    return USB_ERROR;
  }
}



















 

USB_Result USB_DeviceSetFeature(USB_RequestRecipient_TypeDef Recipient, uint16_t wVALUE, uint16_t wINDEX)
{
  if ((Recipient == USB_RECIPIENT_ENDPOINT) && (wVALUE == USB_ENDPOINT_HALT))
  {
    return USB_EP_Stall((USB_EP_TypeDef)wINDEX, USB_STALL_HALT);
  }
  else
  {
    return USB_ERROR;
  }
}

   



 


















 

USB_Result USB_DeviceDoStatusInAck(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length)
{
  return USB_SUCCESS;
}

















 

USB_Result USB_DeviceDoStatusOutAck(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length)
{
  return USB_EP_doDataOut(EPx, 0, 0, 0);
}



















 

static USB_Result USB_Device_setAddressWork(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length)
{
   
  USB_SetSA(USB_DeviceContext.Address);
   
  USB_DeviceContext.USB_DeviceState = (USB_DeviceContext.Address ? USB_DEV_STATE_ADDRESS : USB_DEV_STATE_DEFAULT);

  return USB_SUCCESS;
}

   










 

USB_Result USB_DeviceDispatchEvent(void)
{
  uint32_t i;
  uint32_t USB_IT;
  USB_Result result = USB_SUCCESS;
  static volatile uint32_t bHandling = RESET;

   
  NVIC_DisableIRQ(USB_IRQn);

  if (!bHandling) {
    bHandling = SET;

     
    USB_IT = USB_GetSIS();
     
    if (USB_IT & ((uint32_t)0x00000004))
    {
      result = USB_DeviceReset();
    }

     
    for (i = USB_EP0; i < Num_USB_EndPoints; i++)
    {
      USB_EP_dispatchEvent((USB_EP_TypeDef)i, USB_IT);
    }

     
    USB_SetSIS(USB_IT & (~((uint32_t)0x00000001)));

    bHandling = RESET;

     
    NVIC_EnableIRQ(USB_IRQn);
  }
  return result;
}











 

void USB_IRQHandler(void)
{
  USB_DeviceDispatchEvent();
}




 

















 

USB_Result USB_DeviceDummyGetStatus(USB_RequestRecipient_TypeDef Recipient, uint16_t wINDEX)
{
  return USB_SUCCESS;
}











 

USB_Result USB_DeviceDummySetAddress(uint16_t wVALUE)
{
  return USB_SUCCESS;
}
















 

USB_Result USB_DeviceDummyGetDescriptor(uint16_t wVALUE, uint16_t wINDEX, uint16_t wLENGTH)
{
  return USB_ERROR;
}
















 

USB_Result USB_DeviceDummySetDescriptor(uint16_t wVALUE, uint16_t wINDEX, uint16_t wLENGTH)
{
  return USB_ERROR;
}










 

uint8_t USB_DeviceDummyGetConfiguration(void)
{
  return 1;
}










 

USB_Result USB_DeviceDummySetConfiguration(uint16_t wVALUE)
{
  return USB_ERROR;
}











 

uint8_t USB_DeviceDummyGetInterface(uint16_t wINDEX)
{
  return 0;
}












 

USB_Result USB_DeviceDummySetInterface(uint16_t wVALUE, uint16_t wINDEX)
{
  return USB_SUCCESS;
}














 

USB_Result USB_DeviceDummySyncFrame(uint16_t wINDEX, uint8_t* DATA)
{
  return USB_ERROR;
}












 

USB_Result USB_DeviceDummyClassRequest(void)
{
  return USB_ERROR;
}












 


USB_Result USB_DeviceDummyVendorRequest(void)
{
  return USB_ERROR;
}























 

USB_Result USB_DeviceDummyDataError(USB_EP_TypeDef EPx, uint32_t STS, uint32_t TS, uint32_t CTRL)
{
  return USB_ERROR;
}

   


   

   

   

   



 

