///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:28:24 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Main.c                                 /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Main.c --preprocess                    /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\Main.s         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Main

        #define SHT_PROGBITS 0x1

        EXTERN PORT_Init
        EXTERN PORT_ReadInputDataBit
        EXTERN PORT_ResetBits
        EXTERN PORT_SetBits
        EXTERN PORT_StructInit
        EXTERN RST_CLK_PCLKcmd

        PUBLIC DMA_AltCtrlStr
        PUBLIC DMA_InitStr
        PUBLIC DMA_PriCtrlStr
        PUBLIC H_Level
        PUBLIC Init_All_Ports
        PUBLIC PORT_InitStructure
        PUBLIC main

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\Main.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Examples/MDR32F9Q1_EVAL/PORT/Joystick_LEDs/main.c
//    4   * @author  Milandr Application Team
//    5   * @version V1.2.0
//    6   * @date    04/07/2011
//    7   * @brief   Main program body.
//    8   ******************************************************************************
//    9   * <br><br>
//   10   *
//   11   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   12   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   13   * TIME. AS A RESULT, MILANDR SHALL NOT BE HELD LIABLE FOR ANY
//   14   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   15   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   16   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT 2011 Milandr</center></h2>
//   19   */
//   20 
//   21 /* Includes ------------------------------------------------------------------*/
//   22 #include "MDR32F9Qx_config.h"
//   23 #include "MDR32Fx.h"
//   24 #include "MDR32F9Qx_port.h"
//   25 #include "MDR32F9Qx_rst_clk.h"
//   26 #include "MDR32F9Qx_adc.h"
//   27 #include "MDR32F9Qx_dma.h"
//   28 /** @addtogroup __MDR32F9Qx_StdPeriph_Examples MDR32F9Qx StdPeriph Examples
//   29   * @{
//   30   */
//   31 
//   32 /** @addtogroup __MDR32F9Q1_EVAL MDR32F9Q1 Evaluation Board
//   33   * @{
//   34   */
//   35 //---------------------------------------------ext

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   36 DMA_ChannelInitTypeDef DMA_InitStr;
DMA_InitStr:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   37 DMA_CtrlDataInitTypeDef DMA_PriCtrlStr;
DMA_PriCtrlStr:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   38 DMA_CtrlDataInitTypeDef DMA_AltCtrlStr;
DMA_AltCtrlStr:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 __IO uint32_t H_Level;
H_Level:
        DS8 4
//   40 //---------------------------------------------ext-
//   41 /** @addtogroup PORT_Joystick_LEDs_91 PORT_Joystick_LEDs
//   42   * @{
//   43   */
//   44 
//   45 /* Private typedef -----------------------------------------------------------*/
//   46 /* Private define ------------------------------------------------------------*/
//   47 #define ALL_PORTS_CLK (RST_CLK_PCLK_PORTA | RST_CLK_PCLK_PORTB | \ 
//   48                        RST_CLK_PCLK_PORTC | RST_CLK_PCLK_PORTD | \ 
//   49                        RST_CLK_PCLK_PORTE | RST_CLK_PCLK_PORTF)
//   50 
//   51 /* Private macro -------------------------------------------------------------*/
//   52 /* Private variables ---------------------------------------------------------*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   53 PORT_InitTypeDef PORT_InitStructure;
PORT_InitStructure:
        DS8 12
//   54 
//   55 /* Private function prototypes -----------------------------------------------*/
//   56 /* Private functions ---------------------------------------------------------*/
//   57 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 void Init_All_Ports(void)
//   59 {
Init_All_Ports:
        PUSH     {R3-R5,LR}
//   60   /* Enable the RTCHSE clock on all ports */
//   61   RST_CLK_PCLKcmd(ALL_PORTS_CLK, ENABLE);
        LDR.N    R4,??DataTable1  ;; 0x23e00000
        MOVS     R1,#+1
        MOV      R0,R4
        BL       RST_CLK_PCLKcmd
//   62 
//   63   /* Configure all ports to the state as after reset, i.e. low power consumption */
//   64   PORT_StructInit(&PORT_InitStructure);
        LDR.N    R5,??DataTable1_1
        MOV      R0,R5
        BL       PORT_StructInit
//   65   PORT_Init(MDR_PORTA, &PORT_InitStructure);
        MOV      R1,R5
        LDR.N    R0,??DataTable1_2  ;; 0x400a8000
        BL       PORT_Init
//   66   PORT_Init(MDR_PORTB, &PORT_InitStructure);
        MOV      R1,R5
        LDR.N    R0,??DataTable1_3  ;; 0x400b0000
        BL       PORT_Init
//   67   PORT_Init(MDR_PORTC, &PORT_InitStructure);
        MOV      R1,R5
        LDR.N    R0,??DataTable1_4  ;; 0x400b8000
        BL       PORT_Init
//   68   PORT_Init(MDR_PORTD, &PORT_InitStructure);
        MOV      R1,R5
        LDR.N    R0,??DataTable1_5  ;; 0x400c0000
        BL       PORT_Init
//   69   PORT_Init(MDR_PORTE, &PORT_InitStructure);
        MOV      R1,R5
        LDR.N    R0,??DataTable1_6  ;; 0x400c8000
        BL       PORT_Init
//   70   PORT_Init(MDR_PORTF, &PORT_InitStructure);
        MOV      R1,R5
        LDR.N    R0,??DataTable1_7  ;; 0x400e8000
        BL       PORT_Init
//   71 
//   72   /* Disable the RTCHSE clock on all ports */
//   73   RST_CLK_PCLKcmd(ALL_PORTS_CLK, DISABLE);
        MOVS     R1,#+0
        MOV      R0,R4
        POP      {R2,R4,R5,LR}
        B.W      RST_CLK_PCLKcmd
//   74 }
//   75 
//   76 
//   77 /**
//   78   * @brief  Main program.
//   79   * @param  None
//   80   * @retval None
//   81   */
//   82 #ifdef __CC_ARM
//   83 int main(void)
//   84 #else

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   85 void main(void)
//   86 #endif
//   87 {
//   88 uint32_t tmp_port_pin;
//   89 
//   90   /*!< Usually, reset is done before the program is to be loaded into microcontroller,
//   91        and there is no need to perform any special operations to switch the ports
//   92        to low power consumption mode explicitly. So, the function Init_All_Ports
//   93        is used here for demonstration purpose only.
//   94   */
//   95   Init_All_Ports();
main:
        BL       Init_All_Ports
//   96 
//   97   /* Enables the RTCHSE clock on PORTC and PORTD */
//   98   RST_CLK_PCLKcmd(RST_CLK_PCLK_PORTC | RST_CLK_PCLK_PORTD, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+25165824
        BL       RST_CLK_PCLKcmd
//   99 
//  100   /* Configure PORTC pins 10..14 for input to handle joystick events */
//  101 
//  102   PORT_InitStructure.PORT_Pin   = (PORT_Pin_10 | PORT_Pin_11 | PORT_Pin_12 |
//  103                                    PORT_Pin_13 | PORT_Pin_14);
        LDR.N    R4,??DataTable1_1
        MOV      R6,#+31744
        STRH     R6,[R4, #+0]
//  104   PORT_InitStructure.PORT_OE    = PORT_OE_IN;
        MOVS     R0,#+0
        STRB     R0,[R4, #+2]
//  105   PORT_InitStructure.PORT_FUNC  = PORT_FUNC_PORT;
        STRB     R0,[R4, #+8]
//  106   PORT_InitStructure.PORT_MODE  = PORT_MODE_DIGITAL;
        MOVS     R0,#+1
        STRB     R0,[R4, #+10]
//  107   PORT_InitStructure.PORT_SPEED = PORT_SPEED_SLOW;
        STRB     R0,[R4, #+9]
//  108 
//  109   PORT_Init(MDR_PORTC, &PORT_InitStructure);
        LDR.N    R5,??DataTable1_4  ;; 0x400b8000
        MOV      R1,R4
        MOV      R0,R5
        BL       PORT_Init
//  110 
//  111   /* Configure PORTD pins 10..14 for output to switch LEDs on/off */
//  112 
//  113   PORT_InitStructure.PORT_Pin   = (PORT_Pin_10 | PORT_Pin_11 | PORT_Pin_12 |
//  114                                    PORT_Pin_13 | PORT_Pin_14);
        STRH     R6,[R4, #+0]
//  115   PORT_InitStructure.PORT_OE    = PORT_OE_OUT;
        MOVS     R0,#+1
        STRB     R0,[R4, #+2]
//  116   PORT_InitStructure.PORT_FUNC  = PORT_FUNC_PORT;
        MOVS     R0,#+0
        STRB     R0,[R4, #+8]
//  117   PORT_InitStructure.PORT_MODE  = PORT_MODE_DIGITAL;
        MOVS     R0,#+1
        STRB     R0,[R4, #+10]
//  118   PORT_InitStructure.PORT_SPEED = PORT_SPEED_SLOW;
        STRB     R0,[R4, #+9]
//  119 
//  120   PORT_Init(MDR_PORTD, &PORT_InitStructure);
        LDR.N    R6,??DataTable1_5  ;; 0x400c0000
        MOV      R1,R4
        MOV      R0,R6
        BL       PORT_Init
//  121 
//  122   /* In this infinite loop, PORTC pins 10..14 (joystick) are iteratively scanned and
//  123      PORTD output pins (LED indicators) are appropriately set/cleared.
//  124      Note: in this example, the following fact about MDR32F9Q1 eval board is used: the
//  125      joystic input pin numbers exactly match LED output pins, i.e:
//  126          SEL    => VD7
//  127          UP     => VD8
//  128          DOWN   => VD9
//  129          LEFT   => VD10
//  130          RIGHT  => VD11
//  131   */
//  132   for (tmp_port_pin = PORT_Pin_10; ;
        MOV      R4,#+1024
??main_0:
        MOV      R7,R4
//  133        tmp_port_pin = (tmp_port_pin >= PORT_Pin_14 ? PORT_Pin_10 : (tmp_port_pin << 1)))
//  134   {
//  135     if (PORT_ReadInputDataBit(MDR_PORTC, tmp_port_pin) == Bit_RESET)
??main_1:
        MOV      R1,R7
        MOV      R0,R5
        BL       PORT_ReadInputDataBit
        CMP      R0,#+0
        MOV      R1,R7
        MOV      R0,R6
        BNE.N    ??main_2
//  136     {
//  137       PORT_SetBits(MDR_PORTD, tmp_port_pin);
        BL       PORT_SetBits
        B.N      ??main_3
//  138     }
//  139     else
//  140     {
//  141       PORT_ResetBits(MDR_PORTD, tmp_port_pin);
??main_2:
        BL       PORT_ResetBits
//  142     }
//  143   }
??main_3:
        CMP      R7,#+16384
        IT       CC 
        LSLCC    R7,R7,#+1
        BCC.N    ??main_1
        B.N      ??main_0
//  144 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x23e00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     PORT_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x400a8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x400b0000

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

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x400c8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     0x400e8000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  145 
//  146 /**
//  147   * @brief  Reports the source file ID, the source line number
//  148   *         and expression text (if USE_ASSERT_INFO == 2) where
//  149   *         the assert_param error has occurred.
//  150   * @param  file_id: pointer to the source file name
//  151   * @param  line: assert_param error line source number
//  152   * @param  expr:
//  153   * @retval None
//  154   */
//  155 #if (USE_ASSERT_INFO == 1)
//  156 void assert_failed(uint32_t file_id, uint32_t line)
//  157 {
//  158   /* User can add his own implementation to report the source file ID and line number.
//  159      Ex: printf("Wrong parameters value: file Id %d on line %d\r\n", file_id, line) */
//  160 
//  161   /* Infinite loop */
//  162   while (1)
//  163   {
//  164   }
//  165 }
//  166 #elif (USE_ASSERT_INFO == 2)
//  167 void assert_failed(uint32_t file_id, uint32_t line, const uint8_t* expr);
//  168 {
//  169   /* User can add his own implementation to report the source file ID, line number and
//  170      expression text.
//  171      Ex: printf("Wrong parameters value (%s): file Id %d on line %d\r\n", expr, file_id, line) */
//  172 
//  173   /* Infinite loop */
//  174   while (1)
//  175   {
//  176   }
//  177 }
//  178 #endif /* USE_ASSERT_INFO */
//  179 
//  180 /** @} */ /* End of group PORT_Joystick_LEDs_91 */
//  181 
//  182 /** @} */ /* End of group __MDR32F9Q1_EVAL */
//  183 
//  184 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Examples */
//  185 
//  186 
//  187 /******************* (C) COPYRIGHT 2011 Milandr *********/
//  188 
//  189 /* END OF FILE main.c */
//  190 
//  191 
// 
// 112 bytes in section .bss
// 226 bytes in section .text
// 
// 226 bytes of CODE memory
// 112 bytes of DATA memory
//
//Errors: none
//Warnings: none
