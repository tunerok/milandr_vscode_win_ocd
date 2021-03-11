///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:03 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\joystick.c                             /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\joystick.c --preprocess                /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\joystick.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME joystick

        #define SHT_PROGBITS 0x1

        EXTERN PORT_ReadInputDataBit

        PUBLIC GetKey

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\joystick.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    joystick.c
//    4   * @author  Phyton Application Team
//    5   * @version V3.0.0
//    6   * @date    10.09.2011
//    7   * @brief   This file provides all the Joystick driver functions.
//    8   ******************************************************************************
//    9   * <br><br>
//   10   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   11   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   12   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY
//   13   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   14   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   15   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   16   *
//   17   * <h2><center>&copy; COPYRIGHT 2011 Phyton</center></h2>
//   18   */
//   19 
//   20 /* Includes ------------------------------------------------------------------*/
//   21 #include <MDR32F9Qx_port.h>
//   22 #include "joystick.h"
//   23 
//   24 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   25   * @{
//   26   */
//   27 
//   28 /** @addtogroup Joystick_Driver Joystick Driver
//   29   * @{
//   30   */
//   31 
//   32 /** @defgroup Joystick_Private_Types Joystick Private Types
//   33   * @{
//   34   */
//   35 
//   36 /**
//   37   * @brief  Joystick key structure definition
//   38   */
//   39 typedef struct
//   40 {
//   41   MDR_PORT_TypeDef * PORT;
//   42   uint16_t PORT_Pin;
//   43 }JoystickKeys_TypeDef;
//   44 
//   45 /** @} */ /* End of group Joystick_Private_Types */
//   46 
//   47 /** @defgroup Joystick_Private_Variables Joystick Private Variables
//   48   * @{
//   49   */
//   50 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   51 static JoystickKeys_TypeDef JoystickKeys[NUM_KEY_CODES - 2] = {
JoystickKeys:
        DATA
        DC32 400B8000H
        DC16 1024
        DC8 0, 0
        DC32 400B8000H
        DC16 2048
        DC8 0, 0
        DC32 400B8000H
        DC16 4096
        DC8 0, 0
        DC32 400B8000H
        DC16 8192
        DC8 0, 0
        DC32 400B8000H
        DC16 16384
        DC8 0, 0
//   52   {SEL_PORT, SEL_PIN},                 /*!< SEL pressed   */
//   53   {UP_PORT, UP_PIN},                   /*!< UP pressed    */
//   54   {DOWN_PORT, DOWN_PIN},               /*!< DOWN pressed  */
//   55   {LEFT_PORT, LEFT_PIN},               /*!< LEFT pressed  */
//   56   {RIGHT_PORT, RIGHT_PIN}              /*!< RIGHT pressed */
//   57 };
//   58 
//   59 /** @} */ /* End of group Joystick_Private_Variables */
//   60 
//   61 /** @defgroup Joystick_Private_Functions Joystick Private Functions
//   62   * @{
//   63   */
//   64 
//   65 /*  */
//   66 /*******************************************************************************
//   67 * Function Name  : GetKey
//   68 * Description    : Determines "code" by keys pressed
//   69 * Input          : None
//   70 * Output         : None
//   71 * Return         : "Code" of key pressed; MULTIPLE if several
//   72 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   73 KeyCode GetKey(void)
//   74 {
GetKey:
        PUSH     {R4-R6,LR}
//   75   uint32_t i;
//   76   KeyCode key = NOKEY;
        MOVS     R4,#+5
//   77 
//   78   for (i = 0; i < (NUM_KEY_CODES - 2); i++)
        MOVS     R5,#+0
        LDR.N    R6,??GetKey_0
//   79   {
//   80     if ((PORT_ReadInputDataBit(JoystickKeys[i].PORT, JoystickKeys[i].PORT_Pin)) == Bit_RESET)
??GetKey_1:
        ADD      R0,R6,R5, LSL #+3
        LDRH     R1,[R0, #+4]
        LDR      R0,[R6, R5, LSL #+3]
        BL       PORT_ReadInputDataBit
        CBNZ.N   R0,??GetKey_2
//   81     {
//   82       if (key != NOKEY)
        UXTB     R4,R4
        CMP      R4,#+5
        BEQ.N    ??GetKey_3
//   83       {
//   84         return MULTIPLE;
        MOVS     R0,#+6
        POP      {R4-R6,PC}
//   85       }
//   86       key = ((KeyCode)(i));
??GetKey_3:
        MOV      R4,R5
//   87     }
//   88   }
??GetKey_2:
        ADDS     R5,R5,#+1
        CMP      R5,#+5
        BCC.N    ??GetKey_1
//   89   return key;
        UXTB     R0,R4
        POP      {R4-R6,PC}       ;; return
        Nop      
        DATA
??GetKey_0:
        DC32     JoystickKeys
//   90 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   91 
//   92 /** @} */ /* End of group Joystick_Private_Functions */
//   93 
//   94 /** @} */ /* End of group Joystick_Driver */
//   95 
//   96 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//   97 
//   98 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//   99 *
//  100 * END OF FILE joystick.c */
//  101 
// 
// 40 bytes in section .data
// 52 bytes in section .text
// 
// 52 bytes of CODE memory
// 40 bytes of DATA memory
//
//Errors: none
//Warnings: none
