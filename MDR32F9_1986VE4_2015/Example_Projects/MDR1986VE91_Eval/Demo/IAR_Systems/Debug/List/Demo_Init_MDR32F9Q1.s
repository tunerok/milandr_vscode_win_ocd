///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:55 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Demo_Init_MDR32F9Q1.c                  /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Demo_Init_MDR32F9Q1.c --preprocess     /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\Demo_Init_MDR3 /
//                    2F9Q1.s                                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Demo_Init_MDR32F9Q1

        #define SHT_PROGBITS 0x1

        EXTERN EBC_Init
        EXTERN EBC_StructInit
        EXTERN LCD_INIT
        EXTERN PORT_Init
        EXTERN PORT_ResetBits
        EXTERN RST_CLK_CPU_PLLconfig
        EXTERN RST_CLK_PCLKcmd

        PUBLIC ClockConfigure
        PUBLIC Demo_Init
        PUBLIC ExtBus_Setup

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\Demo_Init_MDR32F9Q1.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Demo_Init_MDR32F9Q1.c
//    4   * @author  Phyton Application Team
//    5   * @version V3.0.0
//    6   * @date    09.09.2011
//    7   * @brief   Initializes the demonstration application for MDR32F9Q1_Rev0 and
//    8   *          MDR32F9Q1_Rev1 evaluation boards
//    9   ******************************************************************************
//   10   * <br><br>
//   11   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   12   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   13   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY
//   14   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   15   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   16   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT 2011 Phyton</center></h2>
//   19   */
//   20 
//   21 /* Includes ------------------------------------------------------------------*/
//   22 #include "MDR32F9Qx_config.h"
//   23 #include <MDR32Fx.h>
//   24 #include <MDR32F9Qx_port.h>
//   25 #include <MDR32F9Qx_rst_clk.h>
//   26 #include <MDR32F9Qx_uart.h>
//   27 #include <MDR32F9Qx_ebc.h>
//   28 #include "MDR32F9Qx_board.h"
//   29 #include "lcd.h"
//   30 #include "leds.h"
//   31 #include "demo_init.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute PORT_InitTypeDef PortInitStructure
PortInitStructure:
        DS8 12
//   32 
//   33 #if defined (USE_MDR32F9Q1_Rev0) || defined (USE_MDR32F9Q1_Rev1)
//   34 
//   35 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   36   * @{
//   37   */
//   38 
//   39 /** @addtogroup Demo_Setup Demo Setup
//   40   * @{
//   41   */
//   42 
//   43 /** @defgroup __MDR32F9Q1_Demo_Setup MDR32F9Q1 evaluation boards specific
//   44   * @{
//   45   */
//   46 
//   47 /** @defgroup __MDR32F9Q1_Demo_Setup_Private_Constants MDR32F9Q1 Demo Setup Private Constants
//   48   * @{
//   49   */
//   50 
//   51 #define ALL_PORTS_CLK   (RST_CLK_PCLK_PORTA | RST_CLK_PCLK_PORTB | \ 
//   52                          RST_CLK_PCLK_PORTC | RST_CLK_PCLK_PORTD | \ 
//   53                          RST_CLK_PCLK_PORTE | RST_CLK_PCLK_PORTF)
//   54 
//   55 /** @} */ /* End of group __MDR32F9Q1_Demo_Setup_Private_Constants */
//   56 
//   57 /** @defgroup __MDR32F9Q1_Demo_Setup_Private_Variables MDR32F9Q1 Demo Setup Private Variables
//   58   * @{
//   59   */
//   60 
//   61 /** @} */ /* End of group __MDR32F9Q1_Demo_Setup_Private_Variables */
//   62 
//   63 /** @defgroup __MDR32F9Q1_Demo_Setup_Private_Functions MDR32F9Q1 Demo Setup Private Functions
//   64   * @{
//   65   */
//   66 
//   67 /*******************************************************************************
//   68 * Function Name  : ExtBus_Setup
//   69 * Description    : Configures the External Bus.
//   70 * Input          : None
//   71 * Output         : None
//   72 * Return         : None
//   73 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 void ExtBus_Setup(void)
//   75 {
ExtBus_Setup:
        PUSH     {LR}
        SUB      SP,SP,#+20
//   76 	EBC_InitTypeDef EBC_InitStruct;
//   77 
//   78 	/* Enables the RTCHSE clock on the EBC */
//   79   RST_CLK_PCLKcmd(RST_CLK_PCLK_EBC, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+1073741824
        BL       RST_CLK_PCLKcmd
//   80 
//   81   EBC_StructInit(&EBC_InitStruct);
        ADD      R0,SP,#+0
        BL       EBC_StructInit
//   82 
//   83   /* Configure External Bus */
//   84   EBC_InitStruct.EBC_WaitState = EBC_WAIT_STATE_12HCLK;
        MOVS     R0,#+9
        STRB     R0,[SP, #+8]
//   85   EBC_InitStruct.EBC_Mode          = EBC_MODE_ROM;
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
//   86 
//   87   EBC_Init(&EBC_InitStruct);
        ADD      R0,SP,#+0
        BL       EBC_Init
//   88 }
        ADD      SP,SP,#+20
        POP      {PC}             ;; return
//   89 
//   90 /*******************************************************************************
//   91 * Function Name  : ClockConfigure
//   92 * Description    : Configures the CPU_PLL and RTCHSE clock.
//   93 * Input          : None
//   94 * Output         : None
//   95 * Return         : None
//   96 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   97 void ClockConfigure(void)
//   98 {
ClockConfigure:
        PUSH     {R7,LR}
//   99   /* Configure CPU_PLL clock */
//  100   RST_CLK_CPU_PLLconfig (RST_CLK_CPU_PLLsrcHSIdiv1,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       RST_CLK_CPU_PLLconfig
//  101 
//  102   /* Enables the RTCHSE clock on all ports */
//  103   RST_CLK_PCLKcmd(ALL_PORTS_CLK, ENABLE);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1  ;; 0x23e00000
        POP      {R2,LR}
        B.W      RST_CLK_PCLKcmd
//  104 }
//  105 
//  106 /*******************************************************************************
//  107 * Function Name  : Demo_Init
//  108 * Description    : Initializes the demonstration application
//  109 * Input          : None
//  110 * Output         : None
//  111 * Return         : None
//  112 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  113 void Demo_Init(void)
//  114 {
Demo_Init:
        PUSH     {R4-R6,LR}
//  115   ClockConfigure();
        BL       ClockConfigure
//  116 
//  117 /************************ LCD Initialization *************************/
//  118 
//  119   /* Configure PORTA pins for data transfer to/from LCD */
//  120   PortInitStructure.PORT_Pin = LCD_DATA_BUS_8;
        LDR.N    R4,??DataTable1_1
        MOVS     R0,#+255
        STRH     R0,[R4, #+0]
//  121   PortInitStructure.PORT_FUNC = PORT_FUNC_MAIN;
        MOVS     R0,#+1
        STRB     R0,[R4, #+8]
//  122   PortInitStructure.PORT_SPEED = PORT_SPEED_SLOW;
        STRB     R0,[R4, #+9]
//  123   PortInitStructure.PORT_MODE = PORT_MODE_DIGITAL;
        STRB     R0,[R4, #+10]
//  124   PortInitStructure.PORT_OE = PORT_OE_IN;
        MOVS     R0,#+0
        STRB     R0,[R4, #+2]
//  125 
//  126   PORT_Init(MDR_PORTA, &PortInitStructure);
        MOV      R1,R4
        LDR.N    R0,??DataTable1_2  ;; 0x400a8000
        BL       PORT_Init
//  127 
//  128   /* Configure PORTE pin4 and pin5 for LCD crystals control */
//  129   PortInitStructure.PORT_Pin = PORT_Pin_4 | PORT_Pin_5;
        MOVS     R0,#+48
        STRH     R0,[R4, #+0]
//  130 
//  131   PORT_Init(MDR_PORTE, &PortInitStructure);
        LDR.N    R5,??DataTable1_3  ;; 0x400c8000
        BL       ??Subroutine0_0
//  132 
//  133   /* Configure PORTE pin11 for data/command mode switching */
//  134   PortInitStructure.PORT_Pin = PORT_Pin_11;
??CrossCallReturnLabel_4:
        MOV      R0,#+2048
        STRH     R0,[R4, #+0]
//  135 
//  136   PORT_Init(MDR_PORTE, &PortInitStructure);
        BL       ??Subroutine0_0
//  137 
//  138   /* Configure PORTC pin2 for read/write control */
//  139   PortInitStructure.PORT_Pin = PORT_Pin_2;
??CrossCallReturnLabel_3:
        MOVS     R0,#+4
        STRH     R0,[R4, #+0]
//  140 
//  141   PORT_Init(MDR_PORTC, &PortInitStructure);
        LDR.N    R5,??DataTable1_4  ;; 0x400b8000
        BL       ??Subroutine0_0
//  142 
//  143   /* Configure PORTC pin7 for CLOCK signal control */
//  144   PortInitStructure.PORT_Pin = PORT_Pin_7;
??CrossCallReturnLabel_2:
        MOVS     R0,#+128
        STRH     R0,[R4, #+0]
//  145   PortInitStructure.PORT_SPEED = PORT_SPEED_FAST;
        MOVS     R0,#+2
        BL       ?Subroutine0
//  146 
//  147   PORT_Init(MDR_PORTC, &PortInitStructure);
//  148 
//  149   /* Configure PORTC pin9 for RESET signal control */
//  150   PortInitStructure.PORT_Pin = PORT_Pin_9;
??CrossCallReturnLabel_6:
        MOV      R0,#+512
        STRH     R0,[R4, #+0]
//  151   PortInitStructure.PORT_OE = PORT_OE_OUT;
        BL       ?Subroutine1
//  152   PortInitStructure.PORT_FUNC = PORT_FUNC_PORT;
//  153   PortInitStructure.PORT_SPEED = PORT_SPEED_SLOW;
??CrossCallReturnLabel_7:
        BL       ?Subroutine0
//  154 
//  155   PORT_Init(MDR_PORTC, &PortInitStructure);
//  156 
//  157   ExtBus_Setup();
??CrossCallReturnLabel_5:
        BL       ExtBus_Setup
//  158 
//  159   LCD_INIT();
        BL       LCD_INIT
//  160 
//  161 /************************ Joystick Initialization *************************/
//  162 
//  163   /* Configure PORTC pins 10..14 for input to handle joystick events */
//  164   PortInitStructure.PORT_Pin   = (PORT_Pin_10 | PORT_Pin_11 | PORT_Pin_12 |
//  165                                   PORT_Pin_13 | PORT_Pin_14);
        MOV      R6,#+31744
        STRH     R6,[R4, #+0]
//  166   PortInitStructure.PORT_OE    = PORT_OE_IN;
        MOVS     R0,#+0
        STRB     R0,[R4, #+2]
//  167   PortInitStructure.PORT_FUNC  = PORT_FUNC_PORT;
        STRH     R0,[R4, #+8]
//  168   PortInitStructure.PORT_SPEED = PORT_OUTPUT_OFF;
//  169 
//  170   PORT_Init(MDR_PORTC, &PortInitStructure);
        BL       ??Subroutine0_0
//  171 
//  172 /************************ LEDs Initialization *************************/
//  173 
//  174   /* Configure PORTD pins 10..14 for output to switch LEDs on/off */
//  175   PortInitStructure.PORT_Pin   = LEDs_PINs;
??CrossCallReturnLabel_1:
        STRH     R6,[R4, #+0]
//  176   PortInitStructure.PORT_OE    = PORT_OE_OUT;
        BL       ?Subroutine1
//  177   PortInitStructure.PORT_FUNC  = PORT_FUNC_PORT;
//  178   PortInitStructure.PORT_SPEED = PORT_SPEED_SLOW;
??CrossCallReturnLabel_8:
        STRB     R0,[R4, #+9]
//  179 
//  180   PORT_Init(MDR_PORTD, &PortInitStructure);
        LDR.N    R5,??DataTable1_5  ;; 0x400c0000
        BL       ??Subroutine0_0
//  181 
//  182   /* All LEDs switch off */
//  183   PORT_ResetBits(MDR_PORTD, LEDs_PINs);
??CrossCallReturnLabel_0:
        MOV      R1,R6
        MOV      R0,R5
        POP      {R4-R6,LR}
        B.W      PORT_ResetBits
//  184 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x23e00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     PortInitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x400a8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x400c8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x400c0000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        MOVS     R0,#+1
        STRB     R0,[R4, #+2]
        MOVS     R0,#+0
        STRB     R0,[R4, #+8]
        MOVS     R0,#+1
        BX       LR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        STRB     R0,[R4, #+9]
??Subroutine0_0:
        MOV      R1,R4
        MOV      R0,R5
        B.W      PORT_Init

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  185 
//  186 /** @} */ /* End of group __MDR32F9Q1_Demo_Setup_Private_Functions */
//  187 
//  188 /** @} */ /* End of group __MDR32F9Q1_Demo_Setup */
//  189 
//  190 /** @} */ /* End of group Demo_Setup */
//  191 
//  192 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  193 
//  194 #endif /* USE_MDR32F9Q1_Rev0 || USE_MDR32F9Q1_Rev1 */
//  195 
//  196 /******************* (C) COPYRIGHT 2011 Phyton *******************
//  197 *
//  198 * END OF FILE Demo_Init_MDR32F9Q1.c */
//  199 
// 
//  12 bytes in section .bss
// 244 bytes in section .text
// 
// 244 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: none
