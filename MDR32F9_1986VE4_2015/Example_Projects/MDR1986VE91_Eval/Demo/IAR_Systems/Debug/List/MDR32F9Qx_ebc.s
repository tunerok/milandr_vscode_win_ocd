///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:56 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_ebc.c                     /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_ebc.c --preprocess        /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ -lCN          /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ -lB           /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ -o            /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\Obj\ --debug        /
//                    --endian=little --cpu=Cortex-M3 -e --fpu=None           /
//                    --dlib_config "C:\Program Files (x86)\IAR               /
//                    Systems\Embedded Workbench                              /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\config\ -I          /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Libraries\MDR /
//                    32F9Qx_StdPeriph_Driver\inc\ -I                         /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Libraries\MDR /
//                    32F9Qx_StdPeriph_Driver\inc\USB_Library\ -I             /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Libraries\CMS /
//                    IS\CM3\CoreSupport\ -I C:\WORK\Milandr.MDR1986BExx.1.4. /
//                    0\Example_Projects\MDR1986VE91_Eval\Demo\IAR_Systems\.. /
//                    \..\..\..\Libraries\CMSIS\CM3\DeviceSupport\MDR32F9Qx\i /
//                    nc\ -I C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projec /
//                    ts\MDR1986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Librar /
//                    ies\CMSIS\CM3\DeviceSupport\MDR32F9Qx\startup\iar\ -I   /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Example_Proje /
//                    cts\MDR1986VE91_Eval\inc\ -Ohz                          /
//    List file    =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_ebc. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_ebc

        #define SHT_PROGBITS 0x1

        PUBLIC EBC_CalcNandCycles
        PUBLIC EBC_CalcWaitStates
        PUBLIC EBC_DeInit
        PUBLIC EBC_GetBusyStatus
        PUBLIC EBC_Init
        PUBLIC EBC_StructInit

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_ebc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_ebc.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    22/02/2011
//    7   * @brief   This file provides all the EBC firmware functions.
//    8   ******************************************************************************
//    9   * <br><br>
//   10   *
//   11   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   12   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   13   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY DIRECT, INDIRECT
//   14   * OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   15   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   16   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT 2010 Phyton</center></h2>
//   19   ******************************************************************************
//   20   * FILE MDR32F9Qx_ebc.c
//   21   */
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "MDR32F9Qx_config.h"
//   25 #include "MDR32F9Qx_ebc.h"
//   26 
//   27 
//   28 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_EBC_C
//   29 
//   30 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup EBC EBC
//   35   * @{
//   36   */
//   37 
//   38 /** @defgroup EBC_Private_Defines EBC Private Defines
//   39   * @{
//   40   */
//   41 
//   42 #define WAIT_STATES_COEF        1000000
//   43 #define WAIT_STATES_MIN         3
//   44 #define WAIT_STATES_MAX         18
//   45 
//   46 #define NAND_SYCLES_COEF        1000000
//   47 #define NAND_SYCLES_MAX         15
//   48 
//   49 /** @} */ /* End of group EBC_Private_Defines */
//   50 
//   51 /** @defgroup EBC_Private_Functions EBC Private Functions
//   52   * @{
//   53   */
//   54 
//   55 /**
//   56   * @brief  Resets the EBC peripheral registers to their default reset values.
//   57   * @param  None
//   58   * @retval None
//   59   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 void EBC_DeInit(void)
//   61 {
//   62   MDR_EBC_TypeDef *EBCx;
//   63 
//   64   EBCx = MDR_EBC;
//   65 
//   66   EBCx->CONTROL = 0;
EBC_DeInit:
        LDR.N    R0,??DataTable4  ;; 0x400f0050
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//   67   EBCx->NAND_CYCLES = 0;
        STR      R1,[R0, #+0]
//   68 
//   69 #if defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE94)
//   70 
//   71   EBCx->MEM_REGION[0] = 0;
//   72   EBCx->MEM_REGION[1] = 0;
//   73   EBCx->MEM_REGION[2] = 0;
//   74   EBCx->MEM_REGION[3] = 0;
//   75 
//   76 #endif /* #if defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T) */
//   77 }
        BX       LR               ;; return
//   78 
//   79 /**
//   80   * @brief  Initializes the EBC peripheral according to the specified
//   81   *         parameters in the EBC_InitStruct.
//   82   * @param  EBC_InitStruct: pointer to a EBC_InitTypeDef structure that
//   83   *         contains the configuration information for the specified EBC peripheral.
//   84   * @retval None
//   85   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   86 void EBC_Init(const EBC_InitTypeDef* EBC_InitStruct)
//   87 {
EBC_Init:
        PUSH     {R4,LR}
//   88   MDR_EBC_TypeDef *EBCx;
//   89   uint32_t tmpreg_CONTROL;
//   90   uint32_t tmpreg_CYCLES;
//   91 
//   92   /* Check the parameters */
//   93   assert_param(IS_EBC_MODE(EBC_InitStruct->EBC_Mode));
//   94   assert_param(IS_EBC_CPOL(EBC_InitStruct->EBC_Cpol));
//   95   assert_param(IS_EBC_WAIT_STATE(EBC_InitStruct->EBC_WaitState));
//   96   assert_param(IS_EBC_NAND_CYCLES(EBC_InitStruct->EBC_NandTrc));
//   97   assert_param(IS_EBC_NAND_CYCLES(EBC_InitStruct->EBC_NandTwc));
//   98   assert_param(IS_EBC_NAND_CYCLES(EBC_InitStruct->EBC_NandTrea));
//   99   assert_param(IS_EBC_NAND_CYCLES(EBC_InitStruct->EBC_NandTwp));
//  100   assert_param(IS_EBC_NAND_CYCLES(EBC_InitStruct->EBC_NandTwhr));
//  101   assert_param(IS_EBC_NAND_CYCLES(EBC_InitStruct->EBC_NandTalea));
//  102   assert_param(IS_EBC_NAND_CYCLES(EBC_InitStruct->EBC_NandTrr));
//  103 
//  104   /* Form new value for the EBC_CONTROL register */
//  105   tmpreg_CONTROL = (EBC_InitStruct->EBC_Mode)
//  106                  | (EBC_InitStruct->EBC_Cpol)
//  107                  | (EBC_InitStruct->EBC_WaitState << EBC_CONTROL_WAIT_STATE_Pos);
        LDR      R1,[R0, #+0]
        LDR      R2,[R0, #+4]
        ORRS     R1,R2,R1
        LDRB     R2,[R0, #+8]
        ORR      R1,R1,R2, LSL #+12
//  108 
//  109 #if defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE94)
//  110 
//  111   /* Using the alignment data by LSB EBC */
//  112   tmpreg_CONTROL |= EBC_InitStruct->EBC_DataAlignment;
//  113 
//  114 #endif /* #if defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T) */
//  115 
//  116   /* Form new value for the EBC_NAND_CYCLES register */
//  117   tmpreg_CYCLES  = (EBC_InitStruct->EBC_NandTrc       << EBC_NAND_CYCLES_TRC_Pos)
//  118                  | (EBC_InitStruct->EBC_NandTwc       << EBC_NAND_CYCLES_TWC_Pos)
//  119                  | (EBC_InitStruct->EBC_NandTrea      << EBC_NAND_CYCLES_TREA_Pos)
//  120                  | (EBC_InitStruct->EBC_NandTwp       << EBC_NAND_CYCLES_TWP_Pos)
//  121                  | (EBC_InitStruct->EBC_NandTwhr      << EBC_NAND_CYCLES_TWHR_Pos)
//  122                  | (EBC_InitStruct->EBC_NandTalea 	  << EBC_NAND_CYCLES_TALEA_Pos)
//  123                  | (EBC_InitStruct->EBC_NandTrr       << EBC_NAND_CYCLES_TRR_Pos);
//  124 
//  125   EBCx = MDR_EBC;
//  126 
//  127   /* Configure EBC registers with new values */
//  128   EBCx->NAND_CYCLES = tmpreg_CYCLES;
        LDR.N    R2,??DataTable4  ;; 0x400f0050
        LDRB     R3,[R0, #+9]
        LDRB     R4,[R0, #+10]
        ORR      R3,R3,R4, LSL #+4
        LDRB     R4,[R0, #+11]
        ORR      R3,R3,R4, LSL #+8
        LDRB     R4,[R0, #+12]
        ORR      R3,R3,R4, LSL #+12
        LDRB     R4,[R0, #+13]
        ORR      R3,R3,R4, LSL #+16
        LDRB     R4,[R0, #+14]
        ORR      R3,R3,R4, LSL #+20
        LDRB     R0,[R0, #+15]
        ORR      R0,R3,R0, LSL #+24
        STR      R0,[R2, #+0]
//  129   EBCx->CONTROL = tmpreg_CONTROL;
        STR      R1,[R2, #+4]
//  130 }
        POP      {R4,PC}          ;; return
//  131 
//  132 /**
//  133   * @brief  Fills each EBC_InitStruct member with its default value.
//  134   * @param  EBC_InitStruct: pointer to a EBC_InitTypeDef structure which will
//  135   *         be initialized.
//  136   * @retval None
//  137   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  138 void EBC_StructInit(EBC_InitTypeDef* EBC_InitStruct)
//  139 {
//  140   /* Reset EBC initialization structure parameters values */
//  141   EBC_InitStruct->EBC_Mode          = EBC_MODE_OFF;
EBC_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  142   EBC_InitStruct->EBC_Cpol          = EBC_CPOL_POSITIVE;
        STR      R1,[R0, #+4]
//  143   EBC_InitStruct->EBC_WaitState 	= EBC_WAIT_STATE_3HCLK;
        STRB     R1,[R0, #+8]
//  144   EBC_InitStruct->EBC_NandTrc       = EBC_NAND_CYCLES_0HCLK;
        STRB     R1,[R0, #+9]
//  145   EBC_InitStruct->EBC_NandTwc       = EBC_NAND_CYCLES_0HCLK;
        STRB     R1,[R0, #+10]
//  146   EBC_InitStruct->EBC_NandTrea      = EBC_NAND_CYCLES_0HCLK;
        STRB     R1,[R0, #+11]
//  147   EBC_InitStruct->EBC_NandTwp       = EBC_NAND_CYCLES_0HCLK;
        STRB     R1,[R0, #+12]
//  148   EBC_InitStruct->EBC_NandTwhr      = EBC_NAND_CYCLES_0HCLK;
        STRB     R1,[R0, #+13]
//  149   EBC_InitStruct->EBC_NandTalea 	= EBC_NAND_CYCLES_0HCLK;
        STRB     R1,[R0, #+14]
//  150   EBC_InitStruct->EBC_NandTrr       = EBC_NAND_CYCLES_0HCLK;
        STRB     R1,[R0, #+15]
//  151 #if defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE94)
//  152   EBC_InitStruct->EBC_DataAlignment = EBC_EBC_DATA_ALIGNMENT_OFF;
//  153   EBC_InitStruct->EBC_UseMemRegion = DISABLE;
//  154 #endif /* #if defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T) */
//  155 }
        BX       LR               ;; return
//  156 
//  157 /**
//  158   * @brief  Calculates the Wait States number for selected HCLK frequency and
//  159   *         time interval.
//  160   * @param  HCLK_Frequency_KHz: specifies the HCLK frequency.
//  161   * @param  Time_ns: specifies the time interval.
//  162   * @retval The Wait States number in range 0..15 or 0xFFFFFFFF if result is
//  163   *         out of range 0..15.
//  164   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  165 uint32_t EBC_CalcWaitStates(uint32_t HCLK_Frequency_KHz, uint32_t Time_ns)
//  166 {
//  167   uint32_t Cycles;
//  168 
//  169   if ( HCLK_Frequency_KHz == 0 )
EBC_CalcWaitStates:
        CBZ.N    R0,??EBC_CalcWaitStates_0
//  170   {
//  171     Cycles = 0;
//  172   }
//  173   else if ( Time_ns > WAIT_STATES_MAX * WAIT_STATES_COEF / HCLK_Frequency_KHz )
        LDR.N    R2,??DataTable4_1  ;; 0x112a880
        UDIV     R2,R2,R0
        CMP      R2,R1
        BCC.N    ??EBC_CalcWaitStates_1
//  174   {
//  175     Cycles = 0xFFFFFFFF;
//  176   }
//  177   else
//  178   {
//  179     Cycles = (HCLK_Frequency_KHz * Time_ns + WAIT_STATES_COEF - 1) / WAIT_STATES_COEF;
        LDR.N    R2,??DataTable4_2  ;; 0xf423f
        MLA      R0,R1,R0,R2
        LDR.N    R1,??DataTable4_3  ;; 0xf4240
        UDIV     R0,R0,R1
//  180     if ( Cycles > WAIT_STATES_MAX)
        CMP      R0,#+19
        BCC.N    ??EBC_CalcWaitStates_2
//  181     {
//  182       Cycles = 0xFFFFFFFF;
??EBC_CalcWaitStates_1:
        MOV      R0,#-1
        BX       LR
//  183     }
//  184     else if ( Cycles >= WAIT_STATES_MIN)
??EBC_CalcWaitStates_2:
        CMP      R0,#+3
        BCC.N    ??EBC_CalcWaitStates_3
//  185     {
//  186       Cycles -= WAIT_STATES_MIN;
        SUBS     R0,R0,#+3
        BX       LR
//  187     }
//  188     else
//  189     {
//  190       Cycles = 0;
??EBC_CalcWaitStates_3:
        MOVS     R0,#+0
//  191     }
//  192   }
//  193 
//  194   return Cycles;
??EBC_CalcWaitStates_0:
        BX       LR               ;; return
//  195 }
//  196 
//  197 /**
//  198   * @brief  Calculates the NAND Sycles number for selected HCLK frequency and
//  199   *         time interval.
//  200   * @param  HCLK_Frequency_KHz: specifies the HCLK frequency.
//  201   * @param  Time_ns: specifies the time interval.
//  202   * @retval The NAND Sycles number in range 0..15 or 0xFFFFFFFF if result is
//  203   *         out of range 0..15.
//  204   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  205 uint32_t EBC_CalcNandCycles(uint32_t HCLK_Frequency_KHz, uint32_t Time_ns)
//  206 {
//  207   uint32_t Cycles;
//  208 
//  209   if ( HCLK_Frequency_KHz == 0 )
EBC_CalcNandCycles:
        CBZ.N    R0,??EBC_CalcNandCycles_0
//  210   {
//  211     Cycles = 0;
//  212   }
//  213   else if ( Time_ns > NAND_SYCLES_MAX * NAND_SYCLES_COEF / HCLK_Frequency_KHz )
        MOV      R2,#-1
        LDR.N    R3,??DataTable4_4  ;; 0xe4e1c0
        UDIV     R3,R3,R0
        CMP      R3,R1
        BCC.N    ??EBC_CalcNandCycles_1
//  214   {
//  215     Cycles = 0xFFFFFFFF;
//  216   }
//  217   else
//  218   {
//  219     Cycles = (HCLK_Frequency_KHz * Time_ns + NAND_SYCLES_COEF - 1) / NAND_SYCLES_COEF;
        LDR.N    R3,??DataTable4_2  ;; 0xf423f
        MLA      R0,R1,R0,R3
        LDR.N    R1,??DataTable4_3  ;; 0xf4240
        UDIV     R0,R0,R1
//  220     if ( Cycles > NAND_SYCLES_MAX)
        CMP      R0,#+16
        BCC.N    ??EBC_CalcNandCycles_0
//  221     {
//  222       Cycles = 0xFFFFFFFF;
??EBC_CalcNandCycles_1:
        MOV      R0,R2
//  223     }
//  224   }
//  225 
//  226   return Cycles;
??EBC_CalcNandCycles_0:
        BX       LR               ;; return
//  227 }
//  228 
//  229 /**
//  230   * @brief  Returns the BUSY status of the NAND Flash.
//  231   * @param  None.
//  232   * @retval The NAND Flash BUSY status (NandFlashReady or NandFlashBusy).
//  233   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  234 FlagStatus EBC_GetBusyStatus(void)
//  235 {
//  236   MDR_EBC_TypeDef *EBCx;
//  237   FlagStatus tmpreg_BUSY_STS;
//  238 
//  239   EBCx = MDR_EBC;
//  240 
//  241   if ((EBCx->CONTROL & EBC_CONTROL_BUSY) == 0)
EBC_GetBusyStatus:
        LDR.N    R0,??DataTable4_5  ;; 0x400f0054
        LDR      R0,[R0, #+0]
//  242   {
//  243     tmpreg_BUSY_STS = RESET;
//  244   }
//  245   else
//  246   {
//  247     tmpreg_BUSY_STS = SET;
//  248   }
//  249 
//  250   return tmpreg_BUSY_STS;
        LSRS     R0,R0,#+7
        AND      R0,R0,#0x1
        BX       LR               ;; return
//  251 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x400f0050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x112a880

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0xf423f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0xe4e1c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x400f0054

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  252 
//  253 #if defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE94)
//  254 /**
//  255   * @brief  Fills each EBC_InitStruct member with its default value.
//  256   * @warning This function can be used only for microcontrollers
//  257   * MDR1986VE1T and MDR1986VE3.
//  258   * @param  EBC_InitStruct: pointer to a EBC_InitTypeDef structure which will
//  259   *         be initialized.
//  260   * @retval None
//  261   */
//  262 void EBC_MemRegionStructInit (EBC_MemRegionInitTypeDef * EBC_MemRegionInitStruct)
//  263 {
//  264 	/* Reset EBC initialization structure parameters values */
//  265 	EBC_MemRegionInitStruct->WS_Active 		= 0;
//  266 	EBC_MemRegionInitStruct->WS_Setup 		= EBC_WS_SETUP_CYCLE_1HCLK;
//  267 	EBC_MemRegionInitStruct->WS_Hold 		= EBC_WS_HOLD_CYCLE_1HCLK;
//  268 	EBC_MemRegionInitStruct->Use_Ready 		= DISABLE;
//  269 	EBC_MemRegionInitStruct->Enable_Tune 	= DISABLE;
//  270 }
//  271 
//  272 /**
//  273   * @brief  Initializes the EBC Memory Region according to the specified
//  274   *         parameters in the EBC_MemRegionInitStruct.
//  275   * @warning This function can be used only for microcontrollers
//  276   * 		 MDR1986VE1T and MDR1986VE3.
//  277   * @param  EBC_MemRegionInitStruct: pointer to a EBC_MemRegionInitTypeDef structure that
//  278   *         contains the configuration information for the specified EBC Memory Region.
//  279   * @retval None
//  280   */
//  281 void EBC_MemRegionInit ( EBC_MemRegionInitTypeDef * EBC_MemRegionInitStruct, uint32_t EBC_MEM_REGIONx )
//  282 {
//  283 	MDR_EBC_TypeDef *EBCx;
//  284 	uint32_t tmpreg_Mem_Region;
//  285 
//  286 	/* Check the parameters */
//  287 	assert_param(IS_EBC_MEM_REGION(EBC_MEM_REGIONx));
//  288 	assert_param(IS_EBC_WS_SETUP_CYCLES(EBC_MemRegionInitStruct->WS_Setup));
//  289 	assert_param(IS_EBC_WS_HOLD_CYCLES(EBC_MemRegionInitStruct->WS_Hold));
//  290 	assert_param(IS_EBC_WS_ACTIVE(EBC_MemRegionInitStruct->WS_Active));
//  291 
//  292 	/* Form new value for the RAM_CYCLESx register */
//  293 	tmpreg_Mem_Region = (EBC_MemRegionInitStruct->Use_Ready << EBC_RAM_CYCLES_USE_READY_Pos)
//  294     		          | (EBC_MemRegionInitStruct->WS_Hold << EBC_RAM_CYCLES_WS_HOLD_Pos)
//  295     		          | (EBC_MemRegionInitStruct->WS_Setup << EBC_RAM_CYCLES_WS_SETUP_Pos)
//  296 					  | (EBC_MemRegionInitStruct->WS_Active << EBC_RAM_CYCLES_WS_ACTIVE_Pos)
//  297 					  | (EBC_MemRegionInitStruct->Enable_Tune << EBC_RAM_CYCLES_ENABLE_TUNE_Pos);
//  298 
//  299 	EBCx = (MDR_EBC_TypeDef *)MDR_EBC;
//  300 
//  301 	/* Configure EBC registers with new values */
//  302 	EBCx->MEM_REGION[EBC_MEM_REGIONx] = tmpreg_Mem_Region;
//  303 }
//  304 
//  305 /**
//  306   * @brief  Enables or disables the specified EBC Memory Region settigs.
//  307   * @warning This function can be used only for microcontrollers
//  308   * 		MDR1986VE1T and MDR1986VE3.
//  309   * @param  EBC_MEM_REGIONx: Select the specified memory region.
//  310   *         This parameter can be one of the following values:
//  311   *         	@arg EBC_MEM_REGION_10000000
//  312   *         	@arg EBC_MEM_REGION_50000000
//  313   *         	@arg EBC_MEM_REGION_60000000
//  314   * 			@arg EBC_MEM_REGION_70000000
//  315   * @param  NewState: new state of the EBC Memory Region settigs.
//  316   *         This parameter can be: ENABLE or DISABLE.
//  317   * @retval None
//  318   */
//  319 void EBC_MemRegionCMD ( uint32_t EBC_MEM_REGIONx, uint32_t NewState )
//  320 {
//  321 	MDR_EBC_TypeDef *EBCx = (MDR_EBC_TypeDef *)MDR_EBC;
//  322 
//  323 	/* Check the parameters */
//  324 	assert_param(IS_EBC_MEM_REGION(EBC_MEM_REGIONx));
//  325 	assert_param(IS_FUNCTIONAL_STATE(NewState));
//  326 
//  327 	if(NewState != DISABLE){
//  328 		 /* Enable the selected EBC Memory Region settigs */
//  329 		EBCx->MEM_REGION[EBC_MEM_REGIONx] |= EBC_RAM_CYCLES_ENABLE_TUNE;
//  330 	}
//  331 	else{
//  332 		/* Disable the selected EBC Memory Region settigs */
//  333 		EBCx->MEM_REGION[EBC_MEM_REGIONx] &= ~EBC_RAM_CYCLES_ENABLE_TUNE;
//  334 	}
//  335 }
//  336 
//  337 #endif /* #if defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T) */
//  338 
//  339 /** @} */ /* End of group EBC_Private_Functions */
//  340 
//  341 /** @} */ /* End of group EBC */
//  342 
//  343 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
//  344 
//  345 /******************* (C) COPYRIGHT 2010 Phyton *********************************
//  346 *
//  347 * END OF FILE MDR32F9Qx_ebc.c */
//  348 
// 
// 212 bytes in section .text
// 
// 212 bytes of CODE memory
//
//Errors: none
//Warnings: none
