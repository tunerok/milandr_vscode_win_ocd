
















 
 

















 





















 

 


















 

 


 

 


 

 

 

 

 

 

 

 





 






















 

 




 





 
 
 

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


   



 



 







   



 




   

   



 

   



 

void PORT_DeInit(MDR_PORT_TypeDef* PORTx);
void PORT_Init(MDR_PORT_TypeDef* PORTx, const PORT_InitTypeDef* PORT_InitStruct);
void PORT_StructInit(PORT_InitTypeDef* PORT_InitStruct);

uint8_t PORT_ReadInputDataBit(MDR_PORT_TypeDef* PORTx, uint32_t PORT_Pin);
uint32_t PORT_ReadInputData(MDR_PORT_TypeDef* PORTx);

void PORT_SetBits(MDR_PORT_TypeDef* PORTx, uint32_t PORT_Pin);
void PORT_ResetBits(MDR_PORT_TypeDef* PORTx, uint32_t PORT_Pin);
void PORT_WriteBit(MDR_PORT_TypeDef* PORTx, uint32_t PORT_Pin, BitAction BitVal);
void PORT_Write(MDR_PORT_TypeDef* PORTx, uint32_t PortVal);

   

   

   





 





















 

 


 

 




 



 



 

   



 

   



 



 




   



 



   



 



   



 


   



 


   



 



   

   



 
void BKP_DeInit(void);
void BKP_JTAGA_CMD(FunctionalState NewState);
void BKP_JTAGB_CMD(FunctionalState NewState);
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


   

   

   





 


















 

 

 

















 


 

 
 
 





 

typedef unsigned char const    ucint8_t;
typedef volatile unsigned char vuint8_t;
typedef volatile unsigned long vuint32_t;

typedef enum {FALSE = 0, TRUE = !FALSE} bool;




 




 



 



 



 

 
void SysTickStart(uint32_t ticks);
void SysTickStop(void);

 
void SysTickDelay(uint32_t val);

   

   

   

   




 



















 

 

 



 



 



 


   



 


   



 

void Menu_Init(void);
void DisplayMenuTitle(ucint8_t *ptr);
void DisplayMenu(void);
 
void BackToMenuOnSel(void);
 
void ReadKey(void);

   

   

   




 


















 

 



 



 



 



 

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

   

   

   

   




 



















 

 

 



 



 



 



   



 
 

   



 

extern uint32_t CurrentLights;           

   



 

void ShiftLights(void);

   

   

   




 


















 


 



 



 



 

 
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

   

 



















 


 

 

















 




 




 



 



 



 

 
typedef struct
{
    uint32_t Data;
    uint32_t Cmd;
}LCD_Ports;

   



 

extern const LCD_Ports CrystalPorts[NUM_LCD_CRYSTALS];

   



 


   

   

   

   





 




 

void ResetLCD(void);
void SetCrystal(LCD_Crystal num);
void WriteLCD_Cmd(uint32_t val);
void WriteLCD_Data(uint32_t val);
uint32_t ReadLCD_Cmd(void);
uint32_t ReadLCD_Data(void);
void LCD_INIT(void);
void LCD_CLS(void);

   

   

   




 



















 

 

 

















 

 

 



 



 



 



 
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

   



 

 



   



 


   



 

KeyCode GetKey(void);

   

   

   




 



















 

 

 



 



 



 



 

   



 

void Date_Update(void);
void Calendar_Init(void);

   

   

   

   




 


















 

 

 





















 

 


 



 



 



 



 

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

   

   

   





 






















 

 


 



 



 



 

   



 



 



   



 



   



 



   



 



   

   



 

   



 

void DAC_DeInit(void);

void DAC_Init(uint32_t SyncMode, uint32_t DAC1_Ref, uint32_t DAC2_Ref);

void DAC1_Init(uint32_t DAC1_Ref);
void DAC2_Init(uint32_t DAC2_Ref);

void DAC1_Cmd(FunctionalState NewState);
void DAC2_Cmd(FunctionalState NewState);

void DAC1_SetData(uint32_t Data);
void DAC2_SetData(uint32_t Data);

uint32_t DAC1_GetData(void);
uint32_t DAC2_GetData(void);

   

   

   





 



void NMI_Handler(void);
void HardFault_Handler(void);
void MemManage_Handler(void);
void BusFault_Handler(void);
void UsageFault_Handler(void);
void SVC_Handler(void);
void DebugMon_Handler(void);
void PendSV_Handler(void);
void SysTick_Handler(void);
void CAN1_IRQHandler(void);
void CAN2_IRQHandler(void);
void USB_IRQHandler(void);
void DMA_IRQHandler(void);
void UART1_IRQHandler(void);
void UART2_IRQHandler(void);
void SSP1_IRQHandler(void);
void I2C_IRQHandler(void);
void POWER_IRQHandler(void);
void WWDG_IRQHandler(void);
void Timer1_IRQHandler(void);
void Timer2_IRQHandler(void);
void Timer3_IRQHandler(void);
void ADC_IRQHandler(void);
void COMPARATOR_IRQHandler(void);
void SSP2_IRQHandler(void);
void BACKUP_IRQHandler(void);
void EXT_INT1_IRQHandler(void);
void EXT_INT2_IRQHandler(void);
void EXT_INT3_IRQHandler(void);
void EXT_INT4_IRQHandler(void);



 



 



 

typedef void (* tUARTFunc)(void);
typedef void (* tUARTLineStateFunc)(uint32_t);

   



 

 

   




 

 
extern vuint32_t TimerCounter;

 
extern vuint32_t ADC1_Value;

 
extern tUARTFunc pfUARTSenderFunc;
extern tUARTFunc pfUARTReceiverFunc;
extern tUARTLineStateFunc pfUARTLineStateFunc;

 
extern vuint32_t STOPModeStatus;

 
extern vuint32_t AlarmSetStatus;

   

   

   




 




 



 



 



 


 

 

 

   



 

 
typedef struct
{
  uint8_t sec_l;
  uint8_t sec_h;
  uint8_t min_l;
  uint8_t min_h;
  uint8_t hour_l;
  uint8_t hour_h;
}tTime;

 
typedef struct
{
  uint8_t sec_l;
  uint8_t sec_h;
  uint8_t min_l;
  uint8_t min_h;
  uint8_t hour_l;
  uint8_t hour_h;
}tAlarm;

 
typedef struct
{
  uint8_t day;
  uint8_t month;
  uint16_t year;
}tDate;

   



 

   



 

static tTime  sTime;
static tAlarm sAlarm;
static tDate  sDate;

   



 







 
void RTC_Configuration(void)
{
   
  RST_CLK_LSEconfig(((uint32_t)0x00000001));
   
  while (RST_CLK_LSEstatus() != SUCCESS)
  {
  }

   
  BKP_RTCclkSource(((uint32_t)0x0004));
   
  BKP_RTC_WaitForUpdate();

   
  BKP_RTC_SetPrescaler(32768);
   
  BKP_RTC_WaitForUpdate();

   
  BKP_RTC_Calibration(0);
   
  BKP_RTC_WaitForUpdate();

   
  BKP_RTC_Enable(ENABLE);

   
  BKP_RTC_ITConfig(((uint32_t)((uint32_t)0x00000010)), ENABLE);
  NVIC_EnableIRQ(BACKUP_IRQn);
}









 
void ShowSelDigit(uint8_t Col, uint8_t Line, uint8_t ch)
{
  LCD_Method OldMethod = CurrentMethod;

  CurrentMethod = MET_AND;
  LCD_PUTC(Col, Line, ' ');
  CurrentMethod = MET_NOT_XOR;
  LCD_PUTC(Col, Line, ch);

  CurrentMethod = OldMethod;
}











 
uint8_t ReadDigit(uint8_t ColBegin, uint8_t CountBegin, uint8_t ValueMax, uint8_t ValueMin)
{
  uint32_t tmp = CountBegin;
  KeyCode key;

   
  ShowSelDigit(ColBegin, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (tmp + 0x30));

  for (key = GetKey(); key != SEL; key = GetKey())
  {
     
    if(key == UP)
    {
       
      if(tmp >= ValueMax)
      {
        tmp = (ValueMin - 1);
      }
       
      tmp++;
      ShowSelDigit(ColBegin, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (tmp + 0x30));
    }
     
    if(key == DOWN)
    {
       
      if(tmp == ValueMin)
      {
        tmp = (ValueMax + 1);
      }
       
      tmp--;
      CurrentMethod = MET_AND;
      ShowSelDigit(ColBegin, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (tmp + 0x30));
    }
    while((GetKey() == key)){};
  }
   
  while((GetKey() == SEL)){};
  CurrentMethod = MET_AND;
  LCD_PUTC(ColBegin, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (tmp + 0x30));
   
  return tmp;
}







 
void Time_Display()
{
  uint32_t TimeVar = BKP_RTC_GetCounter();

   
  sTime.hour_h = (uint8_t)(TimeVar / 3600) / 10;
  LCD_PUTC(33, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (sTime.hour_h + 0x30));
  sTime.hour_l = (uint8_t)(((TimeVar) / 3600) % 10);
  LCD_PUTC(33 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (sTime.hour_l + 0x30));

   
  LCD_PUTC(33 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, ':');

   
  sTime.min_h = (uint8_t)(((TimeVar) % 3600) / 60) / 10;
  LCD_PUTC(33 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (sTime.min_h + 0x30));
  sTime.min_l = (uint8_t)(((TimeVar) % 3600) / 60) % 10;
  LCD_PUTC(33 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (sTime.min_l + 0x30));

   
  LCD_PUTC(33 + 6 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, ':');

   
  sTime.sec_h = (uint8_t)(((TimeVar) % 3600) % 60) / 10;
  LCD_PUTC(33 + 6 + 6 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (sTime.sec_h + 0x30));
  sTime.sec_l = (uint8_t)(((TimeVar) % 3600) % 60) % 10;
  LCD_PUTC(33 + 6 + 6 + 6 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (sTime.sec_l + 0x30));
}







 
uint32_t Time_Regulate(void)
{
  uint32_t Tmp_HH, Tmp_MM, Tmp_SS;

   
  Tmp_HH = ReadDigit(33, sTime.hour_h, 0x2, 0x0);
  if(Tmp_HH == 2)
  {
    if(sTime.hour_l > 3)
    {
      sTime.hour_l = 0;
    }
    Tmp_HH = Tmp_HH*10 + ReadDigit(33 + 6, sTime.hour_l, 0x3, 0x0);
  }
  else
  {
    Tmp_HH = Tmp_HH*10 + ReadDigit(33 + 6, sTime.hour_l, 0x9, 0x0);
  }
   
  Tmp_MM = ReadDigit(33 + 6 + 6 + 6, sTime.min_h, 0x5, 0x0);
  Tmp_MM = Tmp_MM*10 + ReadDigit(33 + 6 + 6 + 6 + 6, sTime.min_l, 0x9, 0x0);
   
  Tmp_SS = ReadDigit(33 + 6 + 6 + 6 + 6 + 6 + 6, sTime.sec_h, 0x5, 0x0);
  Tmp_SS = Tmp_SS*10 + ReadDigit(33 + 6 + 6 + 6 + 6 + 6 + 6 + 6, sTime.sec_l, 0x9, 0x0);

   
  return((Tmp_HH*3600 + Tmp_MM*60 + Tmp_SS));
}







 
void RTCHelp(void)
{
  LCD_PUTS(0, 8 + 4, "RTC is not configured");
  LCD_PUTS(0, 8 + 4 + 8 + 2, "Please, use the ");
  LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2, "Time Adjust menu.    ");
  while(!(GetKey() == SEL)){};
  while((GetKey() == SEL)){};
}







 
void TimePreAdjustFunc(void)
{
  sFONT *OldFont = CurrentFont;
  LCD_Method OldMethod = CurrentMethod;

   
  LCD_CLS();
  CurrentMethod = MET_AND;
  CurrentFont = &Font_6x8;
  DisplayMenuTitle("Time adjust");
  while((GetKey() == SEL)){};

  if((((MDR_BKP_TypeDef *) (0x400D8000))->REG_00 != 0x1234) || (((MDR_BKP_TypeDef *) (0x400D8000))->RTC_PRL != 32768))
  {
    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, "RTC is configured...");
     
     
    BKP_RTC_Reset(ENABLE);
    BKP_RTC_Reset(DISABLE);
     
    RTC_Configuration();
     
    BKP_RTC_SetCounter(0);
     
    BKP_RTC_WaitForUpdate();

    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, "        TIME        ");

     
    Time_Display();

     
    BKP_RTC_SetCounter(Time_Regulate());
     
    BKP_RTC_WaitForUpdate();

    ((MDR_BKP_TypeDef *) (0x400D8000))->REG_00 = 0x1234;
     
    BKP_RTC_WaitForUpdate();
  }
  else
  {
    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, "        TIME        ");

     
    Time_Display();

     
    BKP_RTC_SetCounter(Time_Regulate());
     
    BKP_RTC_WaitForUpdate();
  }
  CurrentMethod = OldMethod;
  CurrentFont = OldFont;
}







 
void TimeAdjustFunc(void)
{
  TimePreAdjustFunc();
   
  DisplayMenu();
}







 
void TimeShowFunc(void)
{
  sFONT *OldFont = CurrentFont;
  LCD_Method OldMethod = CurrentMethod;

   
  LCD_CLS();
  CurrentMethod = MET_AND;
  CurrentFont = &Font_6x8;
  DisplayMenuTitle("Time show");
  while((GetKey() == SEL)){};

  if((((MDR_BKP_TypeDef *) (0x400D8000))->REG_00 != 0x1234) || (((MDR_BKP_TypeDef *) (0x400D8000))->RTC_PRL != 32768))
  {
    RTCHelp();
  }
  else
  {
    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, "        TIME        ");
    while (GetKey() != SEL)
    {
       
      Time_Display();
    }
    while((GetKey() == SEL)){};
  }

  CurrentMethod = OldMethod;
  CurrentFont = OldFont;

   
  DisplayMenu();

}








 
static uint32_t IsLeapYear(uint32_t nYear)
{
  if(nYear % 4 != 0) return 0;
  if(nYear % 100 != 0) return 1;
  return (uint8_t)(nYear % 400 == 0);
}







 
void Date_Update(void)
{
  if(sDate.month == 1 || sDate.month == 3 || sDate.month == 5 || sDate.month == 7 ||
     sDate.month == 8 || sDate.month == 10 || sDate.month == 12)
  {
    if(sDate.day < 31)
    {
      sDate.day++;
    }
     
    else
    {
      if(sDate.month != 12)
      {
        sDate.month++;
        sDate.day = 1;
      }
       
      else
      {
        sDate.month = 1;
        sDate.day = 1;
        sDate.year++;
      }
    }
  }
  else if(sDate.month == 4 || sDate.month == 6 || sDate.month == 9 ||
          sDate.month == 11)
  {
    if(sDate.day < 30)
    {
      sDate.day++;
    }
     
    else
    {
      sDate.month++;
      sDate.day = 1;
    }
  }
  else if(sDate.month == 2)
  {
    if(sDate.day < 28)
    {
      sDate.day++;
    }
    else if(sDate.day == 28)
    {
       
      if(IsLeapYear(sDate.year))
      {
        sDate.day++;
      }
      else
      {
        sDate.month++;
        sDate.day = 1;
      }
    }
    else if(sDate.day == 29)
    {
      sDate.month++;
      sDate.day = 1;
    }
  }

  ((MDR_BKP_TypeDef *) (0x400D8000))->REG_01 = sDate.year + (sDate.month << 16) + (sDate.day << 24);
   
  BKP_RTC_WaitForUpdate();
}










 
ErrorStatus IsValidDate(uint32_t Day, uint32_t Month, uint32_t Year)
{
  if(Day == 0 || Month == 0 || Month > 12 || Year == 0)
  {
    return ERROR;
  }
  if((Month == 1 || Month == 3 || Month == 5 || Month == 7 ||
     Month == 8 || Month == 10 || Month == 12) && (Day > 31))
  {
    return ERROR;
  }
  if((Month == 4 || Month == 6 || Month == 9 || Month == 11) && (Day > 30))
  {
    return ERROR;
  }
  if(Month == 2)
  {
    if (IsLeapYear(Year))
    {
      if (Day > 29)
      return ERROR;
    }
    else
    {
      if (Day > 28)
      return ERROR;
    }
  }
  return SUCCESS;
}







 
void Date_Display(void)
{
  uint8_t tmp;
  uint32_t temp_date;

   
  temp_date   = ((MDR_BKP_TypeDef *) (0x400D8000))->REG_01;
  sDate.day   = temp_date >> 24;
  sDate.month = (temp_date >> 16) & 0xFF;
  sDate.year  = temp_date & 0xFFFF;

   
  tmp = (uint8_t)(sDate.day / 10);
  LCD_PUTC(37, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (tmp + 0x30));
  tmp = (uint8_t)(sDate.day % 10);
  LCD_PUTC(37 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (tmp + 0x30));

   
  LCD_PUTC(37 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, '.');

   
  tmp = (uint8_t)(sDate.month / 10);
  LCD_PUTC(37 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (tmp + 0x30));
  tmp = (uint8_t)(sDate.month % 10);
  LCD_PUTC(37 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (tmp + 0x30));

   
  LCD_PUTC(37 + 6 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, '.');

   
  tmp = (uint8_t)(sDate.year / 1000);
  LCD_PUTC(37 + 6 + 6 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (tmp + 0x30));
  tmp = (uint8_t)((sDate.year / 100) % 10);
  LCD_PUTC(37 + 6 + 6 + 6 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (tmp + 0x30));
  tmp = (uint8_t)((sDate.year / 10) % 10);
  LCD_PUTC(37 + 6 + 6 + 6 + 6 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (tmp + 0x30));
  tmp = (uint8_t)(sDate.year % 10);
  LCD_PUTC(37 + 6 + 6 + 6 + 6 + 6 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (tmp + 0x30));
}








 
void Date_Regulate(void)
{
  uint32_t Tmp_day, Tmp_month, Tmp_year;
  FlagStatus ValidDateFlag;

  do
  {
    ValidDateFlag = SET;
     
    Tmp_day  = ReadDigit(37, (sDate.day / 10), 0x3, 0x0);
    Tmp_day  = Tmp_day * 10 + ReadDigit(37 + 6, (sDate.day % 10), (Tmp_day < 3) ? 0x9 : 0x1, 0x0);
     
    Tmp_month = ReadDigit(37 + 6 + 6 + 6, (sDate.month / 10), 0x1, 0x0);
    Tmp_month = Tmp_month * 10 + ReadDigit(37 + 6 + 6 + 6 + 6, (sDate.month % 10), (Tmp_month < 1) ? 0x9 : 0x2, 0x0);
     
    Tmp_year = ReadDigit(37 + 6 + 6 + 6 + 6 + 6 + 6, (sDate.year / 1000), 0x2, 0x1) * 1000;
    Tmp_year = Tmp_year + (ReadDigit(37 + 6 + 6 + 6 + 6 + 6 + 6 + 6, ((sDate.year / 100) % 10), 0x9, 0x0) * 100);
    Tmp_year = Tmp_year + (ReadDigit(37 + 6 + 6 + 6 + 6 + 6 + 6 + 6 + 6, ((sDate.year / 10) % 10), 0x9, 0x0) * 10);
    Tmp_year = Tmp_year + ReadDigit(37 + 6 + 6 + 6 + 6 + 6 + 6 + 6 + 6 + 6, (sDate.year % 10), 0x9, 0x0);
    if (!IsValidDate(Tmp_day, Tmp_month, Tmp_year))
    {
      ValidDateFlag = RESET;
      LCD_PUTS(0, 8 + 4, "   Invalid date." );
      LCD_PUTS(0, 8 + 4 + 8 + 2, "   Repeat, please.");
      SysTickDelay(2500);
      LCD_PUTS(0, 8 + 4, "                " );
      LCD_PUTS(0, 8 + 4 + 8 + 2, "                  ");
      sDate.day   = Tmp_day;
      sDate.month = Tmp_month;
      sDate.year  = Tmp_year;
    }
  } while (ValidDateFlag == RESET);
  ((MDR_BKP_TypeDef *) (0x400D8000))->REG_01 = Tmp_year + (Tmp_month << 16) + (Tmp_day << 24);
   
  BKP_RTC_WaitForUpdate();
}







 
void DatePreAdjustFunc(void)
{
  sFONT *OldFont = CurrentFont;
  LCD_Method OldMethod = CurrentMethod;

   
  LCD_CLS();
  CurrentMethod = MET_AND;
  CurrentFont = &Font_6x8;
  DisplayMenuTitle("Date adjust");
  while((GetKey() == SEL)){};

  if((((MDR_BKP_TypeDef *) (0x400D8000))->REG_00 != 0x1234) || (((MDR_BKP_TypeDef *) (0x400D8000))->RTC_PRL != 32768))
  {
    RTCHelp();
  }
  else
  {
    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, "DATE  DD.MM.YYYY");

     
    Date_Display();
     
    Date_Regulate();
  }

  CurrentMethod = OldMethod;
  CurrentFont = OldFont;
}







 
void DateAdjustFunc(void)
{
  DatePreAdjustFunc();
   
  DisplayMenu();
}







 
void DateShowFunc(void)
{
  sFONT *OldFont = CurrentFont;
  LCD_Method OldMethod = CurrentMethod;

   
  LCD_CLS();
  CurrentMethod = MET_AND;
  CurrentFont = &Font_6x8;
  DisplayMenuTitle("Date show");
  while((GetKey() == SEL)){};

  if((((MDR_BKP_TypeDef *) (0x400D8000))->REG_00 != 0x1234) || (((MDR_BKP_TypeDef *) (0x400D8000))->RTC_PRL != 32768))
  {
    RTCHelp();
  }
  else
  {
    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, "DATE  DD.MM.YYYY");

    while (GetKey() != SEL)
    {
       
      Date_Display();
    }
    while((GetKey() == SEL)){};
  }

  CurrentMethod = OldMethod;
  CurrentFont = OldFont;

   
  DisplayMenu();
}







 
void Alarm_Display()
{
  uint32_t AlarmVar = ((MDR_BKP_TypeDef *) (0x400D8000))->RTC_ALRM;

   
  LCD_PUTS(33, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, "  :  :");

   
  sAlarm.hour_h = (uint8_t)(AlarmVar / 3600) / 10;
  LCD_PUTC(33, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (sAlarm.hour_h + 0x30));
  sAlarm.hour_l = (uint8_t)(((AlarmVar) / 3600) % 10);
  LCD_PUTC(33 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (sAlarm.hour_l + 0x30));

   
  sAlarm.min_h = (uint8_t)(((AlarmVar) % 3600) / 60) / 10;
  LCD_PUTC(33 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (sAlarm.min_h + 0x30));
  sAlarm.min_l = (uint8_t)(((AlarmVar) % 3600) / 60) % 10;
  LCD_PUTC(33 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (sAlarm.min_l + 0x30));

   
  sAlarm.sec_h = (uint8_t)(((AlarmVar) % 3600) % 60) / 10;
  LCD_PUTC(33 + 6 + 6 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (sAlarm.sec_h + 0x30));
  sAlarm.sec_l = (uint8_t)(((AlarmVar) % 3600) % 60) % 10;
  LCD_PUTC(33 + 6 + 6 + 6 + 6 + 6 + 6 + 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2 + 8 + 2, (sAlarm.sec_l + 0x30));
}







 
uint32_t Alarm_Regulate(void)
{
  uint32_t Alarm_HH, Alarm_MM, Alarm_SS;

   
  Alarm_HH = ReadDigit(33, sAlarm.hour_h, 0x2, 0x0);
  if(Alarm_HH == 2)
  {
    if(sAlarm.hour_l > 3)
    {
      sAlarm.hour_l = 0;
    }
    Alarm_HH = Alarm_HH*10 + ReadDigit(33 + 6, sAlarm.hour_l, 0x3, 0x0);
  }
  else
  {
    Alarm_HH = Alarm_HH*10 + ReadDigit(33 + 6, sAlarm.hour_l, 0x9, 0x0);
  }
   
  Alarm_MM = ReadDigit(33 + 6 + 6 + 6, sAlarm.min_h, 0x5, 0x0);
  Alarm_MM = Alarm_MM*10 + ReadDigit(33 + 6 + 6 + 6 + 6, sAlarm.min_l, 0x9, 0x0);
   
  Alarm_SS = ReadDigit(33 + 6 + 6 + 6 + 6 + 6 + 6, sAlarm.sec_h, 0x5, 0x0);
  Alarm_SS = Alarm_SS*10 + ReadDigit(33 + 6 + 6 + 6 + 6 + 6 + 6 + 6, sAlarm.sec_l, 0x9, 0x0);

   
  ((MDR_BKP_TypeDef *) (0x400D8000))->REG_02 = Alarm_HH*3600 + Alarm_MM*60 + Alarm_SS;

   
  return((Alarm_HH*3600 + Alarm_MM*60 + Alarm_SS));
}







 
void AlarmAdjustFunc(void)
{
  sFONT *OldFont = CurrentFont;
  LCD_Method OldMethod = CurrentMethod;

   
  LCD_CLS();
  CurrentMethod = MET_AND;
  CurrentFont = &Font_6x8;
  DisplayMenuTitle("Alarm adjust");
  while((GetKey() == SEL)){};

  if((((MDR_BKP_TypeDef *) (0x400D8000))->REG_00 != 0x1234) || (((MDR_BKP_TypeDef *) (0x400D8000))->RTC_PRL != 32768))
  {
    RTCHelp();
  }
  else
  {
    LCD_PUTS(33 - 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, "ALARM TIME");

     
    BKP_RTC_SetAlarm(((MDR_BKP_TypeDef *) (0x400D8000))->REG_02);

     
    Alarm_Display();

     
    BKP_RTC_SetAlarm(Alarm_Regulate());
     
    BKP_RTC_WaitForUpdate();
     
    BKP_RTC_ITConfig(((uint32_t)((uint32_t)0x00000020)), ENABLE);
    AlarmSetStatus = 1;
  }
  CurrentMethod = OldMethod;
  CurrentFont = OldFont;

   
  DisplayMenu();
}







 
void AlarmShowFunc(void)
{
  sFONT *OldFont = CurrentFont;
  LCD_Method OldMethod = CurrentMethod;

   
  LCD_CLS();
  CurrentMethod = MET_AND;
  CurrentFont = &Font_6x8;
  DisplayMenuTitle("Alarm show");
  while((GetKey() == SEL)){};

  if((((MDR_BKP_TypeDef *) (0x400D8000))->REG_00 != 0x1234) || (((MDR_BKP_TypeDef *) (0x400D8000))->RTC_PRL != 32768))
  {
    RTCHelp();
  }
  else
  {
    LCD_PUTS(33 - 6, 8 + 4 + 8 + 2 + 8 + 2 + 8 + 2, "ALARM TIME");
     
    Alarm_Display();
    while(!(GetKey() == SEL)){};
    while((GetKey() == SEL)){};
  }

  CurrentMethod = OldMethod;
  CurrentFont = OldFont;

   
  DisplayMenu();
}







 
void Calendar_Init(void)
{
  uint32_t tmp, i;
  KeyCode key;

   
  RST_CLK_PCLKcmd(((uint32_t)(1 << ((((uint32_t)(0x400D8000)) >> 15) & 0x1F))),ENABLE);

  RTC_Configuration();

  if(((MDR_BKP_TypeDef *) (0x400D8000))->REG_00 != 0x1234)
  {
    LCD_CLS();
    LCD_PUTS(0, 8 + 4, " To configuring Time ");
    LCD_PUTS(0, 8 + 4 + 8 + 2, " and Date press SEL, ");
    LCD_PUTS(0, 8 + 4 + 8 + 2 + 8 + 2, " else press any key. ");

    for (key = NOKEY; key == NOKEY; key = GetKey())
    {
    }
    if (key == SEL)
    {
      while((GetKey() == key)){};
      TimePreAdjustFunc();
      DatePreAdjustFunc();
    }
    else
    {
       
      sDate.day   = 1;
      sDate.month = 1;
      sDate.year  = 2010;
      ((MDR_BKP_TypeDef *) (0x400D8000))->REG_01 = sDate.year + (sDate.month << 16) + (sDate.day << 24);
       
      BKP_RTC_WaitForUpdate();
       
      ((MDR_BKP_TypeDef *) (0x400D8000))->REG_02 = 0;
       
      BKP_RTC_WaitForUpdate();
    }
    while((GetKey() == key)){};
  }
  else
  {
     
    tmp = ((MDR_BKP_TypeDef *) (0x400D8000))->REG_01;
    sDate.day   = tmp >> 24;
    sDate.month = (tmp >> 16) & 0xFF;
    sDate.year  = tmp & 0xFFFF;

    tmp = BKP_RTC_GetCounter();
    if(tmp / 86399 != 0)
    {
      for(i = 0; i < (tmp / 86399); i++)
      {
        Date_Update();
      }
      BKP_RTC_SetCounter(tmp % 86399);
    }
  }
}

   

   

   

   



 

