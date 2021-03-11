///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:57 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_rst_clk.c                 /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_rst_clk.c --preprocess    /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_rst_ /
//                    clk.s                                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_rst_clk

        #define SHT_PROGBITS 0x1

        PUBLIC RST_CLK_ADCclkEnable
        PUBLIC RST_CLK_ADCclkPrescaler
        PUBLIC RST_CLK_ADCclkSelection
        PUBLIC RST_CLK_CPU_PLLcmd
        PUBLIC RST_CLK_CPU_PLLconfig
        PUBLIC RST_CLK_CPU_PLLstatus
        PUBLIC RST_CLK_CPU_PLLuse
        PUBLIC RST_CLK_CPUclkPrescaler
        PUBLIC RST_CLK_CPUclkSelection
        PUBLIC RST_CLK_DeInit
        PUBLIC RST_CLK_GetClocksFreq
        PUBLIC RST_CLK_GetFlagStatus
        PUBLIC RST_CLK_HSEclkPrescaler
        PUBLIC RST_CLK_HSEconfig
        PUBLIC RST_CLK_HSEstatus
        PUBLIC RST_CLK_HSIadjust
        PUBLIC RST_CLK_HSIclkPrescaler
        PUBLIC RST_CLK_HSIcmd
        PUBLIC RST_CLK_HSIstatus
        PUBLIC RST_CLK_LSEconfig
        PUBLIC RST_CLK_LSEstatus
        PUBLIC RST_CLK_LSIadjust
        PUBLIC RST_CLK_LSIcmd
        PUBLIC RST_CLK_LSIstatus
        PUBLIC RST_CLK_PCLKcmd
        PUBLIC RST_CLK_RTC_HSEclkEnable
        PUBLIC RST_CLK_RTC_HSIclkEnable
        PUBLIC RST_CLK_USB_PLLcmd
        PUBLIC RST_CLK_USB_PLLconfig
        PUBLIC RST_CLK_USB_PLLstatus
        PUBLIC RST_CLK_USB_PLLuse
        PUBLIC RST_CLK_USBclkEnable
        PUBLIC RST_CLK_USBclkPrescaler
        PUBLIC RST_CLK_WarmDeInit

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_rst_clk.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_rst_clk.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    23/09/2011
//    7   * @brief   This file contains all the RST_CLK firmware functions.
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
//   20   * FILE MDR32F9Qx_rst_clk.c
//   21   */
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "MDR32F9Qx_config.h"
//   25 #include "MDR32F9Qx_rst_clk.h"
//   26 
//   27 
//   28 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_RST_CLK_C
//   29 
//   30 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup RST_CLK RST_CLK
//   35   * @{
//   36   */
//   37 
//   38 /** @defgroup RST_CLK_Private_Constants RST_CLK Private Constants
//   39   * @{
//   40   */
//   41 
//   42 #ifndef HSI_Value
//   43 /* Typical Value of the HSI in Hz */
//   44  #define HSI_Value                  ((uint32_t)8000000)
//   45 #endif /* HSI_Value */
//   46 
//   47 #ifndef HSE_Value
//   48 /* Typical Value of the HSE in Hz */
//   49  #define HSE_Value                  ((uint32_t)8000000)
//   50 #endif /* HSE_Value */
//   51 
//   52 #ifndef LSI_Value
//   53 /* Typical Value of the LSI in Hz */
//   54  #define LSI_Value                  ((uint32_t)40000)
//   55 #endif /* LSI_Value */
//   56 
//   57 #ifndef LSE_Value
//   58 /* Typical Value of the LSE in Hz */
//   59  #define LSE_Value                  ((uint32_t)32768)
//   60 #endif /* LSE_Value */
//   61 
//   62 /* RCC_CLK registers bit address in the alias region */
//   63 #define PERIPH_BASE                 0x40000000
//   64 #define PERIPH_BB_BASE              0x42000000
//   65 #define RST_CLK_OFFSET              (MDR_RST_CLK_BASE - PERIPH_BASE)
//   66 #define BKP_OFFSET                  (MDR_BKP_BASE - PERIPH_BASE)
//   67 
//   68 #define SFR_OFFSET(TP, MOD, SFR)    ((uint32_t)&((TP*)MOD)->SFR)
//   69 #define BB_ADDR(TP, MOD, SFR, BIT)  (PERIPH_BB_BASE + SFR_OFFSET(TP, MOD, SFR)*32 + BIT*4)
//   70 #define RST_CLK_BB(SFR, BIT)        BB_ADDR(MDR_RST_CLK_TypeDef, RST_CLK_OFFSET, SFR, BIT)
//   71 #define BKP_BB(SFR, BIT)            BB_ADDR(MDR_BKP_TypeDef, BKP_OFFSET, SFR, BIT)
//   72 
//   73 #define FLAG_MASK                   ((uint8_t)0x1F)
//   74 #define FLAG_SFR_MASK               ((uint8_t)0xE0)
//   75 
//   76 #define HSI_RDY_MASK                (1 << 23)
//   77 #define LSI_RDY_MASK                (1 << 21)
//   78 #define LSE_RDY_MASK                (1 << 13)
//   79 #define HSE_RDY_MASK                (1 << 2)
//   80 #define HSE2_RDY_MASK       		(1 << 3)
//   81 #define PLLCPU_RDY_MASK             (1 << 1)
//   82 #define PLLUSB_RDY_MASK             (1 << 0)
//   83 #define PLLCPUMUL_OFFSET            8
//   84 #define PLLCPUmulclr                (~(uint32_t)(0x0F << PLLCPUMUL_OFFSET))
//   85 #define PLLUSBMUL_OFFSET            4
//   86 #define PLLUSBmulclr                (~(uint32_t)(0x0F << PLLUSBMUL_OFFSET))
//   87 #define CPU_C1_SELclr               (~(uint32_t)0x03)
//   88 #define CPU_C3_SELclr               (~(uint32_t)0x00000F0)
//   89 #define CPU_HCLK_SELclr             (~(uint32_t)(0x03 << 8))
//   90 #define ADC_C12_SELclr              (~(uint32_t)((0x03 << 4) | 0x03))
//   91 #define AUC_C12_SELclr              (~(uint32_t)((0x03 << 20) | (0x03 << 16)))
//   92 #define AUC_C3_SELclr       		(~(uint32_t)((0xF<<24)))
//   93 #define ADC_C3_SEL_OFFSET           8
//   94 #define ADC_C3_SELclr               (~(uint32_t)(0x0F << ADC_C3_SEL_OFFSET))
//   95 #define HSI_SEL_OFFSET              4
//   96 #define HSI_SELclr                  (~(uint32_t)(0x0F << HSI_SEL_OFFSET))
//   97 #define HSE_SEL_OFFSET              0
//   98 #define HSE_SELclr                  (~(uint32_t)(0x0F << HSE_SEL_OFFSET))
//   99 #define USB_C1_SELclr               (~(uint32_t)0x03)
//  100 
//  101 #ifndef HSEonTimeOut
//  102 /* Time out for HSE start up */
//  103  #define HSEonTimeOut               ((uint16_t)0x0600)
//  104 #endif /* HSEonTimeOut */
//  105 
//  106 #ifndef LSEonTimeOut
//  107 /* Time out for LSE start up */
//  108  #define LSEonTimeOut               ((uint16_t)0x0600)
//  109 #endif /* LSEonTimeOut */
//  110 
//  111 #ifndef HSIonTimeOut
//  112 /* Time out for HSI start up */
//  113  #define HSIonTimeOut               ((uint16_t)0x0600)
//  114 #endif /* HSIonTimeOut */
//  115 
//  116 #ifndef LSIonTimeOut
//  117 /* Time out for LSI start up */
//  118  #define LSIonTimeOut               ((uint16_t)0x0600)
//  119 #endif /* LSIonTimeOut */
//  120 
//  121 #ifndef PLLCPUonTimeOut
//  122 /* Time out for PLLCPU start up */
//  123  #define PLLCPUonTimeOut            ((uint16_t)0x0600)
//  124 #endif /* PLLCPUonTimeOut */
//  125 
//  126 #ifndef PLLUSBonTimeOut
//  127 /* Time out for PLLUSB start up */
//  128  #define PLLUSBonTimeOut            ((uint16_t)0x0600)
//  129 #endif /* PLLUSBonTimeOut */
//  130 
//  131 #define HSITRIM_OFFSET              24
//  132 #define HSITRIM_MASK                ((uint32_t)(0x3F << HSITRIM_OFFSET))
//  133 
//  134 #define HSION_OFFSET                22
//  135 #define HSION_MASK                  ((uint32_t)(1 << HSION_OFFSET))
//  136 
//  137 #define LSITRIM_OFFSET              16
//  138 #define LSITRIM_MASK                ((uint32_t)(0x1F << LSITRIM_OFFSET))
//  139 
//  140 #define LSION_OFFSET                15
//  141 #define LSION_MASK                  ((uint32_t)(1 << LSION_OFFSET))
//  142 
//  143 #if defined(USE_MDR1986VE9x)
//  144   #define PLLCPUON_BB                 RST_CLK_BB(PLL_CONTROL, 2)
//  145   #define PLLCPUPLD_BB                RST_CLK_BB(PLL_CONTROL, 3)
//  146   #define PLLUSBON_BB                 RST_CLK_BB(PLL_CONTROL, 0)
//  147   #define PLLUSBRLD_BB                RST_CLK_BB(PLL_CONTROL, 1)
//  148 
//  149   #define HSION_BB                    BKP_BB(REG_0F, HSION_OFFSET)
//  150   #define LSION_BB                    BKP_BB(REG_0F, LSION_OFFSET)
//  151 
//  152   #define CPU_C2_SEL_BB               RST_CLK_BB(CPU_CLOCK, 2)
//  153   #define USB_C2_SEL_BB               RST_CLK_BB(USB_CLOCK, 2)
//  154   #define USB_C3_SEL_BB               RST_CLK_BB(USB_CLOCK, 4)
//  155   #define USB_CLK_EN_BB               RST_CLK_BB(USB_CLOCK, 8)
//  156   #define ADC_CLK_EN_BB               RST_CLK_BB(ADC_MCO_CLOCK, 13)
//  157   #define HSI_RTC_EN_BB               RST_CLK_BB(RTC_CLOCK, 9)
//  158   #define HSE_RTC_EN_BB               RST_CLK_BB(RTC_CLOCK, 8)
//  159   #define CPU_C1_SEL0_BB              RST_CLK_BB(CPU_CLOCK, 0)
//  160   #define CPU_C1_SEL1_BB              RST_CLK_BB(CPU_CLOCK, 1)
//  161   #define USB_C1_SEL0_BB              RST_CLK_BB(USB_CLOCK, 0)
//  162   #define USB_C1_SEL1_BB              RST_CLK_BB(USB_CLOCK, 1)
//  163 #endif /* #if defined(USE_MDR1986VE9x) */
//  164 
//  165 /** @} */ /* End of group RST_CLK_Private_Constants */
//  166 
//  167 /** @defgroup RST_CLK_Private_Functions RST_CLK Private Functions
//  168   * @{
//  169   */
//  170 
//  171 /**
//  172   * @brief  Set the RST_CLK clock configuration to the default reset state.
//  173   * @param  None
//  174   * @retval None
//  175   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  176 void RST_CLK_DeInit(void)
//  177 {
RST_CLK_DeInit:
        PUSH     {R7,LR}
//  178   RST_CLK_WarmDeInit();
        BL       RST_CLK_WarmDeInit
//  179   /* Reset REG_0F bits to zero but HSION bit */
//  180   RST_CLK_PCLKcmd(RST_CLK_PCLK_BKP, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+134217728
        BL       RST_CLK_PCLKcmd
//  181   MDR_BKP->REG_0F |= (uint32_t)((1<<22)|(1<<15)); /* HSION & LSION */
        LDR.W    R0,??DataTable24  ;; 0x400d803c
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0x408000
        STR      R1,[R0, #+0]
//  182   MDR_BKP->REG_0F &= (uint32_t)((1<<22)|(1<<15));
        LDR      R1,[R0, #+0]
        AND      R1,R1,#0x408000
        STR      R1,[R0, #+0]
//  183 }
        POP      {R0,PC}          ;; return
//  184 
//  185 /**
//  186   * @brief  Set the RST_CLK clock configuration to the default reset state except for
//  187   *         the backup domain REG_0F register.
//  188   * @param  None
//  189   * @retval None
//  190   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  191 void RST_CLK_WarmDeInit(void)
//  192 {
RST_CLK_WarmDeInit:
        PUSH     {R7,LR}
//  193   /* Prepare HSI clk */
//  194   RST_CLK_HSIcmd(ENABLE);
        LDR.W    R0,??DataTable24_1  ;; 0x43b007d8
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  195   RST_CLK_HSIstatus();
        BL       RST_CLK_HSIstatus
//  196   RST_CLK_CPUclkSelection(RST_CLK_CPUclkHSI);
        MOVS     R0,#+0
        BL       RST_CLK_CPUclkSelection
//  197 
//  198   /* Reset CPU_CLOCK bits */
//  199   MDR_RST_CLK->CPU_CLOCK   &= (uint32_t)0x00000000;
        LDR.W    R0,??DataTable24_2  ;; 0x40020004
        LDR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  200 
//  201   /* Reset PLL_CONTROL bits */
//  202   MDR_RST_CLK->PLL_CONTROL &= (uint32_t)0x00000000;
        LDR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  203 
//  204   /* Reset HSEON and HSEBYP bits */
//  205   MDR_RST_CLK->HS_CONTROL  &= (uint32_t)0x00000000;
        LDR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  206 
//  207   /* Reset USB_CLOCK bits */
//  208   MDR_RST_CLK->USB_CLOCK   &= (uint32_t)0x00000000;
        LDR      R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  209 
//  210   /* Reset ADC_MCO_CLOCK bits */
//  211   MDR_RST_CLK->ADC_MCO_CLOCK   &= (uint32_t)0x00000000;
        LDR      R1,[R0, #+16]
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//  212 
//  213   /* Reset RTC_CLOCK bits */
//  214   MDR_RST_CLK->RTC_CLOCK   &= (uint32_t)0x00000000;
        LDR      R1,[R0, #+20]
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
//  215 
//  216   /* Reset all clock but RTC_CLK bit */
//  217   MDR_RST_CLK->PER_CLOCK   = (uint32_t)PCLK_BIT(MDR_RST_CLK_BASE) | (uint32_t)PCLK_BIT(MDR_BKP_BASE);
        LDR.W    R1,??DataTable24_3  ;; 0x8000010
        STR      R1,[R0, #+24]
//  218 }
        POP      {R0,PC}          ;; return
//  219 
//  220 /**
//  221   * @brief  RST_CLK_HSEconfig - HSE (High Speed External) clock mode and source selection
//  222   * @param  RST_CLK_HSE - mode selector
//  223   *         @arg RST_CLK_HSE_OFF    -  switch off HSE clock generator
//  224   *         @arg RST_CLK_HSE_ON     -  switch on HSE clock generator
//  225   *         @arg RST_CLK_HSE_Bypass -  use external clock source
//  226   * @retval None
//  227   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  228 void RST_CLK_HSEconfig(uint32_t RST_CLK_HSE)
//  229 {
//  230   /* Check the parameters */
//  231   assert_param(IS_RST_CLK_HSE(RST_CLK_HSE));
//  232   /* Reset HSEON and HSEBYP bits before configuring the HSE */
//  233   MDR_RST_CLK->HS_CONTROL &= ~((uint32_t)(RST_CLK_HSE_ON | RST_CLK_HSE_Bypass));
RST_CLK_HSEconfig:
        LDR.W    R1,??DataTable24_4  ;; 0x40020008
        LDR      R2,[R1, #+0]
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+2
        STR      R2,[R1, #+0]
//  234   /* Configure HSE (RCC_HSE_OFF is already covered by the code section above) */
//  235   switch (RST_CLK_HSE)
        CMP      R0,#+1
        BEQ.N    ??RST_CLK_HSEconfig_0
        CMP      R0,#+2
        BEQ.N    ??RST_CLK_HSEconfig_1
        BX       LR
//  236   {
//  237     case RST_CLK_HSE_ON:
//  238       /* Set HSEON bit */
//  239       MDR_RST_CLK->HS_CONTROL |= RST_CLK_HSE_ON;
??RST_CLK_HSEconfig_0:
        LDR      R0,[R1, #+0]
        ORR      R0,R0,#0x1
        B.N      ??RST_CLK_HSEconfig_2
//  240       break;
//  241 
//  242     case RST_CLK_HSE_Bypass:
//  243       /* Set HSEBYP and HSEON bits */
//  244       MDR_RST_CLK->HS_CONTROL |= RST_CLK_HSE_ON | RST_CLK_HSE_Bypass;
??RST_CLK_HSEconfig_1:
        LDR      R0,[R1, #+0]
        ORR      R0,R0,#0x3
??RST_CLK_HSEconfig_2:
        STR      R0,[R1, #+0]
//  245       break;
//  246 
//  247     default:
//  248       break;
//  249   }
//  250 }
        BX       LR               ;; return
//  251 
//  252 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  253 /**
//  254   * @brief  RST_CLK_HSE2config - HSE2 (High Speed External 2) clock mode and source selection
//  255   * @warning This function can be used only for microcontrollers MDR1986VE1T and MDR1986VE3.
//  256   * @param  RST_CLK_HSE2 - mode selector
//  257   *         @arg RST_CLK_HSE2_OFF    -  switch off HSE clock generator
//  258   *         @arg RST_CLK_HSE2_ON     -  switch on HSE clock generator
//  259   *         @arg RST_CLK_HSE2_Bypass -  use external clock source
//  260   * @retval None
//  261   */
//  262 void RST_CLK_HSE2config(uint32_t RST_CLK_HSE2)
//  263 {
//  264   /* Check the parameters */
//  265   assert_param(IS_RST_CLK_HSE2(RST_CLK_HSE2));
//  266   /* Reset HSEON and HSEBYP bits before configuring the HSE */
//  267   MDR_RST_CLK->HS_CONTROL &= ~((uint32_t)(RST_CLK_HSE2_ON | RST_CLK_HSE2_Bypass));
//  268   /* Configure HSE (RCC_HSE_OFF is already covered by the code section above) */
//  269   switch (RST_CLK_HSE2)
//  270   {
//  271     case RST_CLK_HSE2_ON:
//  272       /* Set HSEON bit */
//  273       MDR_RST_CLK->HS_CONTROL |= RST_CLK_HSE2_ON;
//  274       break;
//  275 
//  276     case RST_CLK_HSE2_Bypass:
//  277       /* Set HSEBYP and HSEON bits */
//  278       MDR_RST_CLK->HS_CONTROL |= RST_CLK_HSE2_ON | RST_CLK_HSE2_Bypass;
//  279       break;
//  280 
//  281     default:
//  282       break;
//  283   }
//  284 }
//  285 #endif
//  286 
//  287 
//  288 /**
//  289   * @brief  RST_CLK_HSEstatus - HSE clock status
//  290   * @param  None
//  291   * @retval enum ErrorStatus - SUCCESS if HSE clock is ready, else ERROR
//  292   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  293 ErrorStatus RST_CLK_HSEstatus(void)
//  294 {
RST_CLK_HSEstatus:
        PUSH     {R7,LR}
//  295   __IO uint32_t startCounter = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  296   ErrorStatus state;
//  297   FlagStatus flag;
//  298 
//  299   /* Wait until HSE is ready or time out is occure */
//  300   do
//  301   {
//  302     flag = RST_CLK_GetFlagStatus(RST_CLK_FLAG_HSERDY);
??RST_CLK_HSEstatus_0:
        MOVS     R0,#+34
        BL       RST_CLK_GetFlagStatus
//  303     startCounter++;
        BL       ?Subroutine4
//  304   } while ((startCounter < HSEonTimeOut) && (flag == RESET));
??CrossCallReturnLabel_0:
        BCS.N    ??RST_CLK_HSEstatus_1
        CMP      R0,#+0
        BEQ.N    ??RST_CLK_HSEstatus_0
//  305 
//  306   if (RST_CLK_GetFlagStatus(RST_CLK_FLAG_HSERDY) != RESET)
??RST_CLK_HSEstatus_1:
        MOVS     R0,#+34
        B.N      ?Subroutine3
//  307   {
//  308     state = SUCCESS;
//  309   }
//  310   else
//  311   {
//  312     state = ERROR;
//  313   }
//  314   return state;
//  315 }
//  316 
//  317 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  318 /**
//  319   * @brief  RST_CLK_HSE2status - HSE2 clock status
//  320   * @warning This function can be used only for microcontrollers MDR1986VE1T and MDR1986VE3.
//  321   * @param  None
//  322   * @retval enum ErrorStatus - SUCCESS if HSE2 clock is ready, else ERROR
//  323   */
//  324 ErrorStatus RST_CLK_HSE2status(void)
//  325 {
//  326   __IO uint32_t startCounter = 0;
//  327   ErrorStatus state;
//  328   FlagStatus flag;
//  329 
//  330   /* Wait until HSE2 is ready or time out is occure */
//  331   do{
//  332     flag = RST_CLK_GetFlagStatus(RST_CLK_FLAG_HSE2RDY);
//  333     startCounter++;
//  334   } while ((startCounter < HSE2onTimeOut) && (flag == RESET));
//  335 
//  336   if (RST_CLK_GetFlagStatus(RST_CLK_FLAG_HSE2RDY) != RESET)
//  337   {
//  338     state = SUCCESS;
//  339   }
//  340   else
//  341   {
//  342     state = ERROR;
//  343   }
//  344   return (state);
//  345 }
//  346 #endif
//  347 
//  348 /**
//  349   * @brief  RST_CLK_LSEconfig - LSE (Low Speed External) clock mode and source selection
//  350   * @param  RST_CLK_LSE - mode selector
//  351   *         @arg RST_CLK_LSE_OFF    -  switch off LSE clock generator
//  352   *         @arg RST_CLK_LSE_ON     -  switch on LSE clock generator
//  353   *         @arg RST_CLK_LSE_Bypass -  use external clock source
//  354   * @retval None
//  355   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  356 void RST_CLK_LSEconfig(uint32_t RST_CLK_LSE)
//  357 {
//  358   /* Check the parameters */
//  359   assert_param(IS_RST_CLK_LSE(RST_CLK_LSE));
//  360   /* Reset LSEON and LSEBYP bits before configuring the LSE */
//  361   MDR_BKP->REG_0F &= ~((uint32_t)(RST_CLK_LSE_ON | RST_CLK_LSE_Bypass));
RST_CLK_LSEconfig:
        LDR.N    R1,??DataTable24  ;; 0x400d803c
        LDR      R2,[R1, #+0]
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+2
        STR      R2,[R1, #+0]
//  362   switch (RST_CLK_LSE)
        CMP      R0,#+1
        BEQ.N    ??RST_CLK_LSEconfig_0
        CMP      R0,#+2
        BEQ.N    ??RST_CLK_LSEconfig_1
        BX       LR
//  363   {
//  364     case RST_CLK_LSE_ON:
//  365       /* Set LSEON bit */
//  366       MDR_BKP->REG_0F |= RST_CLK_LSE_ON;
??RST_CLK_LSEconfig_0:
        LDR      R0,[R1, #+0]
        ORR      R0,R0,#0x1
        B.N      ??RST_CLK_LSEconfig_2
//  367       break;
//  368 
//  369     case RST_CLK_LSE_Bypass:
//  370       /* Set LSEBYP and LSEON bits */
//  371       MDR_BKP->REG_0F |= (RST_CLK_LSE_ON | RST_CLK_LSE_Bypass);
??RST_CLK_LSEconfig_1:
        LDR      R0,[R1, #+0]
        ORR      R0,R0,#0x3
??RST_CLK_LSEconfig_2:
        STR      R0,[R1, #+0]
//  372       break;
//  373 
//  374     default:
//  375       break;
//  376   }
//  377 }
        BX       LR               ;; return
//  378 
//  379 /**
//  380   * @brief  RST_CLK_LSEstatus - LSE clock status
//  381   * @param  None
//  382   * @retval enum ErrorStatus - SUCCESS if LSE clock is ready, else ERROR
//  383   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  384 ErrorStatus RST_CLK_LSEstatus(void)
//  385 {
RST_CLK_LSEstatus:
        PUSH     {R7,LR}
//  386   __IO uint32_t startCounter = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  387   ErrorStatus state;
//  388   FlagStatus flag;
//  389 
//  390  /* Wait until LSE is ready or time out is occure */
//  391  do
//  392   {
//  393     flag = RST_CLK_GetFlagStatus(RST_CLK_FLAG_LSERDY);
??RST_CLK_LSEstatus_0:
        MOVS     R0,#+13
        BL       RST_CLK_GetFlagStatus
//  394     startCounter++;
        BL       ?Subroutine4
//  395   } while ((startCounter < LSEonTimeOut) && (flag == RESET));
??CrossCallReturnLabel_1:
        BCS.N    ??RST_CLK_LSEstatus_1
        CMP      R0,#+0
        BEQ.N    ??RST_CLK_LSEstatus_0
//  396 
//  397   if (RST_CLK_GetFlagStatus(RST_CLK_FLAG_LSERDY) != RESET)
??RST_CLK_LSEstatus_1:
        MOVS     R0,#+13
        REQUIRE ?Subroutine3
        ;; // Fall through to label ?Subroutine3
//  398   {
//  399     state = SUCCESS;
//  400   }
//  401   else
//  402   {
//  403     state = ERROR;
//  404   }
//  405   return state;
//  406 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine3:
        BL       RST_CLK_GetFlagStatus
        CBZ.N    R0,??Subroutine3_0
        MOVS     R0,#+1
??Subroutine3_0:
        POP      {R1,PC}          ;; return
//  407 
//  408 /**
//  409   * @brief  RST_CLK_HSIcmd:  HSI (High Speed Internal) clock mode selection
//  410   * @param  NewState: mode selector - DISABLE, ENABLE
//  411   *         @arg DISABLE:   switch off HSI clock generator
//  412   *         @arg ENABLE:    switch on HSI clock generator
//  413   * @retval None
//  414   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  415 void RST_CLK_HSIcmd(FunctionalState NewState)
//  416 {
//  417 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  418   uint32_t temp = 0;
//  419 #endif
//  420   /* Check the parameters */
//  421   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  422 
//  423 #if defined  (USE_MDR1986VE9x)
//  424   *(__IO uint32_t *) HSION_BB = (uint32_t)NewState;
RST_CLK_HSIcmd:
        LDR.N    R1,??DataTable24_1  ;; 0x43b007d8
        STR      R0,[R1, #+0]
//  425 #endif
//  426 
//  427 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  428 
//  429     temp = MDR_BKP->REG_0F;
//  430   /* Form new value */
//  431   if (NewState != DISABLE){
//  432     /* Enable HSI clk by setting the HSE_ON bit in the BKP_REG_0F register */
//  433     temp |= BKP_REG_0F_HSI_ON;
//  434   }
//  435   else{
//  436     /* Disable HSI clk by resetting the HSE_ON bit in the BKP_REG_0F register */
//  437     temp &= ~BKP_REG_0F_HSI_ON;
//  438   }
//  439   /* Configure REG_0F register with new value */
//  440   MDR_BKP->REG_0F = temp;
//  441 #endif /* defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T) */
//  442 }
        BX       LR               ;; return
//  443 
//  444 /**
//  445   * @brief  RST_CLK_HSIadjust: HSI clock frequency adjustment by HSITRIM setting
//  446   * @param  HSItrimValue
//  447   *         This parameter must be a number between 0 and 0x3F.
//  448   * @retval None
//  449   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  450 void RST_CLK_HSIadjust(uint32_t HSItrimValue)
//  451 {
//  452   uint32_t temp;
//  453   /* Check the parameters */
//  454   assert_param(IS_RCC_CLK_HSI_TRIM_VALUE(HSItrimValue));
//  455   temp = MDR_BKP->REG_0F;
RST_CLK_HSIadjust:
        LDR.N    R1,??DataTable24  ;; 0x400d803c
        LDR      R2,[R1, #+0]
//  456   /* Clear HSITRIM[5:0] bits */
//  457   temp &= ~HSITRIM_MASK;
//  458   /* Set the HSITRIM[5:0] bits according to HSItrimValue value */
//  459   temp |= (uint32_t)HSItrimValue << HSITRIM_OFFSET;
//  460   /* Store the new value */
//  461   MDR_BKP->REG_0F = temp;
        BIC      R2,R2,#0x3F000000
        ORR      R0,R2,R0, LSL #+24
        STR      R0,[R1, #+0]
//  462 }
        BX       LR               ;; return
//  463 
//  464 /**
//  465   * @brief  RST_CLK_HSIstatus: HSI clock status
//  466   * @param  None
//  467   * @retval enum ErrorStatus: SUCCESS if HSI clock is ready, else ERROR
//  468   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  469 ErrorStatus RST_CLK_HSIstatus(void)
//  470 {
RST_CLK_HSIstatus:
        PUSH     {R7,LR}
//  471   __IO uint32_t startCounter = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  472   ErrorStatus state;
//  473   FlagStatus flag;
//  474 
//  475   /* Wait until HSI is ready or time out is occure */
//  476   do
//  477   {
//  478     flag = RST_CLK_GetFlagStatus(RST_CLK_FLAG_HSIRDY);
??RST_CLK_HSIstatus_0:
        MOVS     R0,#+23
        BL       RST_CLK_GetFlagStatus
//  479     startCounter++;
        BL       ?Subroutine4
//  480   } while ((startCounter < HSIonTimeOut) && (flag == RESET));
??CrossCallReturnLabel_2:
        BCS.N    ??RST_CLK_HSIstatus_1
        CMP      R0,#+0
        BEQ.N    ??RST_CLK_HSIstatus_0
//  481 
//  482   if (RST_CLK_GetFlagStatus(RST_CLK_FLAG_HSIRDY) != RESET)
??RST_CLK_HSIstatus_1:
        MOVS     R0,#+23
        B.N      ?Subroutine3
//  483   {
//  484     state = SUCCESS;
//  485   }
//  486   else
//  487   {
//  488     state = ERROR;
//  489   }
//  490   return state;
//  491 }
//  492 
//  493 /**
//  494   * @brief  RST_CLK_LSIcmd:  LSI (High Speed Internal) clock mode selection
//  495   * @param  NewState: mode selector - DISABLE, ENABLE
//  496   *         @arg DISABLE:   switch off LSI clock generator
//  497   *         @arg ENABLE:    switch on LSI clock generator
//  498   * @retval None
//  499   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  500 void RST_CLK_LSIcmd(FunctionalState NewState)
//  501 {
//  502 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  503   uint32_t temp = 0;
//  504 #endif
//  505   /* Check the parameters */
//  506   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  507 
//  508 #if defined  (USE_MDR1986VE9x)
//  509   *(__IO uint32_t *) LSION_BB = (uint32_t) NewState;
RST_CLK_LSIcmd:
        LDR.N    R1,??DataTable24_5  ;; 0x43b007bc
        STR      R0,[R1, #+0]
//  510 #endif
//  511 
//  512 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  513 
//  514   temp = MDR_BKP->REG_0F;
//  515   /* Form new value */
//  516   if (NewState != DISABLE) {
//  517     /* Enable LSI clk by setting the LSE_ON bit in the BKP_REG_0F register */
//  518     temp |= BKP_REG_0F_LSI_ON;
//  519   }
//  520   else {
//  521     /* Disable LSI clk by resetting the LSE_ON bit in the BKP_REG_0F register */
//  522     temp &= ~BKP_REG_0F_LSI_ON;
//  523   }
//  524   /* Configure REG_0F register with new value */
//  525   MDR_BKP->REG_0F = temp;
//  526 #endif
//  527 }
        BX       LR               ;; return
//  528 
//  529 /**
//  530   * @brief  RST_CLK_HSIadjust: LSI clock frequency adjustment by LSITRIM setting
//  531   * @param  LSItrimValue
//  532   *         This parameter must be a number between 0 and 0x1F.
//  533   * @retval None
//  534   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  535 void RST_CLK_LSIadjust(uint32_t LSItrimValue)
//  536 {
//  537   uint32_t temp;
//  538   /* Check the parameters */
//  539   assert_param(IS_RCC_CLK_LSI_TRIM_VALUE(LSItrimValue));
//  540   temp = MDR_BKP->REG_0F;
RST_CLK_LSIadjust:
        LDR.N    R1,??DataTable24  ;; 0x400d803c
        LDR      R2,[R1, #+0]
//  541   /* Clear LSITRIM[4:0] bits */
//  542   temp &= ~LSITRIM_MASK;
//  543   /* Set the LSITRIM[4:0] bits according to LSItrimValue value */
//  544   temp |= (uint32_t)LSItrimValue << LSITRIM_OFFSET;
//  545   /* Store the new value */
//  546   MDR_BKP->REG_0F = temp;
        BIC      R2,R2,#0x1F0000
        ORR      R0,R2,R0, LSL #+16
        STR      R0,[R1, #+0]
//  547 }
        BX       LR               ;; return
//  548 
//  549 /**
//  550   * @brief  RST_CLK_LSIstatus - LSI clock status
//  551   * @param  None
//  552   * @retval enum ErrorStatus - SUCCESS if LSI clock is ready, else ERROR
//  553   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  554 ErrorStatus RST_CLK_LSIstatus(void)
//  555 {
RST_CLK_LSIstatus:
        PUSH     {R7,LR}
//  556   __IO uint32_t startCounter = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  557   ErrorStatus state;
//  558   FlagStatus flag;
//  559 
//  560   /* Wait until LSI is ready or time out is occure */
//  561   do
//  562   {
//  563     flag = RST_CLK_GetFlagStatus(RST_CLK_FLAG_LSIRDY);
??RST_CLK_LSIstatus_0:
        MOVS     R0,#+21
        BL       RST_CLK_GetFlagStatus
//  564     startCounter++;
        BL       ?Subroutine4
//  565   } while ((startCounter < LSIonTimeOut) && (flag == RESET));
??CrossCallReturnLabel_3:
        BCS.N    ??RST_CLK_LSIstatus_1
        CMP      R0,#+0
        BEQ.N    ??RST_CLK_LSIstatus_0
//  566 
//  567   if (RST_CLK_GetFlagStatus(RST_CLK_FLAG_LSIRDY) != RESET)
??RST_CLK_LSIstatus_1:
        MOVS     R0,#+21
        B.N      ?Subroutine3
//  568   {
//  569     state = SUCCESS;
//  570   }
//  571   else
//  572   {
//  573     state = ERROR;
//  574   }
//  575   return (state);
//  576 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine4:
        LDR      R1,[SP, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
        CMP      R1,#+1536
        BX       LR
//  577 
//  578 /**
//  579   * @brief  Configures the CPU_PLL clock source and multiplication factor.
//  580   * @param  RST_CLK_CPU_PLLsource: specifies the PLL entry clock source.
//  581   *         @arg RST_CLK_CPU_PLLsrcHSIdiv1: HSI oscillator clock is selected as CPU_PLL clock entry
//  582   *         @arg RST_CLK_CPU_PLLsrcHSIdiv2: HSI oscillator clock divided by 2 is selected as CPU_PLL clock entry
//  583   *         @arg RST_CLK_CPU_PLLsrcHSEdiv1: HSE oscillator clock is selected as CPU_PLL clock entry
//  584   *         @arg RST_CLK_CPU_PLLsrcHSEdiv2: HSE oscillator clock divided by 2 is selected as CPU_PLL clock entry
//  585   * @param  RST_CLK_CPU_PLLmul: specifies the PLL multiplication factor.
//  586   *         This parameter must be a number between 0 and 15.
//  587   *           @arg RST_CLK_CPU_PLLmul1
//  588   *           @arg RST_CLK_CPU_PLLmul2
//  589   *           @arg RST_CLK_CPU_PLLmul3
//  590   *           @arg RST_CLK_CPU_PLLmul4
//  591   *           @arg RST_CLK_CPU_PLLmul5
//  592   *           @arg RST_CLK_CPU_PLLmul6
//  593   *           @arg RST_CLK_CPU_PLLmul7
//  594   *           @arg RST_CLK_CPU_PLLmul8
//  595   *           @arg RST_CLK_CPU_PLLmul9
//  596   *           @arg RST_CLK_CPU_PLLmul10
//  597   *           @arg RST_CLK_CPU_PLLmul11
//  598   *           @arg RST_CLK_CPU_PLLmul12
//  599   *           @arg RST_CLK_CPU_PLLmul13
//  600   *           @arg RST_CLK_CPU_PLLmul14
//  601   *           @arg RST_CLK_CPU_PLLmul15
//  602   *           @arg RST_CLK_CPU_PLLmul16
//  603   * @retval None
//  604   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  605 void RST_CLK_CPU_PLLconfig ( uint32_t RST_CLK_CPU_PLLsource,
//  606                          uint32_t RST_CLK_CPU_PLLmul )
//  607 {
//  608   uint32_t temp;
//  609 
//  610   /* Check the parameters */
//  611   assert_param(IS_RST_CLK_CPU_PLL_SOURCE(RST_CLK_CPU_PLLsource));
//  612   assert_param(IS_RST_CLK_CPU_PLL_MUL(RST_CLK_CPU_PLLmul));
//  613 
//  614   /* Select CPUPLL source */
//  615   temp = MDR_RST_CLK->CPU_CLOCK;
RST_CLK_CPU_PLLconfig:
        LDR.N    R2,??DataTable24_2  ;; 0x40020004
        LDR      R3,[R2, #+8]
//  616   /* Clear CPU_C1_SEL bits */
//  617   temp &= CPU_C1_SELclr;
//  618   /* Set the CPU_C1_SEL bits */
//  619   temp |= RST_CLK_CPU_PLLsource;
//  620   /* Store the new value */MDR_RST_CLK->CPU_CLOCK = temp;
        LSRS     R3,R3,#+2
        ORRS     R0,R0,R3, LSL #+2
        STR      R0,[R2, #+8]
//  621 
//  622   /* Set CPUPLL multiplier */
//  623   temp = MDR_RST_CLK->PLL_CONTROL;
        LDR      R0,[R2, #+0]
//  624   /* Clear PLLMUL[3:0] bits */
//  625   temp &= PLLCPUmulclr;
//  626   /* Set the PLLMUL[3:0] bits */
//  627   temp |= (RST_CLK_CPU_PLLmul << PLLCPUMUL_OFFSET);
//  628   /* Store the new value */MDR_RST_CLK->PLL_CONTROL = temp;
        BIC      R0,R0,#0xF00
        ORR      R0,R0,R1, LSL #+8
        STR      R0,[R2, #+0]
//  629 
//  630 #if defined ( USE_MDR1986VE9x )/* For Cortex M3 */
//  631   if (*(__IO uint32_t *) PLLCPUON_BB) {
        LDR.N    R0,??DataTable24_6  ;; 0x42400088
        B.N      ?Subroutine0
//  632     *(__IO uint32_t *) PLLCPUPLD_BB = (uint32_t) 0x01;
//  633     *(__IO uint32_t *) PLLCPUPLD_BB = (uint32_t) 0x00;
//  634   }
//  635 #elif defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  636   if( (MDR_RST_CLK->PLL_CONTROL & RST_CLK_PLL_CONTROL_PLL_CPU_ON) == RST_CLK_PLL_CONTROL_PLL_CPU_ON ) {
//  637     temp = MDR_RST_CLK->PLL_CONTROL;
//  638     temp |= RST_CLK_PLL_CONTROL_PLL_CPU_PLD;
//  639     MDR_RST_CLK->PLL_CONTROL = temp;
//  640     temp &= ~RST_CLK_PLL_CONTROL_PLL_CPU_PLD;
//  641     MDR_RST_CLK->PLL_CONTROL = temp;
//  642   }
//  643 #endif
//  644 }
//  645 
//  646 /**
//  647   * @brief  Select the CPU_PLL output as input for CPU_C3_SEL or bypass the CPU_PLL.
//  648   * @param  UsePLL: usage state of the CPU_PLL. This parameter can be: ENABLE or DISABLE.
//  649   * @retval None
//  650   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  651 void RST_CLK_CPU_PLLuse(FunctionalState UsePLL)
//  652 {
//  653 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  654   uint32_t temp = 0;
//  655 #endif
//  656   /* Check the parameters */
//  657   assert_param(IS_FUNCTIONAL_STATE(UsePLL));
//  658 
//  659 #if defined  (USE_MDR1986VE9x)
//  660   *(__IO uint32_t *) CPU_C2_SEL_BB = (uint32_t) UsePLL;
RST_CLK_CPU_PLLuse:
        LDR.N    R1,??DataTable24_7  ;; 0x42400188
        STR      R0,[R1, #+0]
//  661 #endif
//  662 
//  663 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  664 
//  665   temp = MDR_RST_CLK->CPU_CLOCK;
//  666   /* Form new value */
//  667   if (UsePLL != DISABLE){
//  668     /* Use the CPU PLL output as input for CPU_C3_SEL
//  669      * by setting the CPU_C2_SEL bit in the CPU_CLOCK register */
//  670     temp |= (1<< RST_CLK_CPU_CLOCK_CPU_C2_SEL_Pos);
//  671   }
//  672   else{
//  673     /* Use the CPU_C1 output as input for CPU_C3_SEL
//  674      * by resetting the CPU_C2_SEL bit in the CPU_CLOCK register */
//  675     temp &= ~(1<< RST_CLK_CPU_CLOCK_CPU_C2_SEL_Pos);
//  676   }
//  677   /* Configure CPU_CLOCK register with new value */
//  678   MDR_RST_CLK->CPU_CLOCK = temp;
//  679 #endif
//  680 }
        BX       LR               ;; return
//  681 
//  682 /**
//  683   * @brief  Enables or disables the CPU_PLL.
//  684   * @param  NewState: new state of the CPU_PLL. This parameter can be: ENABLE or DISABLE.
//  685   * @retval None
//  686   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  687 void RST_CLK_CPU_PLLcmd ( FunctionalState NewState )
//  688 {
//  689 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  690   uint32_t temp;
//  691 #endif
//  692   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  693 
//  694 #if defined  (USE_MDR1986VE9x)
//  695   *(__IO uint32_t *) PLLCPUON_BB = (uint32_t) NewState;
RST_CLK_CPU_PLLcmd:
        LDR.N    R1,??DataTable24_6  ;; 0x42400088
        STR      R0,[R1, #+0]
//  696 #endif
//  697 
//  698 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  699   temp = MDR_RST_CLK->PLL_CONTROL;
//  700 
//  701   if(NewState == ENABLE){
//  702     temp |= RST_CLK_PLL_CONTROL_PLL_CPU_ON;
//  703   }
//  704   else{
//  705     temp &= ~RST_CLK_PLL_CONTROL_PLL_CPU_ON;
//  706   }
//  707   MDR_RST_CLK->PLL_CONTROL = temp;
//  708 
//  709 #endif
//  710 }
        BX       LR               ;; return
//  711 
//  712 /**
//  713   * @brief  RST_CLK_CPU_PLLstatus: CPU_PLL status
//  714   * @param  None
//  715   * @retval enum ErrorStatus: SUCCESS if CPU_PLL output clock is ready, else ERROR
//  716   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  717 ErrorStatus RST_CLK_CPU_PLLstatus(void)
//  718 {
RST_CLK_CPU_PLLstatus:
        PUSH     {R7,LR}
//  719   __IO uint32_t startCounter = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  720   ErrorStatus state;
//  721   FlagStatus flag;
//  722 
//  723   /* Wait until CPUPLL is ready or time out is occure */
//  724   do
//  725   {
//  726     flag = RST_CLK_GetFlagStatus(RST_CLK_FLAG_PLLCPURDY);
??RST_CLK_CPU_PLLstatus_0:
        MOVS     R0,#+33
        BL       RST_CLK_GetFlagStatus
//  727     startCounter++;
        BL       ?Subroutine4
//  728   } while ((startCounter < PLLCPUonTimeOut) && (flag == RESET));
??CrossCallReturnLabel_4:
        BCS.N    ??RST_CLK_CPU_PLLstatus_1
        CMP      R0,#+0
        BEQ.N    ??RST_CLK_CPU_PLLstatus_0
//  729 
//  730   if (RST_CLK_GetFlagStatus(RST_CLK_FLAG_PLLCPURDY) != RESET)
??RST_CLK_CPU_PLLstatus_1:
        MOVS     R0,#+33
        B.N      ?Subroutine3
//  731   {
//  732     state = SUCCESS;
//  733   }
//  734   else
//  735   {
//  736     state = ERROR;
//  737   }
//  738   return state;
//  739 }
//  740 
//  741 /**
//  742   * @brief  RST_CLK_CPUclkPrescaler: configures the CPU_C3_SEL division factor switch.
//  743   * @param  CPUclkDivValue: specifies the CPU_PLL clock division factor.
//  744   *         @arg RST_CLK_CPUclkDIV1
//  745   *         @arg RST_CLK_CPUclkDIV2
//  746   *         @arg RST_CLK_CPUclkDIV4
//  747   *         @arg RST_CLK_CPUclkDIV8
//  748   *         @arg RST_CLK_CPUclkDIV16
//  749   *         @arg RST_CLK_CPUclkDIV32
//  750   *         @arg RST_CLK_CPUclkDIV64
//  751   *         @arg RST_CLK_CPUclkDIV128
//  752   *         @arg RST_CLK_CPUclkDIV256
//  753   * @retval None
//  754   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  755 void RST_CLK_CPUclkPrescaler(uint32_t CPUclkDivValue)
//  756 {
//  757   uint32_t temp;
//  758 
//  759   /* Check the parameters */
//  760   assert_param(IS_RST_CLK_CPUclkDIV(CPUclkDivValue));
//  761 
//  762   temp = MDR_RST_CLK->CPU_CLOCK;
RST_CLK_CPUclkPrescaler:
        LDR.N    R1,??DataTable24_8  ;; 0x4002000c
        B.N      ?Subroutine1
//  763   /* Clear CPU_C3_SEL bits */
//  764   temp &= CPU_C3_SELclr;
//  765   /* Set the CPU_C3_SEL bits */
//  766   temp |= (CPUclkDivValue << RST_CLK_CPU_CLOCK_CPU_C3_SEL_Pos);
//  767   /* Store the new value */
//  768   MDR_RST_CLK->CPU_CLOCK = temp;
//  769 }
//  770 
//  771 /**
//  772   * @brief  RST_CLK_CPUclkSelection: select the CPU clock source.
//  773   * @param  CPU_CLK: specifies the CPU clock source.
//  774   *         @arg RST_CLK_CPUclkHSI
//  775   *         @arg RST_CLK_CPUclkCPU_C3
//  776   *         @arg RST_CLK_CPUclkLSE
//  777   *         @arg RST_CLK_CPUclkLSI
//  778   * @retval None
//  779   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  780 void RST_CLK_CPUclkSelection(uint32_t CPU_CLK)
//  781 {
//  782   uint32_t temp;
//  783 
//  784   /* Check the parameters */
//  785   assert_param(IS_RST_CPU_CLK(CPU_CLK));
//  786 
//  787   temp = MDR_RST_CLK->CPU_CLOCK;
RST_CLK_CPUclkSelection:
        LDR.N    R1,??DataTable24_8  ;; 0x4002000c
        LDR      R2,[R1, #+0]
//  788   /* Clear CPU_C3_SEL bits */
//  789   temp &= CPU_HCLK_SELclr;
//  790   /* Set the CPU_C3_SEL bits */
//  791   temp |= CPU_CLK;
//  792   /* Store the new value */
//  793   MDR_RST_CLK->CPU_CLOCK = temp;
        BIC      R2,R2,#0x300
        B.N      ?Subroutine2
//  794 }
//  795 
//  796 /**
//  797   * @brief  Configures the USB_PLL clock source and multiplication factor.
//  798   * @param  RST_CLK_USB_PLLsource: specifies the PLL entry clock source.
//  799   *         @arg RST_CLK_USB_PLLsrcHSIdiv1: HSI oscillator clock is selected as USB_PLL clock entry
//  800   *         @arg RST_CLK_USB_PLLsrcHSIdiv2: HSI oscillator clock divided by 2 is selected as USB_PLL clock entry
//  801   *         @arg RST_CLK_USB_PLLsrcHSEdiv1: HSE oscillator clock is selected as USB_PLL clock entry
//  802   *         @arg RST_CLK_USB_PLLsrcHSEdiv2: HSE oscillator clock divided by 2 is selected as USB_PLL clock entry
//  803   * @param  RST_CLK_USB_PLLmul: specifies the PLL multiplication factor.
//  804   *         This parameter must be a number between 0 and 15.
//  805   *           @arg RST_CLK_USB_PLLmul1
//  806   *           @arg RST_CLK_USB_PLLmul2
//  807   *           @arg RST_CLK_USB_PLLmul3
//  808   *           @arg RST_CLK_USB_PLLmul4
//  809   *           @arg RST_CLK_USB_PLLmul5
//  810   *           @arg RST_CLK_USB_PLLmul6
//  811   *           @arg RST_CLK_USB_PLLmul7
//  812   *           @arg RST_CLK_USB_PLLmul8
//  813   *           @arg RST_CLK_USB_PLLmul9
//  814   *           @arg RST_CLK_USB_PLLmul10
//  815   *           @arg RST_CLK_USB_PLLmul11
//  816   *           @arg RST_CLK_USB_PLLmul12
//  817   *           @arg RST_CLK_USB_PLLmul13
//  818   *           @arg RST_CLK_USB_PLLmul14
//  819   *           @arg RST_CLK_USB_PLLmul15
//  820   *           @arg RST_CLK_USB_PLLmul16
//  821   * @retval None
//  822   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  823 void RST_CLK_USB_PLLconfig ( uint32_t RST_CLK_USB_PLLsource,
//  824                          uint32_t RST_CLK_USB_PLLmul )
//  825 {
//  826   uint32_t temp;
//  827 
//  828   /* Check the parameters */
//  829   assert_param(IS_RST_CLK_USB_PLL_SOURCE(RST_CLK_USB_PLLsource));
//  830   assert_param(IS_RST_CLK_USB_PLL_MUL(RST_CLK_USB_PLLmul));
//  831 
//  832   /* Select USBPLL source */
//  833   temp = MDR_RST_CLK->USB_CLOCK;
RST_CLK_USB_PLLconfig:
        LDR.N    R2,??DataTable24_2  ;; 0x40020004
        LDR      R3,[R2, #+12]
//  834   /* Clear USB_C1_SEL bits */
//  835   temp &= USB_C1_SELclr;
//  836   /* Set the USB_C1_SEL bits */
//  837   temp |= RST_CLK_USB_PLLsource;
//  838   /* Store the new value */MDR_RST_CLK->USB_CLOCK = temp;
        LSRS     R3,R3,#+2
        ORRS     R0,R0,R3, LSL #+2
        STR      R0,[R2, #+12]
//  839 
//  840   /* Set USBPLL multiplier */
//  841   temp = MDR_RST_CLK->PLL_CONTROL;
        LDR      R0,[R2, #+0]
//  842   /* Clear PLLMUL[3:0] bits */
//  843   temp &= PLLUSBmulclr;
//  844   /* Set the PLLMUL[3:0] bits */
//  845   temp |= (RST_CLK_USB_PLLmul << PLLUSBMUL_OFFSET);
//  846   /* Store the new value */MDR_RST_CLK->PLL_CONTROL = temp;
        BIC      R0,R0,#0xF0
        ORR      R0,R0,R1, LSL #+4
        STR      R0,[R2, #+0]
//  847 
//  848 #if defined  (USE_MDR1986VE9x)
//  849   if (*(__IO uint32_t *) PLLUSBON_BB) {
        LDR.N    R0,??DataTable24_9  ;; 0x42400080
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  850     *(__IO uint32_t *) PLLUSBRLD_BB = (uint32_t) 0x01;
//  851     *(__IO uint32_t *) PLLUSBRLD_BB = (uint32_t) 0x00;
//  852   }
//  853 #endif
//  854 
//  855 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  856   if( MDR_RST_CLK->PLL_CONTROL & (RST_CLK_PLL_CONTROL_PLL_USB_ON) ) {
//  857     temp = MDR_RST_CLK->PLL_CONTROL;
//  858     temp |= RST_CLK_PLL_CONTROL_PLL_USB_RLD;
//  859     MDR_RST_CLK->PLL_CONTROL = temp;
//  860     temp &= ~RST_CLK_PLL_CONTROL_PLL_USB_RLD;
//  861     MDR_RST_CLK->PLL_CONTROL = temp;
//  862   }
//  863 #endif
//  864 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        LDR      R1,[R0, #+0]
        CBZ.N    R1,??Subroutine0_0
        MOVS     R1,#+1
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
??Subroutine0_0:
        BX       LR               ;; return
//  865 
//  866 /**
//  867   * @brief  Select the USBPLL output as input for USB_C3_SEL or bypass the USB_PLL.
//  868   * @param  UsePLL: usage state of the USB_PLL. This parameter can be: ENABLE or DISABLE.
//  869   * @retval None
//  870   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  871 void RST_CLK_USB_PLLuse ( FunctionalState UsePLL )
//  872 {
//  873 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  874   uint32_t temp = 0;
//  875 #endif
//  876   /* Check the parameters */
//  877   assert_param(IS_FUNCTIONAL_STATE(UsePLL));
//  878 
//  879 #ifdef USE_MDR1986VE9x /* for Cortex M3 series */
//  880   *(__IO uint32_t *) USB_C2_SEL_BB = (uint32_t) UsePLL;
RST_CLK_USB_PLLuse:
        LDR.N    R1,??DataTable24_10  ;; 0x42400208
        STR      R0,[R1, #+0]
//  881 #endif // #ifdef USE_MDR1986VE9x /* for Cortex M3 series */
//  882 
//  883 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  884 
//  885   temp = MDR_RST_CLK->USB_CLOCK;
//  886   /* Form new value */
//  887   if (UsePLL != DISABLE){
//  888     /* Use the USB PLL output as input for USB_C3_SEL
//  889      * by setting the USB_C2_SEL bit in the USB_CLOCK register */
//  890     temp |= (1<< RST_CLK_USB_CLOCK_USB_C2_SEL_Pos);
//  891   }
//  892   else{
//  893     /* Use the USB_C1 output as input for USB_C3_SEL
//  894      * by resetting the USB_C2_SEL bit in the USB_CLOCK register */
//  895     temp &= ~(1<< RST_CLK_USB_CLOCK_USB_C2_SEL_Pos);
//  896   }
//  897   /* Configure USB_CLOCK register with new value */
//  898   MDR_RST_CLK->USB_CLOCK = temp;
//  899 #endif
//  900 }
        BX       LR               ;; return
//  901 
//  902 /**
//  903   * @brief  Enables or disables the USB_PLL.
//  904   * @param  NewState: new state of the USB_PLL. This parameter can be: ENABLE or DISABLE.
//  905   * @retval None
//  906   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  907 void RST_CLK_USB_PLLcmd ( FunctionalState NewState )
//  908 {
//  909 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  910   uint32_t temp = 0;
//  911 #endif
//  912   /* Check the parameters */
//  913   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  914 #if defined  (USE_MDR1986VE9x)
//  915   *(__IO uint32_t *) PLLUSBON_BB = (uint32_t) NewState;
RST_CLK_USB_PLLcmd:
        LDR.N    R1,??DataTable24_9  ;; 0x42400080
        STR      R0,[R1, #+0]
//  916 #endif
//  917 
//  918 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  919 
//  920   temp = MDR_RST_CLK->PLL_CONTROL;
//  921   /* Form a new value */
//  922   if( NewState != DISABLE ) {
//  923     temp |= RST_CLK_PLL_CONTROL_PLL_USB_ON;
//  924   }
//  925   else {
//  926     temp &= ~RST_CLK_PLL_CONTROL_PLL_USB_ON;
//  927   }
//  928   MDR_RST_CLK->PLL_CONTROL = temp;
//  929 #endif
//  930 
//  931 }
        BX       LR               ;; return
//  932 
//  933 /**
//  934   * @brief  RST_CLK_USB_PLLstatus: USB_PLL status
//  935   * @param  None
//  936   * @retval enum ErrorStatus: SUCCESS if USB_PLL output clock is ready, else ERROR
//  937   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  938 ErrorStatus RST_CLK_USB_PLLstatus(void)
//  939 {
RST_CLK_USB_PLLstatus:
        PUSH     {R7,LR}
//  940   __IO uint32_t startCounter = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  941   ErrorStatus state;
//  942   FlagStatus flag;
//  943 
//  944   /* Wait until USBPLL is ready or time out is occure */
//  945   do
//  946   {
//  947     flag = RST_CLK_GetFlagStatus(RST_CLK_FLAG_PLLUSBRDY);
??RST_CLK_USB_PLLstatus_0:
        MOVS     R0,#+32
        BL       RST_CLK_GetFlagStatus
//  948     startCounter++;
        BL       ?Subroutine4
//  949   } while ((startCounter < PLLUSBonTimeOut) && (flag == RESET));
??CrossCallReturnLabel_5:
        BCS.N    ??RST_CLK_USB_PLLstatus_1
        CMP      R0,#+0
        BEQ.N    ??RST_CLK_USB_PLLstatus_0
//  950 
//  951   if (RST_CLK_GetFlagStatus(RST_CLK_FLAG_PLLUSBRDY) != RESET)
??RST_CLK_USB_PLLstatus_1:
        MOVS     R0,#+32
        B.N      ?Subroutine3
//  952   {
//  953     state = SUCCESS;
//  954   }
//  955   else
//  956   {
//  957     state = ERROR;
//  958   }
//  959   return state;
//  960 }
//  961 
//  962 /**
//  963   * @brief  Enables or disables the USB_CLK prescaler.
//  964   * @param  NewState: new state of the USB_CLK prescaler.
//  965   *         @arg ENABLE: USB_C2 divided by 2
//  966   *         @arg DISABLE: USB_C2 not divided
//  967   * @retval None
//  968   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  969 void RST_CLK_USBclkPrescaler(FunctionalState NewState)
//  970 {
//  971 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  972   uint32_t temp = 0;
//  973 #endif
//  974   /* Check the parameters */
//  975   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  976 
//  977 #if defined  (USE_MDR1986VE9x)
//  978    *(__IO uint32_t *) USB_C3_SEL_BB = (uint32_t)NewState;
RST_CLK_USBclkPrescaler:
        LDR.N    R1,??DataTable24_11  ;; 0x42400210
        STR      R0,[R1, #+0]
//  979 #endif
//  980 
//  981 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  982 
//  983   temp = MDR_RST_CLK->USB_CLOCK;
//  984 
//  985   /* Form new value */
//  986   if (NewState != DISABLE){
//  987     /* Enable the USB prescaler by setting the USB_C3_SEL bit in the USB_CLOCK register */
//  988     temp |= (1<< RST_CLK_USB_CLOCK_USB_C3_SEL_Pos);
//  989   }
//  990   else{
//  991     /* Disable the USB prescaler by resetting the USB_C3_SEL bit in the USB_CLOCK register */
//  992     temp &= ~(1<< RST_CLK_USB_CLOCK_USB_C3_SEL_Pos);
//  993   }
//  994   /* Configure USB_CLOCK register with new value */
//  995   MDR_RST_CLK->USB_CLOCK = temp;
//  996 #endif
//  997 
//  998 }
        BX       LR               ;; return
//  999 
// 1000 /**
// 1001   * @brief  Enables or disables the USB_CLK clock.
// 1002   * @param  NewState: new state of the USB_CLK.
// 1003   *         @arg ENABLE
// 1004   *         @arg DISABLE
// 1005   * @retval None
// 1006   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1007 void RST_CLK_USBclkEnable ( FunctionalState NewState )
// 1008 {
// 1009 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
// 1010   uint32_t temp = 0;
// 1011 #endif
// 1012   /* Check the parameters */
// 1013   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1014 
// 1015 #if defined  (USE_MDR1986VE9x)
// 1016   *(__IO uint32_t *) USB_CLK_EN_BB = (uint32_t) NewState;
RST_CLK_USBclkEnable:
        LDR.N    R1,??DataTable24_12  ;; 0x42400220
        STR      R0,[R1, #+0]
// 1017 #endif
// 1018 
// 1019 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
// 1020 
// 1021   temp = MDR_RST_CLK->USB_CLOCK;
// 1022 
// 1023   /* Form new value */
// 1024   if (NewState != DISABLE){
// 1025     /* Enable the USB clk by setting the USB_CLK_EN bit in the USB_CLOCK register */
// 1026     temp |= (1<< RST_CLK_USB_CLOCK_USB_CLK_EN_Pos);
// 1027   }
// 1028   else{
// 1029     /* Disable the USB clk by resetting the USB_CLK_EN bit in the USB_CLOCK register */
// 1030     temp &= ~(1<< RST_CLK_USB_CLOCK_USB_CLK_EN_Pos);
// 1031   }
// 1032   /* Configure USB_CLOCK register with new value */
// 1033   MDR_RST_CLK->USB_CLOCK = temp;
// 1034 #endif
// 1035 }
        BX       LR               ;; return
// 1036 
// 1037 /**
// 1038   * @brief  RST_CLK_ADCclkSelection: select the ADC clock source.
// 1039   * @param  ADC_CLK: specifies the ADC_C2 clock source.
// 1040   *         @arg  RST_CLK_ADCclkCPU_C1
// 1041   *         @arg  RST_CLK_ADCclkUSB_C1
// 1042   *         @arg  RST_CLK_ADCclkCPU_C2
// 1043   *         @arg  RST_CLK_ADCclkUSB_C2
// 1044   *         @arg  RST_CLK_ADCclkLSE
// 1045   *         @arg  RST_CLK_ADCclkLSI
// 1046   *         @arg  RST_CLK_ADCclkHSI_C1
// 1047   * @retval None
// 1048   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1049 void RST_CLK_ADCclkSelection(uint32_t ADC_CLK)
// 1050 {
// 1051   uint32_t temp;
// 1052 
// 1053   /* Check the parameters */
// 1054   assert_param(IS_RST_CLK_ADCclk(ADC_CLK));
// 1055 
// 1056   /* Select ADC_CLK source */
// 1057   temp = MDR_RST_CLK->ADC_MCO_CLOCK;
RST_CLK_ADCclkSelection:
        LDR.N    R1,??DataTable24_13  ;; 0x40020014
        LDR      R2,[R1, #+0]
// 1058   /* Clear ADC_C1,C2 SEL bits */
// 1059   temp &= ADC_C12_SELclr;
// 1060   /* Set the ADC_C1,C2 SEL bits */
// 1061   temp |= ADC_CLK;
// 1062   /* Store the new value */
// 1063   MDR_RST_CLK->ADC_MCO_CLOCK = temp;
        BIC      R2,R2,#0x33
        REQUIRE ?Subroutine2
        ;; // Fall through to label ?Subroutine2
// 1064 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        ORRS     R0,R0,R2
        STR      R0,[R1, #+0]
        BX       LR               ;; return
// 1065 
// 1066 /**
// 1067   * @brief  RST_CLK_ADCclkPrescaler: configures the ADC_C3_SEL division factor switch.
// 1068   * @param  ADCclkDivValue: specifies the ADC_C2 clock division factor.
// 1069   *         This parameter must be a number between 0 and 15.
// 1070   *           @arg RST_CLK_ADCclkDIV1
// 1071   *           @arg RST_CLK_ADCclkDIV2
// 1072   *           @arg RST_CLK_ADCclkDIV4
// 1073   *           @arg RST_CLK_ADCclkDIV8
// 1074   *           @arg RST_CLK_ADCclkDIV16
// 1075   *           @arg RST_CLK_ADCclkDIV32
// 1076   *           @arg RST_CLK_ADCclkDIV64
// 1077   *           @arg RST_CLK_ADCclkDIV128
// 1078   *           @arg RST_CLK_ADCclkDIV256
// 1079   * @retval None
// 1080   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1081 void RST_CLK_ADCclkPrescaler(uint32_t ADCclkDivValue)
// 1082 {
// 1083   uint32_t temp;
// 1084 
// 1085   /* Check the parameters */
// 1086   assert_param(IS_RST_CLK_ADCclkDivValue(ADCclkDivValue));
// 1087 
// 1088   temp = MDR_RST_CLK->ADC_MCO_CLOCK;
RST_CLK_ADCclkPrescaler:
        LDR.N    R1,??DataTable24_13  ;; 0x40020014
        LDR      R2,[R1, #+0]
// 1089   /* Clear ADC_C3_SEL bits */
// 1090   temp &= ADC_C3_SELclr;
// 1091   /* Set the ADC_C3_SEL bits */
// 1092   temp |= ADCclkDivValue<<ADC_C3_SEL_OFFSET;
// 1093   /* Store the new value */
// 1094   MDR_RST_CLK->ADC_MCO_CLOCK = temp;
        BIC      R2,R2,#0xF00
        ORR      R0,R2,R0, LSL #+8
        STR      R0,[R1, #+0]
// 1095 }
        BX       LR               ;; return
// 1096 
// 1097 /**
// 1098   * @brief  Enables or disables the ADC_CLK clock.
// 1099   * @param  NewState: new state of the ADC_CLK.
// 1100   *         @arg ENABLE
// 1101   *         @arg DISABLE
// 1102   * @retval None
// 1103   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1104 void RST_CLK_ADCclkEnable ( FunctionalState NewState )
// 1105 {
// 1106 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
// 1107   uint32_t temp = 0;
// 1108 #endif
// 1109   /* Check the parameters */
// 1110   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1111 
// 1112 #if defined  (USE_MDR1986VE9x)
// 1113   *(__IO uint32_t *) ADC_CLK_EN_BB = (uint32_t) NewState;
RST_CLK_ADCclkEnable:
        LDR.N    R1,??DataTable24_14  ;; 0x424002b4
        STR      R0,[R1, #+0]
// 1114 #endif
// 1115 
// 1116 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
// 1117 
// 1118   temp = MDR_RST_CLK->ADC_MCO_CLOCK;
// 1119   /* Form new value */
// 1120   if (NewState != DISABLE){
// 1121     /* Enable the ADC CLK by setting the ADC_CLK_EN bit in the ADC_MCO_CLOCK register */
// 1122     temp |= RST_CLK_ADC_MCO_CLOCK_ADC_CLK_EN;
// 1123   }
// 1124   else{
// 1125     /* Disable the ADC CLK by resetting the ADC_CLK_EN bit in the ADC_MCO_CLOCK register */
// 1126     temp &= ~RST_CLK_ADC_MCO_CLOCK_ADC_CLK_EN;
// 1127   }
// 1128   /* Configure CPU_CLOCK register with new value */
// 1129   MDR_RST_CLK->ADC_MCO_CLOCK = temp;
// 1130 #endif
// 1131 
// 1132 }
        BX       LR               ;; return
// 1133 
// 1134 #if defined ( USE_MDR1986VE3 )
// 1135 
// 1136 /**
// 1137   * @brief  Set the RST_CLK_AUC clock configuration to the default reset state.
// 1138   * @param  None.
// 1139   * @retval None.
// 1140   */
// 1141 void RST_CLK_AUCclkDeInit(void)
// 1142 {
// 1143 
// 1144   MDR_RST_CLK->ADC_MCO_CLOCK &= ~(RST_CLK_ADC_MCO_CLOCK_AUC_C1_SEL_Msk |
// 1145                               RST_CLK_ADC_MCO_CLOCK_AUC_C2_SEL_Msk |
// 1146                               RST_CLK_ADC_MCO_CLOCK_AUC_C3_SEL_Msk |
// 1147                               RST_CLK_ADC_MCO_CLOCK_AUC_CLK_EN);
// 1148 
// 1149 }
// 1150 /**
// 1151   * @brief  RST_CLK_AUCclkSelection: select the AUC clock source.
// 1152   * @warning This function can be used only for microcontroller MDR1986VE3.
// 1153   * @param  AUC_CLK_C1: specifies the AUC_C1 clock source.
// 1154   *         @arg  RST_CLK_AUCclkHSI_C1
// 1155   *         @arg  RST_CLK_AUCclkHSI_2_C1
// 1156   *         @arg  RST_CLK_AUCclkHSE_C1
// 1157   *         @arg  RST_CLK_AUCclkHSE_2_C1
// 1158   *         @arg  RST_CLK_AUCclkPLLCPU
// 1159   *         @arg  RST_CLK_AUCclkPLLUSB
// 1160   * @retval None
// 1161   */
// 1162 void RST_CLK_AUCclkSelection(uint32_t AUC_CLK)
// 1163 {
// 1164   uint32_t temp = 0;
// 1165 
// 1166   /* Check the parameters */
// 1167   assert_param(IS_RST_CLK_AUCclk(AUC_CLK));
// 1168 
// 1169   /* Select ADC_CLK source */
// 1170   temp = MDR_RST_CLK->ADC_MCO_CLOCK;
// 1171   /* Clear AUC_C1,C2 SEL bits */
// 1172   temp &= AUC_C12_SELclr;
// 1173   /* Set the ADC_C1,C2 SEL bits */
// 1174   temp |= AUC_CLK;
// 1175   /* Store the new value */
// 1176   MDR_RST_CLK->ADC_MCO_CLOCK = temp;
// 1177 }
// 1178 
// 1179 /**
// 1180  * @brief RST_CLK_AUCclkPrescaler: configures the AUC_C3_SEL division factor switch.
// 1181  * @param AUCclkDIVValue: specifies the AUC_VIV clock division factor.
// 1182  *    @arg RST_CLK_AUCclkDIV1
// 1183  *    @arg RST_CLK_AUCclkDIV2
// 1184  *    @arg RST_CLK_AUCclkDIV4
// 1185  *    @arg RST_CLK_AUCclkDIV8
// 1186  *    @arg RST_CLK_AUCclkDIV16
// 1187  *    @arg RST_CLK_AUCclkDIV32
// 1188  *    @arg RST_CLK_AUCclkDIV64
// 1189  *    @arg RST_CLK_AUCclkDIV128
// 1190  *    @arg RST_CLK_AUCclkDIV256
// 1191  * @retval None
// 1192  */
// 1193 void RST_CLK_AUCclkPrescaler(uint32_t AUCclkDIVValue)
// 1194 {
// 1195   uint32_t temp = 0;
// 1196 
// 1197   /* Check the parameters */
// 1198   assert_param(IS_RST_CLK_AUCclkDIV(AUCclkDIVValue));
// 1199 
// 1200   temp = MDR_RST_CLK->ADC_MCO_CLOCK;
// 1201   /* Clear CPU_C3_SEL bits */
// 1202   temp &= AUC_C3_SELclr;
// 1203   /* Set the CPU_C3_SEL bits */
// 1204   temp |= AUCclkDIVValue;
// 1205   /* Store the new value */
// 1206   MDR_RST_CLK->ADC_MCO_CLOCK = temp;
// 1207 }
// 1208 
// 1209 /**
// 1210  * @brief  Enables or disables the AUC clk.
// 1211  * @param  NewState: new state of the AUC clk.
// 1212  *         This parameter can be: ENABLE or DISABLE.
// 1213  * @retval None
// 1214  */
// 1215 void RST_CLK_AUCclkCMD(FunctionalState NewState)
// 1216 {
// 1217   uint32_t temp = 0;
// 1218 
// 1219   /* Check the parameters */
// 1220   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1221 
// 1222   temp = MDR_RST_CLK->ADC_MCO_CLOCK;
// 1223 
// 1224   /* Form new value */
// 1225   if (NewState != DISABLE){
// 1226     /* Enable AUC clk by setting the AUC_CLK_EN bit in the ADC_MCO_CLOCK register */
// 1227     temp |= RST_CLK_ADC_MCO_CLOCK_AUC_CLK_EN;
// 1228   }
// 1229   else{
// 1230     /* Disable AUC clk by resetting the AUC_CLK_EN bit in the ADC_MCO_CLOCK register */
// 1231     temp &= ~RST_CLK_ADC_MCO_CLOCK_AUC_CLK_EN;
// 1232   }
// 1233   /* Configure ADC_MCO_CLOCK register with new value */
// 1234   MDR_RST_CLK->ADC_MCO_CLOCK = temp;
// 1235 }
// 1236 #endif
// 1237 
// 1238 /**
// 1239   * @brief  RST_CLK_HSIclkPrescaler: configures the HSI_C1_SEL division factor switch.
// 1240   * @param  HSIclkDivValue: specifies the HSI clock division factor.
// 1241   *         This parameter must be a number between 0 and 15.
// 1242   *           @arg RST_CLK_HSIclkDIV1
// 1243   *           @arg RST_CLK_HSIclkDIV2
// 1244   *           @arg RST_CLK_HSIclkDIV4
// 1245   *           @arg RST_CLK_HSIclkDIV8
// 1246   *           @arg RST_CLK_HSIclkDIV16
// 1247   *           @arg RST_CLK_HSIclkDIV32
// 1248   *           @arg RST_CLK_HSIclkDIV64
// 1249   *           @arg RST_CLK_HSIclkDIV128
// 1250   *           @arg RST_CLK_HSIclkDIV256
// 1251   * @retval None
// 1252   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1253 void RST_CLK_HSIclkPrescaler(uint32_t HSIclkDivValue)
// 1254 {
// 1255   uint32_t temp;
// 1256 
// 1257   /* Check the parameters */
// 1258   assert_param(IS_RST_CLK_HSIclkDivValue(HSIclkDivValue));
// 1259 
// 1260   temp = MDR_RST_CLK->RTC_CLOCK;
RST_CLK_HSIclkPrescaler:
        LDR.N    R1,??DataTable24_15  ;; 0x40020018
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
// 1261   /* Clear HSI_SEL bits */
// 1262   temp &= HSI_SELclr;
// 1263   /* Set the HSI_SEL bits */
// 1264   temp |= HSIclkDivValue<<HSI_SEL_OFFSET;
// 1265   /* Store the new value */
// 1266   MDR_RST_CLK->RTC_CLOCK = temp;
// 1267 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        LDR      R2,[R1, #+0]
        BIC      R2,R2,#0xF0
        ORR      R0,R2,R0, LSL #+4
        STR      R0,[R1, #+0]
        BX       LR               ;; return
// 1268 
// 1269 /**
// 1270   * @brief  RST_CLK_RTC_HSIclkEnable: enables or disables the RTCHSI clock.
// 1271   * @param  NewState: new state of the HSI_RTC_EN.
// 1272   *         @arg ENABLE
// 1273   *         @arg DISABLE
// 1274   * @retval None
// 1275   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1276 void RST_CLK_RTC_HSIclkEnable ( FunctionalState NewState )
// 1277 {
// 1278 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
// 1279   uint32_t temp = 0;
// 1280 #endif
// 1281   /* Check the parameters */
// 1282   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1283 
// 1284 #if defined  (USE_MDR1986VE9x)
// 1285   *(__IO uint32_t *) HSI_RTC_EN_BB = (uint32_t) NewState;
RST_CLK_RTC_HSIclkEnable:
        LDR.N    R1,??DataTable24_16  ;; 0x42400324
        STR      R0,[R1, #+0]
// 1286 #endif
// 1287 
// 1288 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
// 1289 
// 1290     temp = MDR_RST_CLK->RTC_CLOCK;
// 1291   /* Form new value */
// 1292   if (NewState != DISABLE){
// 1293     /* Enable HSI RTC clk by setting the HSE_RTC_EN bit in the RTC_CLOCK register */
// 1294     temp |= RST_CLK_RTC_CLOCK_HSI_RTC_EN;
// 1295   }
// 1296   else{
// 1297     /* Disable HSI RTC clk by resetting the HSE_RTC_EN bit in the RTC_CLOCK register */
// 1298     temp &= ~RST_CLK_RTC_CLOCK_HSI_RTC_EN;
// 1299   }
// 1300   /* Configure RTC_CLOCK register with new value */
// 1301   MDR_RST_CLK->RTC_CLOCK = temp;
// 1302 
// 1303 #endif
// 1304 }
        BX       LR               ;; return
// 1305 
// 1306 /**
// 1307   * @brief  RST_CLK_HSEclkPrescaler: configures the HSE_C1_SEL division factor switch.
// 1308   * @param  HSEclkDivValue: specifies the HSE clock division factor.
// 1309   *         This parameter must be a number between 0 and 15.
// 1310   *           @arg RST_CLK_HSEclkDIV1
// 1311   *           @arg RST_CLK_HSEclkDIV2
// 1312   *           @arg RST_CLK_HSEclkDIV4
// 1313   *           @arg RST_CLK_HSEclkDIV8
// 1314   *           @arg RST_CLK_HSEclkDIV16
// 1315   *           @arg RST_CLK_HSEclkDIV32
// 1316   *           @arg RST_CLK_HSEclkDIV64
// 1317   *           @arg RST_CLK_HSEclkDIV128
// 1318   *           @arg RST_CLK_HSEclkDIV256
// 1319   * @retval None
// 1320   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1321 void RST_CLK_HSEclkPrescaler(uint32_t HSEclkDivValue)
// 1322 {
// 1323   uint32_t temp;
// 1324 
// 1325   /* Check the parameters */
// 1326   assert_param(IS_RST_CLK_HSEclkDivValue(HSEclkDivValue));
// 1327 
// 1328   temp = MDR_RST_CLK->RTC_CLOCK;
RST_CLK_HSEclkPrescaler:
        LDR.N    R1,??DataTable24_15  ;; 0x40020018
        LDR      R2,[R1, #+0]
// 1329   /* Clear HSE_SEL bits */
// 1330   temp &= HSE_SELclr;
// 1331   /* Set the HSE_SEL bits */
// 1332   temp |= HSEclkDivValue<<HSE_SEL_OFFSET;
// 1333   /* Store the new value */
// 1334   MDR_RST_CLK->RTC_CLOCK = temp;
        LSRS     R2,R2,#+4
        ORRS     R0,R0,R2, LSL #+4
        STR      R0,[R1, #+0]
// 1335 }
        BX       LR               ;; return
// 1336 
// 1337 /**
// 1338   * @brief  RST_CLK_RTC_HSEclkEnable: enables or disables the RTCHSE clock.
// 1339   * @param  NewState: new state of the HSE_RTC_EN.
// 1340   *         @arg ENABLE
// 1341   *         @arg DISABLE
// 1342   * @retval None
// 1343   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1344 void RST_CLK_RTC_HSEclkEnable(FunctionalState NewState)
// 1345 {
// 1346 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
// 1347   uint32_t temp = 0;
// 1348 #endif
// 1349   /* Check the parameters */
// 1350   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1351 
// 1352 #if defined  (USE_MDR1986VE9x)
// 1353   *(__IO uint32_t *) HSE_RTC_EN_BB = (uint32_t)NewState;
RST_CLK_RTC_HSEclkEnable:
        LDR.N    R1,??DataTable24_17  ;; 0x42400320
        STR      R0,[R1, #+0]
// 1354 #endif
// 1355 
// 1356 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
// 1357 
// 1358     temp = MDR_RST_CLK->RTC_CLOCK;
// 1359   /* Form new value */
// 1360   if (NewState != DISABLE){
// 1361     /* Enable HSI RTC clk by setting the HSE_RTC_EN bit in the RTC_CLOCK register */
// 1362     temp |= RST_CLK_RTC_CLOCK_HSE_RTC_EN;
// 1363   }
// 1364   else{
// 1365     /* Disable HSI RTC clk by resetting the HSE_RTC_EN bit in the RTC_CLOCK register */
// 1366     temp &= ~RST_CLK_RTC_CLOCK_HSE_RTC_EN;
// 1367   }
// 1368   /* Configure RTC_CLOCK register with new value */
// 1369   MDR_RST_CLK->RTC_CLOCK = temp;
// 1370 
// 1371 #endif
// 1372 }
        BX       LR               ;; return
// 1373 
// 1374 /**
// 1375   * @brief	RST_CLK_PCLKcmd: enables or disables clock of peripherals.
// 1376   * @param  RST_CLK_PCLK: specifies the peripheral to gates its clock.
// 1377   *         This parameter can be any combination of the following values:
// 1378   *           @note for the MDR1986VE91:
// 1379   *           @arg RST_CLK_PCLK_CAN1, RST_CLK_PCLK_CAN2, RST_CLK_PCLK_USB, RST_CLK_PCLK_EEPROM,
// 1380  *                   RST_CLK_PCLK_RST_CLK, RST_CLK_PCLK_DMA, RST_CLK_PCLK_UART1, RST_CLK_PCLK_UART2,
// 1381  *                 RST_CLK_PCLK_SSP1, RST_CLK_PCLK_I2C, RST_CLK_PCLK_POWER,
// 1382  *                 RST_CLK_PCLK_WWDG, RST_CLK_PCLK_IWDG, RST_CLK_PCLK_TIMER1, RST_CLK_PCLK_TIMER2,
// 1383  *                 RST_CLK_PCLK_TIMER3, RST_CLK_PCLK_ADC, RST_CLK_PCLK_DAC, RST_CLK_PCLK_COMP,
// 1384  *                 RST_CLK_PCLK_SSP2, RST_CLK_PCLK_PORTA, RST_CLK_PCLK_PORTB, RST_CLK_PCLK_PORTC,
// 1385  *                 RST_CLK_PCLK_PORTD, RST_CLK_PCLK_PORTE, RST_CLK_PCLK_BKP, RST_CLK_PCLK_PORTF,
// 1386  *                 RST_CLK_PCLK_EBC.
// 1387   *           @note for the MDR1986VE1T
// 1388   *           @arg RST_CLK_PCLK_CAN1, RST_CLK_PCLK_CAN2, RST_CLK_PCLK_USB, RST_CLK_PCLK_EEPROM,
// 1389   *                  RST_CLK_PCLK_RST_CLK, RST_CLK_PCLK_DMA, RST_CLK_PCLK_UART1, RST_CLK_PCLK_UART2,
// 1390   *                  RST_CLK_PCLK_SSP1, RST_CLK_PCLK_I2C, RST_CLK_PCLK_POWER,
// 1391   *                  RST_CLK_PCLK_WWDG, RST_CLK_PCLK_IWDG, RST_CLK_PCLK_TIMER1, RST_CLK_PCLK_TIMER2,
// 1392   *                  RST_CLK_PCLK_TIMER3, RST_CLK_PCLK_ADC, RST_CLK_PCLK_DAC, RST_CLK_PCLK_TIMER4,
// 1393   *                  RST_CLK_PCLK_SSP2, RST_CLK_PCLK_PORTA, RST_CLK_PCLK_PORTB, RST_CLK_PCLK_PORTC,
// 1394   *                  RST_CLK_PCLK_PORTD, RST_CLK_PCLK_PORTE, RST_CLK_PCLK_BKP, RST_CLK_PCLK_PORTF,
// 1395   *                  RST_CLK_PCLK_EBC.
// 1396   *       @note for the MDR1986VE3:
// 1397   *           @arg RST_CLK_PCLK_CAN1, RST_CLK_PCLK_CAN2, RST_CLK_PCLK_USB, RST_CLK_PCLK_EEPROM,
// 1398   *                  RST_CLK_PCLK_RST_CLK, RST_CLK_PCLK_DMA, RST_CLK_PCLK_UART1, RST_CLK_PCLK_UART2,
// 1399   *                  RST_CLK_PCLK_SSP1, RST_CLK_PCLK_I2C, RST_CLK_PCLK_POWER,
// 1400   *                  RST_CLK_PCLK_WWDG, RST_CLK_PCLK_IWDG, RST_CLK_PCLK_TIMER1, RST_CLK_PCLK_TIMER2,
// 1401   *                  RST_CLK_PCLK_TIMER3, RST_CLK_PCLK_ADC, RST_CLK_PCLK_DAC, RST_CLK_PCLK_TIMER4,
// 1402   *                  RST_CLK_PCLK_SSP2, RST_CLK_PCLK_PORTA, RST_CLK_PCLK_PORTB, RST_CLK_PCLK_PORTC,
// 1403   *                  RST_CLK_PCLK_PORTD, RST_CLK_PCLK_PORTE, RST_CLK_PCLK_BKP, RST_CLK_PCLK_PORTF,
// 1404   *                  RST_CLK_PCLK_EBC.
// 1405   * @param  NewState: new state of the specified peripheral clock.
// 1406   *         This parameter can be: ENABLE or DISABLE.
// 1407   * @retval None
// 1408   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1409 void RST_CLK_PCLKcmd(uint32_t RST_CLK_PCLK, FunctionalState NewState)
// 1410 {
// 1411   /* Check the parameters */
// 1412   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1413   assert_param(IS_RST_CLK_PCLK(RST_CLK_PCLK));
// 1414   if (NewState != DISABLE)
RST_CLK_PCLKcmd:
        LDR.N    R2,??DataTable24_18  ;; 0x4002001c
        CMP      R1,#+0
        LDR      R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
// 1415   {
// 1416     MDR_RST_CLK->PER_CLOCK |= RST_CLK_PCLK;
// 1417   }
// 1418   else
// 1419   {
// 1420     MDR_RST_CLK->PER_CLOCK &= ~RST_CLK_PCLK;
        STR      R0,[R2, #+0]
// 1421   }
// 1422 }
        BX       LR               ;; return
// 1423 
// 1424 #if defined ( USE_MDR1986VE3 )
// 1425 /**
// 1426   * @brief  RST_CLK_PCLK2cmd: enables or disables the PER2_CLOCK bits.
// 1427   * @warning This function can be used only for microcontroller MDR1986VE3.
// 1428   * @param  RST_CLK_PCLK2: specifies the perepheral to gates its clock.]
// 1429   *       This parameter can be any combination of the following values:
// 1430   *       @arg RST_CLK_PCLK2_AUDIO_IP, RST_CLK_PCLK2_KEYBOARD, RST_CLK_PCLK2_LED,
// 1431          RST_CLK_PCLK2_UART3, RST_CLK_PCLK2_UART4, RST_CLK_PCLK2_SSP4,
// 1432          RST_CLK_PCLK2_PORTH, RST_CLK_PCLK2_PORTI
// 1433   * @param  NewState: new state of the specified peripheral clock.
// 1434   *       This parameter cna be: ENABLE or DISABLE.
// 1435   * @retval None
// 1436   */
// 1437 void RST_CLK_PCLK2cmd ( uint32_t RST_CLK_PCLK2, FunctionalState NewState ) {
// 1438 
// 1439   /* Check the parameters */
// 1440   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1441   assert_param(IS_RST_CLK_PCLK(RST_CLK_PCLK2));
// 1442 
// 1443   if(NewState != DISABLE){
// 1444     MDR_RST_CLK->PER2_CLOCK |= RST_CLK_PCLK2;
// 1445   }
// 1446   else{
// 1447     MDR_RST_CLK->PER2_CLOCK &= ~RST_CLK_PCLK2;
// 1448   }
// 1449 }
// 1450 #endif
// 1451 
// 1452 /**
// 1453   * @brief  RST_CLK_GetClocksFreq: Put the frequencies of different on chip clocks
// 1454   *         in *RST_CLK_Clocks structure.
// 1455   * @param  RST_CLK_Clocks: pointer to a RST_CLK_ClocksTypeDef structure that will hold
// 1456   *         the clocks frequencies.
// 1457   * @retval None
// 1458   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1459 void RST_CLK_GetClocksFreq(RST_CLK_FreqTypeDef* RST_CLK_Clocks)
// 1460 {
RST_CLK_GetClocksFreq:
        PUSH     {R4-R10,LR}
        MOV      R1,R0
// 1461   uint32_t cpu_c1_freq, cpu_c2_freq, cpu_c3_freq;
// 1462   uint32_t usb_c1_freq, usb_c2_freq, usb_c3_freq;
// 1463   uint32_t adc_c1_freq, adc_c2_freq, adc_c3_freq;
// 1464   uint32_t hsi_c1_freq, hse_c1_freq;
// 1465   uint32_t pll_mul;
// 1466   uint32_t temp;
// 1467 
// 1468   /* Check the parameter */
// 1469   assert_param(RST_CLK_Clocks != 0);
// 1470 
// 1471   /* Compute CPU_CLK, USB_CLK, ADC_CLK, RTCHSI, RTCHSE clocks frequencies */
// 1472 
// 1473   /* Compute CPU_CLK frequency */
// 1474 
// 1475   /* Determine CPU_C1 frequency */
// 1476   if( MDR_RST_CLK->CPU_CLOCK & (2 << RST_CLK_CPU_CLOCK_CPU_C1_SEL_Pos) ) {
        LDR.N    R2,??DataTable24_2  ;; 0x40020004
        LDR.N    R3,??DataTable24_19  ;; 0x7a1200
        LDR      R0,[R2, #+8]
        MOV      R4,R3
// 1477     cpu_c1_freq = HSE_Value;
// 1478   }
// 1479   else {
// 1480     cpu_c1_freq = HSI_Value;
// 1481   }
// 1482   if( MDR_RST_CLK->CPU_CLOCK & (1 << RST_CLK_CPU_CLOCK_CPU_C1_SEL_Pos) ) {
        LDR.N    R7,??DataTable24_20  ;; 0x3d0900
        LDR      R0,[R2, #+8]
        LSLS     R0,R0,#+31
        IT       MI 
        MOVMI    R4,R7
// 1483     cpu_c1_freq /= 2;
// 1484   }
// 1485 
// 1486   /* Determine CPU_C2 frequency */
// 1487   cpu_c2_freq = cpu_c1_freq;
        MOV      R5,R4
// 1488 
// 1489   if (MDR_RST_CLK->CPU_CLOCK & (1 << RST_CLK_CPU_CLOCK_CPU_C2_SEL_Pos)) {
        LDR      R0,[R2, #+8]
        LSLS     R0,R0,#+29
        BPL.N    ??RST_CLK_GetClocksFreq_0
// 1490     /* Determine CPU PLL output frequency */
// 1491     pll_mul = ((MDR_RST_CLK->PLL_CONTROL
// 1492         >> RST_CLK_PLL_CONTROL_PLL_CPU_MUL_Pos) & (uint32_t) 0x0F) + 1;
        LDR      R0,[R2, #+0]
// 1493     cpu_c2_freq *= pll_mul;
        UBFX     R0,R0,#+8,#+4
        ADDS     R0,R0,#+1
        MULS     R5,R0,R5
// 1494   }
// 1495 
// 1496   /*Select CPU_CLK from HSI, CPU_C3, LSE, LSI cases */
// 1497   switch ((MDR_RST_CLK->CPU_CLOCK >> RST_CLK_CPU_CLOCK_HCLK_SEL_Pos)
// 1498       & (uint32_t) 0x03) {
??RST_CLK_GetClocksFreq_0:
        MOVW     R8,#+40000
        MOV      R9,#+1
        MOV      R12,#+32768
        LDR      R0,[R2, #+8]
        LSRS     R0,R0,#+8
        ANDS     R0,R0,#0x3
        BEQ.N    ??RST_CLK_GetClocksFreq_1
        CMP      R0,#+2
        BEQ.N    ??RST_CLK_GetClocksFreq_2
        BCC.N    ??RST_CLK_GetClocksFreq_3
        B.N      ??RST_CLK_GetClocksFreq_4
// 1499     case 0:
// 1500       /* HSI */
// 1501       RST_CLK_Clocks->CPU_CLK_Frequency = HSI_Value;
??RST_CLK_GetClocksFreq_1:
        MOV      R0,R3
// 1502       break;
        B.N      ??RST_CLK_GetClocksFreq_5
// 1503     case 1:
// 1504       /* CPU_C3 */
// 1505       /* Determine CPU_C3 frequency */
// 1506       if ((MDR_RST_CLK->CPU_CLOCK >> RST_CLK_CPU_CLOCK_CPU_C3_SEL_Pos
// 1507           & (uint32_t) 0x08) == 0x00) {
??RST_CLK_GetClocksFreq_3:
        LDR      R0,[R2, #+8]
        LSRS     R0,R0,#+4
        LSLS     R0,R0,#+28
        IT       PL 
        MOVPL    R0,R5
// 1508         cpu_c3_freq = cpu_c2_freq;
        BPL.N    ??RST_CLK_GetClocksFreq_5
// 1509       }
// 1510       else {
// 1511         cpu_c3_freq = cpu_c2_freq
// 1512             / (1
// 1513                 << ((MDR_RST_CLK->CPU_CLOCK
// 1514                     >> RST_CLK_CPU_CLOCK_CPU_C3_SEL_Pos
// 1515                     & (uint32_t) 0x07) + 1));
        LDR      R0,[R2, #+8]
        UBFX     R0,R0,#+4,#+3
        ADDS     R0,R0,#+1
        LSL      R0,R9,R0
        UDIV     R0,R5,R0
        B.N      ??RST_CLK_GetClocksFreq_5
// 1516       }
// 1517       RST_CLK_Clocks->CPU_CLK_Frequency = cpu_c3_freq;
// 1518       break;
// 1519     case 2:
// 1520       /* LSE */
// 1521       RST_CLK_Clocks->CPU_CLK_Frequency = LSE_Value;
??RST_CLK_GetClocksFreq_2:
        MOV      R0,R12
// 1522       break;
        B.N      ??RST_CLK_GetClocksFreq_5
// 1523     default: /* case 3 */
// 1524       /* LSI */
// 1525       RST_CLK_Clocks->CPU_CLK_Frequency = LSI_Value;
??RST_CLK_GetClocksFreq_4:
        MOV      R0,R8
// 1526       break;
??RST_CLK_GetClocksFreq_5:
        STR      R0,[R1, #+0]
// 1527   }
// 1528 
// 1529   /* Compute USB_CLK frequency */
// 1530 
// 1531   /* Determine USB_C1 frequency */
// 1532   if( MDR_RST_CLK->USB_CLOCK & (2 << RST_CLK_USB_CLOCK_USB_C1_SEL_Pos) ) {
        LDR      R0,[R2, #+12]
        MOV      R0,R3
// 1533     usb_c1_freq = HSE_Value;
// 1534   }
// 1535   else {
// 1536     usb_c1_freq = HSI_Value;
// 1537   }
// 1538 
// 1539   if( MDR_RST_CLK->USB_CLOCK & (1 << RST_CLK_USB_CLOCK_USB_C1_SEL_Pos) ) {
        LDR      R6,[R2, #+12]
        LSLS     R6,R6,#+31
        IT       MI 
        MOVMI    R0,R7
// 1540     usb_c1_freq /= 2;
// 1541   }
// 1542 
// 1543   /* Determine USB_C2 frequency */
// 1544   usb_c2_freq = usb_c1_freq;
        MOV      LR,R0
// 1545 
// 1546   if( MDR_RST_CLK->USB_CLOCK & (1 << RST_CLK_USB_CLOCK_USB_C2_SEL_Pos) ){
        LDR      R6,[R2, #+12]
        LSLS     R6,R6,#+29
        BPL.N    ??RST_CLK_GetClocksFreq_6
// 1547     /* Determine USB PLL output frequency */
// 1548     pll_mul = ((MDR_RST_CLK->PLL_CONTROL
// 1549         >> RST_CLK_PLL_CONTROL_PLL_USB_MUL_Pos) & (uint32_t) 0x0F) + 1;
        LDR      R6,[R2, #+0]
// 1550     usb_c2_freq *= pll_mul;
        UBFX     R6,R6,#+4,#+4
        ADDS     R6,R6,#+1
        MUL      LR,R6,LR
// 1551   }
// 1552 
// 1553   /* Determine USB_C3 frequency */
// 1554   usb_c3_freq = usb_c2_freq;
??RST_CLK_GetClocksFreq_6:
        MOV      R6,LR
// 1555   if(MDR_RST_CLK->USB_CLOCK & (1 << RST_CLK_USB_CLOCK_USB_C3_SEL_Pos)){
        LDR      R7,[R2, #+12]
        LSLS     R7,R7,#+27
        IT       MI 
        LSRMI    R6,R6,#+1
// 1556     usb_c3_freq /= 2;
// 1557   }
// 1558 
// 1559   RST_CLK_Clocks->USB_CLK_Frequency = usb_c3_freq;
        STR      R6,[R1, #+4]
// 1560 
// 1561   /* Compute RTCHSI_CLK frequency */
// 1562   temp = MDR_RST_CLK->RTC_CLOCK >> RST_CLK_RTC_CLOCK_HSI_SEL_Pos;
        LDR      R6,[R2, #+20]
        LSRS     R6,R6,#+4
// 1563   if ((temp & 0x08U) == 0) {
        LSLS     R7,R6,#+28
        IT       PL 
        MOVPL    R6,R3
// 1564     hsi_c1_freq = HSI_Value;
        BPL.N    ??RST_CLK_GetClocksFreq_7
// 1565   }
// 1566   else {
// 1567     temp = 1 << ((temp & 0x07U) + 1);
// 1568     hsi_c1_freq = HSI_Value / temp;
        AND      R6,R6,#0x7
        ADDS     R6,R6,#+1
        LSL      R6,R9,R6
        UDIV     R6,R3,R6
// 1569   }
// 1570   RST_CLK_Clocks->RTCHSI_Frequency = hsi_c1_freq;
??RST_CLK_GetClocksFreq_7:
        STR      R6,[R1, #+12]
// 1571 
// 1572   /* Compute RTCHSE_CLK frequency */
// 1573   temp = MDR_RST_CLK->RTC_CLOCK >> RST_CLK_RTC_CLOCK_HSE_SEL_Pos;
        LDR      R7,[R2, #+20]
// 1574   if ((temp & 0x08U) == 0) {
        LSLS     R10,R7,#+28
        BPL.N    ??RST_CLK_GetClocksFreq_8
// 1575     hse_c1_freq = HSE_Value;
// 1576   }
// 1577   else {
// 1578     temp = 1 << ((temp & 0x07U) + 1);
// 1579     hse_c1_freq = HSE_Value / temp;
        AND      R7,R7,#0x7
        ADDS     R7,R7,#+1
        LSL      R7,R9,R7
        UDIV     R3,R3,R7
// 1580   }
// 1581   RST_CLK_Clocks->RTCHSE_Frequency = hse_c1_freq;
??RST_CLK_GetClocksFreq_8:
        STR      R3,[R1, #+16]
// 1582 
// 1583   /* Compute ADC_CLK frequency */
// 1584 
// 1585   /* Select ADC_C1 from CPU_C1, LSI, USB_C1, CPU_C2, USB_C2 cases */
// 1586   switch ((MDR_RST_CLK->ADC_MCO_CLOCK >> RST_CLK_ADC_MCO_CLOCK_ADC_C1_SEL_Pos)
// 1587       & (uint32_t) 0x03) {
        LDR      R3,[R2, #+16]
        ANDS     R3,R3,#0x3
        BEQ.N    ??RST_CLK_GetClocksFreq_9
        CMP      R3,#+2
        BEQ.N    ??RST_CLK_GetClocksFreq_10
        ITE      CC 
        MOVCC    R4,R0
        MOVCS    R4,LR
// 1588     case 0:
// 1589       /* CPU_C1 */
// 1590       adc_c1_freq = cpu_c1_freq;
// 1591       break;
// 1592     case 1:
// 1593       /* USB_C1 */
// 1594       adc_c1_freq = usb_c1_freq;
// 1595       break;
        B.N      ??RST_CLK_GetClocksFreq_9
// 1596     case 2:
// 1597       /* CPU_C2 */
// 1598       adc_c1_freq = cpu_c2_freq;
??RST_CLK_GetClocksFreq_10:
        MOV      R4,R5
// 1599       break;
// 1600     default: /* case 3 */
// 1601       /* USB_C2 */
// 1602       adc_c1_freq = usb_c2_freq;
// 1603       break;
// 1604   }
// 1605 
// 1606   /* Select ADC_C2 from LSE, LSI, ADC_C1, HSI_C1 cases */
// 1607   switch ((MDR_RST_CLK->ADC_MCO_CLOCK >> RST_CLK_ADC_MCO_CLOCK_ADC_C2_SEL_Pos)
// 1608       & (uint32_t) 0x03) {
??RST_CLK_GetClocksFreq_9:
        LDR      R0,[R2, #+16]
        LSRS     R0,R0,#+4
        ANDS     R0,R0,#0x3
        BEQ.N    ??RST_CLK_GetClocksFreq_11
        CMP      R0,#+2
        BEQ.N    ??RST_CLK_GetClocksFreq_12
        BCC.N    ??RST_CLK_GetClocksFreq_13
        B.N      ??RST_CLK_GetClocksFreq_14
// 1609     case 0:
// 1610       /* LSE */
// 1611       adc_c2_freq = LSE_Value;
??RST_CLK_GetClocksFreq_11:
        MOV      R4,R12
// 1612       break;
        B.N      ??RST_CLK_GetClocksFreq_12
// 1613     case 1:
// 1614       /* LSI */
// 1615       adc_c2_freq = LSI_Value;
??RST_CLK_GetClocksFreq_13:
        MOV      R4,R8
// 1616       break;
        B.N      ??RST_CLK_GetClocksFreq_12
// 1617     case 2:
// 1618       /* ADC_C1 */
// 1619       adc_c2_freq = adc_c1_freq;
// 1620       break;
// 1621     default: /* case 3 */
// 1622       /* HSI_C1 */
// 1623       adc_c2_freq = hsi_c1_freq;
??RST_CLK_GetClocksFreq_14:
        MOV      R4,R6
// 1624       break;
// 1625   }
// 1626 
// 1627   temp = MDR_RST_CLK->ADC_MCO_CLOCK >> RST_CLK_ADC_MCO_CLOCK_ADC_C3_SEL_Pos;
??RST_CLK_GetClocksFreq_12:
        LDR      R0,[R2, #+16]
        LSRS     R0,R0,#+8
// 1628   if ((temp & 0x08U) == 0) {
        LSLS     R2,R0,#+28
        BPL.N    ??RST_CLK_GetClocksFreq_15
// 1629     adc_c3_freq = adc_c2_freq;
// 1630   }
// 1631   else {
// 1632     temp = 1 << ((temp & 0x07U) + 1);
// 1633     adc_c3_freq = adc_c2_freq / temp;
        AND      R0,R0,#0x7
        ADDS     R0,R0,#+1
        LSL      R0,R9,R0
        UDIV     R4,R4,R0
// 1634   }
// 1635 
// 1636   RST_CLK_Clocks->ADC_CLK_Frequency = adc_c3_freq;
??RST_CLK_GetClocksFreq_15:
        STR      R4,[R1, #+8]
// 1637 }
        POP      {R4-R10,PC}      ;; return
// 1638 
// 1639 /**
// 1640   * @brief  Checks whether the specified RCC flag is set or not.
// 1641   * @param  RST_CLK_FLAG: specifies the flag to check.
// 1642   *         This parameter can be one of the following values:
// 1643   *           @arg RST_CLK_FLAG_HSIRDY
// 1644   *                RST_CLK_FLAG_LSIRDY
// 1645   *                RST_CLK_FLAG_HSERDY
// 1646   *                RST_CLK_FLAG_LSERDY
// 1647   *                RST_CLK_FLAG_PLLCPURDY
// 1648   *                RST_CLK_FLAG_PLLUSBRDY
// 1649   * @retval The new state of RCC_FLAG (SET or RESET).
// 1650   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1651 FlagStatus RST_CLK_GetFlagStatus(uint32_t RST_CLK_FLAG)
// 1652 {
// 1653   uint32_t statusreg;
// 1654   FlagStatus bitstatus;
// 1655 
// 1656   /* Check the parameters */
// 1657   assert_param(IS_RST_CLK_FLAG(RST_CLK_FLAG));
// 1658 
// 1659   /* Get the register */
// 1660   if ((FLAG_SFR_MASK & RST_CLK_FLAG) == (uint32_t)0x20) /* The flag to check is in CLOCK_STATUS register */
RST_CLK_GetFlagStatus:
        AND      R1,R0,#0xE0
        CMP      R1,#+32
        ITE      EQ 
        LDREQ.N  R1,??DataTable24_21  ;; 0x40020000
        LDRNE.N  R1,??DataTable24  ;; 0x400d803c
// 1661   {
// 1662     statusreg = MDR_RST_CLK->CLOCK_STATUS;
// 1663   }
// 1664   else                                                  /* The flag to check is in REG_0F register */
// 1665   {
// 1666     statusreg = MDR_BKP->REG_0F;
        LDR      R1,[R1, #+0]
// 1667   }
// 1668 
// 1669   /* Get the flag status on proper position */
// 1670   if ((statusreg & ((uint32_t)1 << (RST_CLK_FLAG & FLAG_MASK))) != (uint32_t)0x00)
        MOVS     R2,#+1
        AND      R0,R0,#0x1F
        LSL      R0,R2,R0
        ANDS     R0,R0,R1
        IT       NE 
        MOVNE    R0,#+1
// 1671   {
// 1672     bitstatus = SET;
// 1673   }
// 1674   else
// 1675   {
// 1676     bitstatus = RESET;
// 1677   }
// 1678 
// 1679   /* Return the flag status */
// 1680   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
// 1681 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     0x400d803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     0x43b007d8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_3:
        DC32     0x8000010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_4:
        DC32     0x40020008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_5:
        DC32     0x43b007bc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_6:
        DC32     0x42400088

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_7:
        DC32     0x42400188

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_8:
        DC32     0x4002000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_9:
        DC32     0x42400080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_10:
        DC32     0x42400208

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_11:
        DC32     0x42400210

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_12:
        DC32     0x42400220

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_13:
        DC32     0x40020014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_14:
        DC32     0x424002b4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_15:
        DC32     0x40020018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_16:
        DC32     0x42400324

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_17:
        DC32     0x42400320

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_18:
        DC32     0x4002001c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_19:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_20:
        DC32     0x3d0900

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_21:
        DC32     0x40020000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1682 
// 1683 /** @} */ /* End of group RST_CLK_Private_Functions */
// 1684 
// 1685 /** @} */ /* End of group RST_CLK */
// 1686 
// 1687 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
// 1688 
// 1689 /******************* (C) COPYRIGHT 2010 Phyton *********************************
// 1690 *
// 1691 * END OF FILE MDR32F9Qx_rst_clk.c */
// 1692 
// 
// 1 030 bytes in section .text
// 
// 1 030 bytes of CODE memory
//
//Errors: none
//Warnings: none
