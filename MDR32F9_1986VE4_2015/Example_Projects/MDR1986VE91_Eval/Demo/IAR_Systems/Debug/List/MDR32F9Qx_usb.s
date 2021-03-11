///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:58 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_usb.c                     /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_usb.c --preprocess        /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_usb. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_usb

        #define SHT_PROGBITS 0x1

        PUBLIC USB_BRGInit
        PUBLIC USB_GetHFN
        PUBLIC USB_GetHIM
        PUBLIC USB_GetHIS
        PUBLIC USB_GetHRXA
        PUBLIC USB_GetHRXCS
        PUBLIC USB_GetHRXE
        PUBLIC USB_GetHRXFC
        PUBLIC USB_GetHRXFD
        PUBLIC USB_GetHRXFDC
        PUBLIC USB_GetHRXP
        PUBLIC USB_GetHRXS
        PUBLIC USB_GetHSCR
        PUBLIC USB_GetHSTM
        PUBLIC USB_GetHSVR
        PUBLIC USB_GetHTXA
        PUBLIC USB_GetHTXC
        PUBLIC USB_GetHTXE
        PUBLIC USB_GetHTXFC
        PUBLIC USB_GetHTXFD
        PUBLIC USB_GetHTXLC
        PUBLIC USB_GetHTXSE
        PUBLIC USB_GetHTXT
        PUBLIC USB_GetSA
        PUBLIC USB_GetSC
        PUBLIC USB_GetSEPxCTRL
        PUBLIC USB_GetSEPxNTS
        PUBLIC USB_GetSEPxRXFC
        PUBLIC USB_GetSEPxRXFD
        PUBLIC USB_GetSEPxRXFDC
        PUBLIC USB_GetSEPxSTS
        PUBLIC USB_GetSEPxTS
        PUBLIC USB_GetSEPxTXFD
        PUBLIC USB_GetSEPxTXFDC
        PUBLIC USB_GetSFN
        PUBLIC USB_GetSIM
        PUBLIC USB_GetSIS
        PUBLIC USB_GetSLS
        PUBLIC USB_Reset
        PUBLIC USB_SEPxToggleEPDATASEQ
        PUBLIC USB_SetHIM
        PUBLIC USB_SetHIS
        PUBLIC USB_SetHRXFC
        PUBLIC USB_SetHSCR
        PUBLIC USB_SetHTXA
        PUBLIC USB_SetHTXC
        PUBLIC USB_SetHTXE
        PUBLIC USB_SetHTXFC
        PUBLIC USB_SetHTXFD
        PUBLIC USB_SetHTXLC
        PUBLIC USB_SetHTXSE
        PUBLIC USB_SetHTXT
        PUBLIC USB_SetSA
        PUBLIC USB_SetSC
        PUBLIC USB_SetSEPxCTRL
        PUBLIC USB_SetSEPxRXFC
        PUBLIC USB_SetSEPxTXFD
        PUBLIC USB_SetSEPxTXFDC
        PUBLIC USB_SetSIM
        PUBLIC USB_SetSIS

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_usb.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_usb.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    01/02/2011
//    7   * @brief   This file contains all the USB SFR access layer functions.
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
//   18   * <h2><center>&copy; COPYRIGHT 2011 Phyton</center></h2>
//   19   ******************************************************************************
//   20   * FILE MDR32F9Qx_usb.c
//   21   */
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "MDR32F9Qx_config.h"
//   25 #include "MDR32F9Qx_usb.h"
//   26 #include "MDR32F9Qx_rst_clk.h"
//   27 
//   28 
//   29 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_USB_C
//   30 
//   31 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   32   * @{
//   33   */
//   34 
//   35 /** @defgroup USB USB
//   36   * @{
//   37   */
//   38 
//   39 /** @defgroup USB_Private_Defines USB Private Defines
//   40   * @{
//   41   */
//   42 
//   43 #define BIT_SET_Msk                          0xFFFFUL
//   44 
//   45 /** @} */ /* End of group USB_Private_Defines */
//   46 
//   47 /** @defgroup USB_Private_Macros USB Private Macros
//   48   * @{
//   49   */
//   50 
//   51 #define USB_SFR_SET(SFR, VAL)   do {                                  \ 
//   52                                   uint32_t tmpreg  = (SFR);      \ 
//   53                                   tmpreg |= ((VAL) & BIT_SET_Msk);    \ 
//   54                                   tmpreg &= (~((VAL) >> 16));         \ 
//   55                                   (SFR) = tmpreg;                \ 
//   56                                 } while (0)
//   57 
//   58 /** @} */ /* End of group USB_Private_Macros */
//   59 
//   60 /** @defgroup USB_Private_Functions USB Private Functions
//   61   * @{
//   62   */
//   63 
//   64 /**
//   65   * @brief  Initializes the USB peripheral Clock according to the
//   66   *         specified parameters.
//   67   * @param  USB_Clock_InitStruct: pointer to a USB_Clock_TypeDef structure
//   68   *         that contains the configuration information for the USB Clock.
//   69   *
//   70   * @retval None
//   71   */
//   72 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 void USB_BRGInit(const USB_Clock_TypeDef* USB_Clock_InitStruct)
//   74 {
//   75   uint32_t tmpreg;
//   76 
//   77   /* Check the parameters */
//   78   assert_param(IS_USB_CLOCK(USB_Clock_InitStruct->USB_PLLUSBMUL, USB_Clock_InitStruct->USB_USBC1_Source));
//   79 
//   80   /* USB_CLOCK Configuration */
//   81   tmpreg  = MDR_RST_CLK->USB_CLOCK;
USB_BRGInit:
        LDR.N    R1,??DataTable57  ;; 0x40020000
        LDR      R2,[R1, #+16]
//   82   tmpreg |= RST_CLK_USB_CLOCK_USB_CLK_EN;
//   83   tmpreg |= USB_Clock_InitStruct->USB_USBC1_Source;
//   84   tmpreg |= USB_PLL;
//   85 
//   86   MDR_RST_CLK->USB_CLOCK = tmpreg;
        LDR      R3,[R0, #+0]
        ORRS     R2,R3,R2
        ORR      R2,R2,#0x104
        STR      R2,[R1, #+16]
//   87 
//   88   /* PLL_CONTROL Configuration */
//   89   tmpreg  = MDR_RST_CLK->PLL_CONTROL;
        LDR      R2,[R1, #+4]
//   90   tmpreg |= RST_CLK_PLL_CONTROL_PLL_USB_ON;
//   91   tmpreg |= (USB_Clock_InitStruct->USB_PLLUSBMUL << RST_CLK_PLL_CONTROL_PLL_USB_MUL_Pos);
//   92 
//   93   MDR_RST_CLK->PLL_CONTROL = tmpreg;
        LDR      R0,[R0, #+4]
        ORR      R0,R2,R0, LSL #+4
        ORR      R0,R0,#0x1
        STR      R0,[R1, #+4]
//   94   while ((MDR_RST_CLK->CLOCK_STATUS & RST_CLK_CLOCK_STATUS_PLL_USB_RDY) != SET);
??USB_BRGInit_0:
        LDR      R0,[R1, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??USB_BRGInit_0
//   95 }
        BX       LR               ;; return
//   96 
//   97 /**
//   98   * @brief  Reset routine the USB periphery.
//   99   * @param  None
//  100   * @retval None
//  101   */
//  102 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  103 void USB_Reset(void)
//  104 {
USB_Reset:
        PUSH     {R7,LR}
//  105   uint32_t count;
//  106 
//  107   USB_SetHSCR(USB_HSCR_RESET_CORE_Reset);  /* Set RESET_CORE bit */
        MOVS     R0,#+2
        BL       USB_SetHSCR
//  108   for (count = 0; count < 1000; count++);  /* Hold Reset */
//  109   USB_SetHSCR(USB_HSCR_RESET_CORE_Work);
        MOV      R0,#+131072
        POP      {R1,LR}
        B.N      USB_SetHSCR
//  110 }
//  111 
//  112 /**
//  113   * @brief  Returns USB_HSCR register value
//  114   *
//  115   * @param  None
//  116   *
//  117   * @retval USB_HSCR register value
//  118   */
//  119 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  120 uint32_t USB_GetHSCR(void)
//  121 {
//  122   return MDR_USB->HSCR;
USB_GetHSCR:
        LDR.N    R0,??DataTable57_1  ;; 0x40010380
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  123 }
//  124 
//  125 /**
//  126   * @brief  Writes to USB_HSCR register
//  127   *
//  128   * @param  RegValue: new USB_HSCR register value
//  129   *
//  130   * @retval None
//  131   */
//  132 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  133 void USB_SetHSCR(uint32_t RegValue)
//  134 {
//  135   /* Check the parameters */
//  136   assert_param(IS_USB_HSCR_VALUE(RegValue));
//  137 
//  138   USB_SFR_SET(MDR_USB->HSCR, RegValue);
USB_SetHSCR:
        LDR.N    R1,??DataTable57_1  ;; 0x40010380
        B.N      ?Subroutine0
//  139 }
//  140 
//  141 /**
//  142   * @brief  Returns the USB controller version information.
//  143   *
//  144   * @param  None
//  145   *
//  146   * @retval USB_Version_TypeDef structure containing version
//  147   *         and revision.
//  148   */
//  149 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  150 USB_Version_TypeDef USB_GetHSVR(void)
//  151 {
USB_GetHSVR:
        SUB      SP,SP,#+4
//  152   uint32_t tmpreg;
//  153   USB_Version_TypeDef s;
//  154 
//  155   tmpreg = MDR_USB->HSVR;
        LDR.N    R0,??DataTable57_2  ;; 0x40010384
        LDR      R0,[R0, #+0]
//  156 
//  157   s.USB_Version  = tmpreg & USB_HSVR_VERSION_Msk;
        AND      R1,R0,#0xF
        STRB     R1,[SP, #+0]
//  158   s.USB_Revision = (tmpreg & USB_HSVR_REVISION_Msk) >> USB_HSVR_REVISION_Pos;
        UBFX     R0,R0,#+4,#+4
        STRB     R0,[SP, #+1]
//  159 
//  160   return s;
        LDR      R0,[SP, #+0]
        ADD      SP,SP,#+4
        BX       LR               ;; return
//  161 }
//  162 
//  163 /**
//  164   * @brief  Returns USB_HTXC register value
//  165   *
//  166   * @param  None
//  167   *
//  168   * @retval USB_HTXC register value
//  169   */
//  170 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  171 uint32_t USB_GetHTXC(void)
//  172 {
//  173   return MDR_USB->HTXC;
USB_GetHTXC:
        LDR.N    R0,??DataTable57_3  ;; 0x40010000
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  174 }
//  175 
//  176 /**
//  177   * @brief  Writes to USB_HTXC register
//  178   *
//  179   * @param  RegValue: new USB_HTXC register value
//  180   *
//  181   * @retval None
//  182   */
//  183 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  184 void     USB_SetHTXC(uint32_t RegValue)
//  185 {
//  186   /* Check the parameters */
//  187   assert_param(IS_USB_HTXC_VALUE(RegValue));
//  188 
//  189   USB_SFR_SET(MDR_USB->HTXC, RegValue);
USB_SetHTXC:
        LDR.N    R1,??DataTable57_3  ;; 0x40010000
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  190 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        LDR      R2,[R1, #+0]
        UXTH     R3,R0
        ORRS     R2,R3,R2
        BIC      R0,R2,R0, LSR #+16
        STR      R0,[R1, #+0]
        BX       LR               ;; return
//  191 
//  192 /**
//  193   * @brief  Returns USB_HTXT register value
//  194   *
//  195   * @param  None
//  196   *
//  197   * @retval USB_HTXT register value
//  198   */
//  199 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  200 uint32_t USB_GetHTXT(void)
//  201 {
//  202   return MDR_USB->HTXT;
USB_GetHTXT:
        LDR.N    R0,??DataTable57_4  ;; 0x40010004
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  203 }
//  204 
//  205 /**
//  206   * @brief  Writes to USB_HTXT register
//  207   *
//  208   * @param  RegValue: new USB_HTXT register value
//  209   *
//  210   * @retval None
//  211   */
//  212 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  213 void     USB_SetHTXT(uint32_t RegValue)
//  214 {
//  215   /* Check the parameters */
//  216   assert_param(IS_USB_HTXT_VALUE(RegValue));
//  217 
//  218   MDR_USB->HTXT = RegValue;
USB_SetHTXT:
        LDR.N    R1,??DataTable57_4  ;; 0x40010004
        STR      R0,[R1, #+0]
//  219 }
        BX       LR               ;; return
//  220 
//  221 /**
//  222   * @brief  Returns USB_HTXLC register value
//  223   *
//  224   * @param  None
//  225   *
//  226   * @retval USB_HTXLC register value
//  227   */
//  228 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  229 uint32_t USB_GetHTXLC(void)
//  230 {
//  231   return MDR_USB->HTXLC;
USB_GetHTXLC:
        LDR.N    R0,??DataTable57_5  ;; 0x40010008
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  232 }
//  233 
//  234 /**
//  235   * @brief  Writes to USB_HTXLC register
//  236   *
//  237   * @param  RegValue: new USB_HTXLC register value
//  238   *
//  239   * @retval None
//  240   */
//  241 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  242 void     USB_SetHTXLC(uint32_t RegValue)
//  243 {
//  244   /* Check the parameters */
//  245   assert_param(IS_USB_HTXLC_VALUE(RegValue));
//  246 
//  247   USB_SFR_SET(MDR_USB->HTXLC, RegValue);
USB_SetHTXLC:
        LDR.N    R1,??DataTable57_5  ;; 0x40010008
        B.N      ?Subroutine0
//  248 }
//  249 
//  250 /**
//  251   * @brief  Returns USB_HTXSE register value
//  252   *
//  253   * @param  None
//  254   *
//  255   * @retval USB_HTXSE register value
//  256   */
//  257 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  258 uint32_t USB_GetHTXSE(void)
//  259 {
//  260   return MDR_USB->HTXSE;
USB_GetHTXSE:
        LDR.N    R0,??DataTable57_6  ;; 0x4001000c
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  261 }
//  262 
//  263 /**
//  264   * @brief  Writes to USB_HTXSE register
//  265   *
//  266   * @param  RegValue: new USB_HTXSE register value
//  267   *
//  268   * @retval None
//  269   */
//  270 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  271 void     USB_SetHTXSE(uint32_t RegValue)
//  272 {
//  273   /* Check the parameters */
//  274   assert_param(IS_USB_HTXSE_VALUE(RegValue));
//  275 
//  276   USB_SFR_SET(MDR_USB->HTXSE, RegValue);
USB_SetHTXSE:
        LDR.N    R1,??DataTable57_6  ;; 0x4001000c
        B.N      ?Subroutine0
//  277 }
//  278 
//  279 /**
//  280   * @brief  Returns USB_HTXA register value
//  281   *
//  282   * @param  None
//  283   *
//  284   * @retval USB_HTXA register value
//  285   */
//  286 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  287 uint32_t USB_GetHTXA(void)
//  288 {
//  289   return MDR_USB->HTXA;
USB_GetHTXA:
        LDR.N    R0,??DataTable57_7  ;; 0x40010010
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  290 }
//  291 
//  292 /**
//  293   * @brief  Writes to USB_HTXA register
//  294   *
//  295   * @param  RegValue: new USB_HTXA register value
//  296   *
//  297   * @retval None
//  298   */
//  299 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  300 void     USB_SetHTXA(uint32_t RegValue)
//  301 {
//  302   /* Check the parameters */
//  303   assert_param(IS_USB_HTXA_VALUE(RegValue));
//  304 
//  305   MDR_USB->HTXA = RegValue;
USB_SetHTXA:
        LDR.N    R1,??DataTable57_7  ;; 0x40010010
        STR      R0,[R1, #+0]
//  306 }
        BX       LR               ;; return
//  307 
//  308 /**
//  309   * @brief  Returns USB_HTXE register value
//  310   *
//  311   * @param  None
//  312   *
//  313   * @retval USB_HTXE register value
//  314   */
//  315 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  316 uint32_t USB_GetHTXE(void)
//  317 {
//  318   return MDR_USB->HTXE;
USB_GetHTXE:
        LDR.N    R0,??DataTable57_8  ;; 0x40010014
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  319 }
//  320 
//  321 /**
//  322   * @brief  Writes to USB_HTXE register
//  323   *
//  324   * @param  RegValue: new USB_HTXE register value
//  325   *
//  326   * @retval None
//  327   */
//  328 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  329 void     USB_SetHTXE(uint32_t RegValue)
//  330 {
//  331   /* Check the parameters */
//  332   assert_param(IS_USB_HTXE_VALUE(RegValue));
//  333 
//  334   MDR_USB->HTXE = RegValue;
USB_SetHTXE:
        LDR.N    R1,??DataTable57_8  ;; 0x40010014
        STR      R0,[R1, #+0]
//  335 }
        BX       LR               ;; return
//  336 
//  337 /**
//  338   * @brief  Returns USB_HFN register value
//  339   *
//  340   * @param  None
//  341   *
//  342   * @retval USB_HFN register value
//  343   */
//  344 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  345 uint32_t USB_GetHFN(void)
//  346 {
//  347   return MDR_USB->HFN_H;
USB_GetHFN:
        LDR.N    R0,??DataTable57_9  ;; 0x4001001c
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  348 }
//  349 
//  350 /**
//  351   * @brief  Returns USB_HIS register value
//  352   *
//  353   * @param  None
//  354   *
//  355   * @retval USB_HIS register value
//  356   */
//  357 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  358 uint32_t USB_GetHIS(void)
//  359 {
//  360   return MDR_USB->HIS;
USB_GetHIS:
        LDR.N    R0,??DataTable57_10  ;; 0x40010020
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  361 }
//  362 
//  363 /**
//  364   * @brief  Writes to USB_HIS register
//  365   *
//  366   * @param  RegValue: new USB_HIS register value
//  367   *
//  368   * @retval None
//  369   */
//  370 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  371 void     USB_SetHIS(uint32_t RegValue)
//  372 {
//  373   /* Check the parameters */
//  374   assert_param(IS_USB_HIS_VALUE(RegValue));
//  375 
//  376   USB_SFR_SET(MDR_USB->HIS, RegValue);
USB_SetHIS:
        LDR.N    R1,??DataTable57_10  ;; 0x40010020
        B.N      ?Subroutine0
//  377 }
//  378 
//  379 /**
//  380   * @brief  Returns USB_HIM register value
//  381   *
//  382   * @param  None
//  383   *
//  384   * @retval USB_HIM register value
//  385   */
//  386 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  387 uint32_t USB_GetHIM(void)
//  388 {
//  389   return MDR_USB->HIM;
USB_GetHIM:
        LDR.N    R0,??DataTable57_11  ;; 0x40010024
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  390 }
//  391 
//  392 /**
//  393   * @brief  Writes to USB_HIM register
//  394   *
//  395   * @param  RegValue: new USB_HIM register value
//  396   *
//  397   * @retval None
//  398   */
//  399 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  400 void     USB_SetHIM(uint32_t RegValue)
//  401 {
//  402   /* Check the parameters */
//  403   assert_param(IS_USB_HIM_VALUE(RegValue));
//  404 
//  405   USB_SFR_SET(MDR_USB->HIM, RegValue);
USB_SetHIM:
        LDR.N    R1,??DataTable57_11  ;; 0x40010024
        B.N      ?Subroutine0
//  406 }
//  407 
//  408 /**
//  409   * @brief  Returns USB_HRXS register value
//  410   *
//  411   * @param  None
//  412   *
//  413   * @retval USB_HRXS register value
//  414   */
//  415 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  416 uint32_t USB_GetHRXS(void)
//  417 {
//  418   return MDR_USB->HRXS;
USB_GetHRXS:
        LDR.N    R0,??DataTable57_12  ;; 0x40010028
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  419 }
//  420 
//  421 /**
//  422   * @brief  Returns USB_HRXP register value
//  423   *
//  424   * @param  None
//  425   *
//  426   * @retval USB_HRXP register value
//  427   */
//  428 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  429 uint32_t USB_GetHRXP(void)
//  430 {
//  431   return MDR_USB->HRXP;
USB_GetHRXP:
        LDR.N    R0,??DataTable57_13  ;; 0x4001002c
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  432 }
//  433 
//  434 /**
//  435   * @brief  Returns USB_HRXA register value
//  436   *
//  437   * @param  None
//  438   *
//  439   * @retval USB_HRXA register value
//  440   */
//  441 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  442 uint32_t USB_GetHRXA(void)
//  443 {
//  444   return MDR_USB->HRXA;
USB_GetHRXA:
        LDR.N    R0,??DataTable57_14  ;; 0x40010030
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  445 }
//  446 
//  447 /**
//  448   * @brief  Returns USB_HRXE register value
//  449   *
//  450   * @param  None
//  451   *
//  452   * @retval USB_HRXE register value
//  453   */
//  454 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  455 uint32_t USB_GetHRXE(void)
//  456 {
//  457   return MDR_USB->HRXE;
USB_GetHRXE:
        LDR.N    R0,??DataTable57_15  ;; 0x40010034
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  458 }
//  459 
//  460 /**
//  461   * @brief  Returns USB_HRXCS register value
//  462   *
//  463   * @param  None
//  464   *
//  465   * @retval USB_HRXCS register value
//  466   */
//  467 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  468 uint32_t USB_GetHRXCS(void)
//  469 {
//  470   return MDR_USB->HRXCS;
USB_GetHRXCS:
        LDR.N    R0,??DataTable57_16  ;; 0x40010038
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  471 }
//  472 
//  473 /**
//  474   * @brief  Returns USB_HSTM register value
//  475   *
//  476   * @param  None
//  477   *
//  478   * @retval USB_HSTM register value
//  479   */
//  480 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  481 uint32_t USB_GetHSTM(void)
//  482 {
//  483   return MDR_USB->HSTM;
USB_GetHSTM:
        LDR.N    R0,??DataTable57_17  ;; 0x4001003c
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  484 }
//  485 
//  486 /**
//  487   * @brief  Returns USB_HRXFD register value
//  488   *
//  489   * @param  None
//  490   *
//  491   * @retval USB_HRXFD register value
//  492   */
//  493 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  494 uint32_t USB_GetHRXFD(void)
//  495 {
//  496   return MDR_USB->HRXFD;
USB_GetHRXFD:
        LDR.N    R0,??DataTable57_18  ;; 0x40010080
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  497 }
//  498 
//  499 /**
//  500   * @brief  Returns USB_HRXFDC register value
//  501   *
//  502   * @param  None
//  503   *
//  504   * @retval USB_HRXFDC register value
//  505   */
//  506 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  507 uint32_t USB_GetHRXFDC(void)
//  508 {
//  509   return MDR_USB->HRXFDC_H;
USB_GetHRXFDC:
        LDR.N    R0,??DataTable57_19  ;; 0x4001008c
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  510 }
//  511 
//  512 /**
//  513   * @brief  Returns USB_HRXFC register value
//  514   *
//  515   * @param  None
//  516   *
//  517   * @retval USB_HRXFC register value
//  518   */
//  519 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  520 uint32_t USB_GetHRXFC(void)
//  521 {
//  522   return MDR_USB->HRXFC;
USB_GetHRXFC:
        LDR.N    R0,??DataTable57_20  ;; 0x40010090
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  523 }
//  524 
//  525 /**
//  526   * @brief  Writes to USB_HRXFC register
//  527   *
//  528   * @param  RegValue: new USB_HRXFC register value
//  529   *
//  530   * @retval None
//  531   */
//  532 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  533 void     USB_SetHRXFC(uint32_t RegValue)
//  534 {
//  535   /* Check the parameters */
//  536   assert_param(IS_USB_HRXFC_VALUE(RegValue));
//  537 
//  538   MDR_USB->HRXFC = RegValue;
USB_SetHRXFC:
        LDR.N    R1,??DataTable57_20  ;; 0x40010090
        STR      R0,[R1, #+0]
//  539 }
        BX       LR               ;; return
//  540 
//  541 /**
//  542   * @brief  Returns USB_HTXFD register value
//  543   *
//  544   * @param  None
//  545   *
//  546   * @retval USB_HTXFD register value
//  547   */
//  548 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  549 uint32_t USB_GetHTXFD(void)
//  550 {
//  551   return MDR_USB->HTXFD;
USB_GetHTXFD:
        LDR.N    R0,??DataTable57_21  ;; 0x400100c0
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  552 }
//  553 
//  554 /**
//  555   * @brief  Writes to USB_HTXFD register
//  556   *
//  557   * @param  RegValue: new USB_HTXFD register value
//  558   *
//  559   * @retval None
//  560   */
//  561 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  562 void     USB_SetHTXFD(uint32_t RegValue)
//  563 {
//  564   /* Check the parameters */
//  565   assert_param(IS_USB_HTXFD_VALUE(RegValue));
//  566 
//  567   MDR_USB->HTXFD = RegValue;
USB_SetHTXFD:
        LDR.N    R1,??DataTable57_21  ;; 0x400100c0
        STR      R0,[R1, #+0]
//  568 }
        BX       LR               ;; return
//  569 
//  570 /**
//  571   * @brief  Returns USB_HTXFC register value
//  572   *
//  573   * @param  None
//  574   *
//  575   * @retval USB_HTXFC register value
//  576   */
//  577 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  578 uint32_t USB_GetHTXFC(void)
//  579 {
//  580   return MDR_USB->HTXFC;
USB_GetHTXFC:
        LDR.N    R0,??DataTable57_22  ;; 0x400100d0
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  581 }
//  582 
//  583 /**
//  584   * @brief  Writes to USB_HTXFC register
//  585   *
//  586   * @param  RegValue: new USB_HTXFC register value
//  587   *
//  588   * @retval None
//  589   */
//  590 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  591 void     USB_SetHTXFC(uint32_t RegValue)
//  592 {
//  593   /* Check the parameters */
//  594   assert_param(IS_USB_HTXFC_VALUE(RegValue));
//  595 
//  596   MDR_USB->HTXFC = RegValue;
USB_SetHTXFC:
        LDR.N    R1,??DataTable57_22  ;; 0x400100d0
        STR      R0,[R1, #+0]
//  597 }
        BX       LR               ;; return
//  598 
//  599 /**
//  600   * @brief  Returns USB_SEPx.CTRL register value
//  601   *
//  602   * @param  EndPointNumber: Select the USB End point peripheral.
//  603   *         This parameter can be one of the following values:
//  604   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  605   *
//  606   * @retval USB_SEPx.CTRL register value
//  607   */
//  608 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  609 uint32_t USB_GetSEPxCTRL(USB_EP_TypeDef EndPointNumber)
//  610 {
//  611   /* Check the parameters */
//  612   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  613 
//  614   return MDR_USB->USB_SEP[EndPointNumber].CTRL;
USB_GetSEPxCTRL:
        LSLS     R0,R0,#+4
        LDR.N    R1,??DataTable57_23  ;; 0x40010100
        LDR      R0,[R0, R1]
        BX       LR               ;; return
//  615 }
//  616 
//  617 /**
//  618   * @brief  Writes to USB_SEPx.CTRL register
//  619   *
//  620   * @param  EndPointNumber: Select the USB End point peripheral.
//  621   *         This parameter can be one of the following values:
//  622   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  623   *
//  624   * @param  RegValue: new USB_SEPx.CTRL register value
//  625   *
//  626   * @retval None
//  627   */
//  628 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  629 void     USB_SetSEPxCTRL(USB_EP_TypeDef EndPointNumber, uint32_t RegValue)
//  630 {
USB_SetSEPxCTRL:
        PUSH     {R4,LR}
//  631   /* Check the parameters */
//  632   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  633   assert_param(IS_USB_SEPx_CTRL_VALUE(RegValue));
//  634 
//  635   USB_SFR_SET(MDR_USB->USB_SEP[EndPointNumber].CTRL, RegValue);
        LSLS     R0,R0,#+4
        LDR.N    R2,??DataTable57_23  ;; 0x40010100
        LDR      R3,[R0, R2]
        UXTH     R4,R1
        ORRS     R3,R4,R3
        BIC      R1,R3,R1, LSR #+16
        STR      R1,[R0, R2]
//  636 }
        POP      {R4,PC}          ;; return
//  637 
//  638 /**
//  639   * @brief  Returns USB_SEPx.STS register value
//  640   *
//  641   * @param  EndPointNumber: Select the USB End point peripheral.
//  642   *         This parameter can be one of the following values:
//  643   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  644   *
//  645   * @retval USB_SEPx.STS register value
//  646   */
//  647 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  648 uint32_t USB_GetSEPxSTS(USB_EP_TypeDef EndPointNumber)
//  649 {
//  650   /* Check the parameters */
//  651   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  652 
//  653   return MDR_USB->USB_SEP[EndPointNumber].STS;
USB_GetSEPxSTS:
        LDR.N    R1,??DataTable57_23  ;; 0x40010100
        ADD      R0,R1,R0, LSL #+4
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
//  654 }
//  655 
//  656 /**
//  657   * @brief  Returns USB_SEPx.TS register value
//  658   *
//  659   * @param  EndPointNumber: Select the USB End point peripheral.
//  660   *         This parameter can be one of the following values:
//  661   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  662   *
//  663   * @retval USB_SEPx.TS register value
//  664   */
//  665 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  666 uint32_t USB_GetSEPxTS(USB_EP_TypeDef EndPointNumber)
//  667 {
//  668   /* Check the parameters */
//  669   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  670 
//  671   return MDR_USB->USB_SEP[EndPointNumber].TS;
USB_GetSEPxTS:
        LDR.N    R1,??DataTable57_23  ;; 0x40010100
        ADD      R0,R1,R0, LSL #+4
        LDR      R0,[R0, #+8]
        BX       LR               ;; return
//  672 }
//  673 
//  674 /**
//  675   * @brief  Returns USB_SEPx.NTS register value
//  676   *
//  677   * @param  EndPointNumber: Select the USB End point peripheral.
//  678   *         This parameter can be one of the following values:
//  679   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  680   *
//  681   * @retval USB_SEPx.NTS register value
//  682   */
//  683 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  684 uint32_t USB_GetSEPxNTS(USB_EP_TypeDef EndPointNumber)
//  685 {
//  686   /* Check the parameters */
//  687   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  688 
//  689   return MDR_USB->USB_SEP[EndPointNumber].NTS;
USB_GetSEPxNTS:
        LDR.N    R1,??DataTable57_23  ;; 0x40010100
        ADD      R0,R1,R0, LSL #+4
        LDR      R0,[R0, #+12]
        BX       LR               ;; return
//  690 }
//  691 
//  692 /**
//  693   * @brief  Returns USB_SC register value
//  694   *
//  695   * @param  None
//  696   *
//  697   * @retval USB_SC register value
//  698   */
//  699 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  700 uint32_t USB_GetSC(void)
//  701 {
//  702   return MDR_USB->SC;
USB_GetSC:
        LDR.N    R0,??DataTable57_24  ;; 0x40010140
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  703 }
//  704 
//  705 /**
//  706   * @brief  Writes to USB_SC register
//  707   *
//  708   * @param  RegValue: new USB_SC register value
//  709   *
//  710   * @retval None
//  711   */
//  712 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  713 void     USB_SetSC(uint32_t RegValue)
//  714 {
//  715   /* Check the parameters */
//  716   assert_param(IS_USB_SC_VALUE(RegValue));
//  717 
//  718   USB_SFR_SET(MDR_USB->SC, RegValue);
USB_SetSC:
        LDR.N    R1,??DataTable57_24  ;; 0x40010140
        B.N      ?Subroutine0
//  719 }
//  720 
//  721 /**
//  722   * @brief  Returns USB_SLS register value
//  723   *
//  724   * @param  None
//  725   *
//  726   * @retval USB_SLS register value
//  727   */
//  728 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  729 uint32_t USB_GetSLS(void)
//  730 {
//  731   return MDR_USB->SLS;
USB_GetSLS:
        LDR.N    R0,??DataTable57_25  ;; 0x40010144
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  732 }
//  733 
//  734 /**
//  735   * @brief  Returns USB_SIS register value
//  736   *
//  737   * @param  None
//  738   *
//  739   * @retval USB_SIS register value
//  740   */
//  741 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  742 uint32_t USB_GetSIS(void)
//  743 {
//  744   return MDR_USB->SIS;
USB_GetSIS:
        LDR.N    R0,??DataTable57_26  ;; 0x40010148
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  745 }
//  746 
//  747 /**
//  748   * @brief  Writes to USB_SIS register
//  749   *
//  750   * @param  RegValue: new USB_SIS register value
//  751   *
//  752   * @retval None
//  753   */
//  754 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  755 void     USB_SetSIS(uint32_t RegValue)
//  756 {
//  757   /* Check the parameters */
//  758   assert_param(IS_USB_SIS_VALUE(RegValue));
//  759 
//  760   /* USB_SIS bits may be only cleared by writing 1 */
//  761   MDR_USB->SIS = RegValue;
USB_SetSIS:
        LDR.N    R1,??DataTable57_26  ;; 0x40010148
        STR      R0,[R1, #+0]
//  762 }
        BX       LR               ;; return
//  763 
//  764 /**
//  765   * @brief  Returns USB_SIM register value
//  766   *
//  767   * @param  None
//  768   *
//  769   * @retval USB_SIM register value
//  770   */
//  771 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  772 uint32_t USB_GetSIM(void)
//  773 {
//  774   return MDR_USB->SIM;
USB_GetSIM:
        LDR.N    R0,??DataTable57_27  ;; 0x4001014c
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  775 }
//  776 
//  777 /**
//  778   * @brief  Writes to USB_SIM register
//  779   *
//  780   * @param  RegValue: new USB_SIM register value
//  781   *
//  782   * @retval None
//  783   */
//  784 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  785 void     USB_SetSIM(uint32_t RegValue)
//  786 {
//  787   /* Check the parameters */
//  788   assert_param(IS_USB_SIM_VALUE(RegValue));
//  789 
//  790   USB_SFR_SET(MDR_USB->SIM, RegValue);
USB_SetSIM:
        LDR.N    R1,??DataTable57_27  ;; 0x4001014c
        B.N      ?Subroutine0
//  791 }
//  792 
//  793 /**
//  794   * @brief  Returns USB_SA register value
//  795   *
//  796   * @param  None
//  797   *
//  798   * @retval USB_SA register value
//  799   */
//  800 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  801 uint32_t USB_GetSA(void)
//  802 {
//  803   return MDR_USB->SA;
USB_GetSA:
        LDR.N    R0,??DataTable57_28  ;; 0x40010150
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  804 }
//  805 
//  806 /**
//  807   * @brief  Writes to USB_SA register
//  808   *
//  809   * @param  RegValue: new USB_SA register value
//  810   *
//  811   * @retval None
//  812   */
//  813 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  814 void     USB_SetSA(uint32_t RegValue)
//  815 {
//  816   /* Check the parameters */
//  817   assert_param(IS_USB_SA_VALUE(RegValue));
//  818 
//  819   MDR_USB->SA = RegValue;
USB_SetSA:
        LDR.N    R1,??DataTable57_28  ;; 0x40010150
        STR      R0,[R1, #+0]
//  820 }
        BX       LR               ;; return
//  821 
//  822 /**
//  823   * @brief  Returns USB_SFN register value
//  824   *
//  825   * @param  None
//  826   *
//  827   * @retval USB_SFN register value
//  828   */
//  829 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  830 uint32_t USB_GetSFN(void)
//  831 {
//  832   return MDR_USB->SFN_H;
USB_GetSFN:
        LDR.N    R0,??DataTable57_29  ;; 0x40010158
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  833 }
//  834 
//  835 /**
//  836   * @brief  Returns USB_SEPx.RXFD register value
//  837   *
//  838   * @param  EndPointNumber: Select the USB End point peripheral.
//  839   *         This parameter can be one of the following values:
//  840   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  841   *
//  842   * @retval USB_SEPx.RXFD register value
//  843   */
//  844 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  845 uint32_t USB_GetSEPxRXFD(USB_EP_TypeDef EndPointNumber)
//  846 {
//  847   /* Check the parameters */
//  848   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  849 
//  850   return MDR_USB->USB_SEP_FIFO[EndPointNumber].RXFD;
USB_GetSEPxRXFD:
        LSLS     R0,R0,#+7
        LDR.N    R1,??DataTable57_30  ;; 0x40010180
        LDR      R0,[R0, R1]
        BX       LR               ;; return
//  851 }
//  852 
//  853 /**
//  854   * @brief  Returns USB_SEPx.RXFDC register value
//  855   *
//  856   * @param  EndPointNumber: Select the USB End point peripheral.
//  857   *         This parameter can be one of the following values:
//  858   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  859   *
//  860   * @retval USB_SEPx.RXFDC register value
//  861   */
//  862 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  863 uint32_t USB_GetSEPxRXFDC(USB_EP_TypeDef EndPointNumber)
//  864 {
//  865   /* Check the parameters */
//  866   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  867 
//  868   return MDR_USB->USB_SEP_FIFO[EndPointNumber].RXFDC_H;
USB_GetSEPxRXFDC:
        LDR.N    R1,??DataTable57_30  ;; 0x40010180
        ADD      R0,R1,R0, LSL #+7
        LDR      R0,[R0, #+12]
        BX       LR               ;; return
//  869 }
//  870 
//  871 /**
//  872   * @brief  Returns USB_SEPx.RXFC register value
//  873   *
//  874   * @param  EndPointNumber: Select the USB End point peripheral.
//  875   *         This parameter can be one of the following values:
//  876   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  877   *
//  878   * @retval USB_SEPx.RXFC register value
//  879   */
//  880 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  881 uint32_t USB_GetSEPxRXFC(USB_EP_TypeDef EndPointNumber)
//  882 {
//  883   /* Check the parameters */
//  884   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  885 
//  886   return MDR_USB->USB_SEP_FIFO[EndPointNumber].RXFC;
USB_GetSEPxRXFC:
        LDR.N    R1,??DataTable57_30  ;; 0x40010180
        ADD      R0,R1,R0, LSL #+7
        LDR      R0,[R0, #+16]
        BX       LR               ;; return
//  887 }
//  888 
//  889 /**
//  890   * @brief  Writes to USB_SEPx.RXFC register
//  891   *
//  892   * @param  EndPointNumber: Select the USB End point peripheral.
//  893   *         This parameter can be one of the following values:
//  894   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  895   *
//  896   * @param  RegValue: new USB_SEPx.RXFC register value
//  897   *
//  898   * @retval None
//  899   */
//  900 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  901 void     USB_SetSEPxRXFC(USB_EP_TypeDef EndPointNumber, uint32_t RegValue)
//  902 {
//  903   /* Check the parameters */
//  904   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  905   assert_param(IS_USB_SEPx_RXFC_VALUE(RegValue));
//  906 
//  907   MDR_USB->USB_SEP_FIFO[EndPointNumber].RXFC = RegValue;
USB_SetSEPxRXFC:
        LDR.N    R2,??DataTable57_30  ;; 0x40010180
        ADD      R0,R2,R0, LSL #+7
        STR      R1,[R0, #+16]
//  908 }
        BX       LR               ;; return
//  909 
//  910 /**
//  911   * @brief  Returns USB_SEPx.TXFD register value
//  912   *
//  913   * @param  EndPointNumber: Select the USB End point peripheral.
//  914   *         This parameter can be one of the following values:
//  915   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  916   *
//  917   * @retval USB_SEPx.TXFD register value
//  918   */
//  919 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  920 uint32_t USB_GetSEPxTXFD(USB_EP_TypeDef EndPointNumber)
//  921 {
//  922   /* Check the parameters */
//  923   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  924 
//  925   return MDR_USB->USB_SEP_FIFO[EndPointNumber].TXFD;
USB_GetSEPxTXFD:
        LDR.N    R1,??DataTable57_30  ;; 0x40010180
        ADD      R0,R1,R0, LSL #+7
        LDR      R0,[R0, #+64]
        BX       LR               ;; return
//  926 }
//  927 
//  928 /**
//  929   * @brief  Writes to USB_SEPx.TXFD register
//  930   *
//  931   * @param  EndPointNumber: Select the USB End point peripheral.
//  932   *         This parameter can be one of the following values:
//  933   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  934   *
//  935   * @param  RegValue: new USB_SEPx.TXFD register value
//  936   *
//  937   * @retval None
//  938   */
//  939 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  940 void     USB_SetSEPxTXFD(USB_EP_TypeDef EndPointNumber, uint32_t RegValue)
//  941 {
//  942   /* Check the parameters */
//  943   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  944   assert_param(IS_USB_SEPx_TXFD_VALUE(RegValue));
//  945 
//  946   MDR_USB->USB_SEP_FIFO[EndPointNumber].TXFD = RegValue;
USB_SetSEPxTXFD:
        LDR.N    R2,??DataTable57_30  ;; 0x40010180
        ADD      R0,R2,R0, LSL #+7
        STR      R1,[R0, #+64]
//  947 }
        BX       LR               ;; return
//  948 
//  949 /**
//  950   * @brief  Returns USB_SEPx.TXFDC register value
//  951   *
//  952   * @param  EndPointNumber: Select the USB End point peripheral.
//  953   *         This parameter can be one of the following values:
//  954   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  955   *
//  956   * @retval USB_SEPx.TXFC register value
//  957   */
//  958 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  959 uint32_t USB_GetSEPxTXFDC(USB_EP_TypeDef EndPointNumber)
//  960 {
//  961   /* Check the parameters */
//  962   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  963 
//  964   return MDR_USB->USB_SEP_FIFO[EndPointNumber].TXFDC;
USB_GetSEPxTXFDC:
        LDR.N    R1,??DataTable57_30  ;; 0x40010180
        ADD      R0,R1,R0, LSL #+7
        LDR      R0,[R0, #+80]
        BX       LR               ;; return
//  965 }
//  966 
//  967 /**
//  968   * @brief  Writes to USB_SEPx.TXFDC register
//  969   *
//  970   * @param  EndPointNumber: Select the USB End point peripheral.
//  971   *         This parameter can be one of the following values:
//  972   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  973   *
//  974   * @param  RegValue: new USB_SEPx.TXFDC register value
//  975   *
//  976   * @retval None
//  977   */
//  978 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  979 void     USB_SetSEPxTXFDC(USB_EP_TypeDef EndPointNumber, uint32_t RegValue)
//  980 {
//  981   /* Check the parameters */
//  982   assert_param(IS_USB_ENDPOINT(EndPointNumber));
//  983   assert_param(IS_USB_SEPx_TXFDC_VALUE(RegValue));
//  984 
//  985   MDR_USB->USB_SEP_FIFO[EndPointNumber].TXFDC = RegValue;
USB_SetSEPxTXFDC:
        LDR.N    R2,??DataTable57_30  ;; 0x40010180
        ADD      R0,R2,R0, LSL #+7
        STR      R1,[R0, #+80]
//  986 }
        BX       LR               ;; return
//  987 
//  988 /**
//  989   * @brief  Invert EPDATASEQ bit in USB_SEPx.CTRL register
//  990   *
//  991   * @param  EndPointNumber: Select the USB End point peripheral.
//  992   *         This parameter can be one of the following values:
//  993   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  994   *
//  995   * @retval None
//  996   */
//  997 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  998 void     USB_SEPxToggleEPDATASEQ(USB_EP_TypeDef EndPointNumber)
//  999 {
// 1000   uint32_t tmpreg;
// 1001 
// 1002   /* Check the parameters */
// 1003   assert_param(IS_USB_ENDPOINT(EndPointNumber));
// 1004 
// 1005   tmpreg = MDR_USB->USB_SEP[EndPointNumber].CTRL;
USB_SEPxToggleEPDATASEQ:
        LSLS     R0,R0,#+4
        LDR.N    R1,??DataTable57_23  ;; 0x40010100
        LDR      R2,[R0, R1]
// 1006   tmpreg = tmpreg ^ USB_SEPx_CTRL_EPDATASEQ_Data1;
// 1007   MDR_USB->USB_SEP[EndPointNumber].CTRL = tmpreg;
        EOR      R2,R2,#0x4
        STR      R2,[R0, R1]
// 1008 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_1:
        DC32     0x40010380

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_2:
        DC32     0x40010384

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_3:
        DC32     0x40010000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_4:
        DC32     0x40010004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_5:
        DC32     0x40010008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_6:
        DC32     0x4001000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_7:
        DC32     0x40010010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_8:
        DC32     0x40010014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_9:
        DC32     0x4001001c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_10:
        DC32     0x40010020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_11:
        DC32     0x40010024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_12:
        DC32     0x40010028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_13:
        DC32     0x4001002c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_14:
        DC32     0x40010030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_15:
        DC32     0x40010034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_16:
        DC32     0x40010038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_17:
        DC32     0x4001003c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_18:
        DC32     0x40010080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_19:
        DC32     0x4001008c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_20:
        DC32     0x40010090

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_21:
        DC32     0x400100c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_22:
        DC32     0x400100d0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_23:
        DC32     0x40010100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_24:
        DC32     0x40010140

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_25:
        DC32     0x40010144

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_26:
        DC32     0x40010148

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_27:
        DC32     0x4001014c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_28:
        DC32     0x40010150

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_29:
        DC32     0x40010158

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable57_30:
        DC32     0x40010180

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1009 
// 1010 /** @} */ /* End of group USB_Private_Functions */
// 1011 
// 1012 /** @} */ /* End of group USB */
// 1013 
// 1014 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
// 1015 
// 1016 /******************* (C) COPYRIGHT 2011 Phyton *********************************
// 1017 *
// 1018 * END OF FILE MDR32F9Qx_usb.c */
// 1019 
// 
// 610 bytes in section .text
// 
// 610 bytes of CODE memory
//
//Errors: none
//Warnings: none
