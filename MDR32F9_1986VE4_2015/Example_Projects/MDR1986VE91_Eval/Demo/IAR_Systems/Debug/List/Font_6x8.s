///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:55 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\fonts\Font_6x8.c                           /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\fonts\Font_6x8.c --preprocess              /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\Font_6x8.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Font_6x8

        #define SHT_PROGBITS 0x1

        PUBLIC Font_6x8

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\fonts\Font_6x8.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Font_6x8.c
//    4   * @author  Phyton Application Team
//    5   * @version V2.0.0
//    6   * @date    10.09.2010
//    7   * @brief   Font 6 x 8 pixels (normal). Analog of Terminal Microsoft Windows.
//    8   ******************************************************************************
//    9   * <br><br>
//   10   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   11   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   12   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY
//   13   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   14   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   15   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   16   *
//   17   * <h2><center>&copy; COPYRIGHT 2010 Phyton</center></h2>
//   18   */
//   19 
//   20 /* Includes ------------------------------------------------------------------*/
//   21 #include "font_defs.h"
//   22 
//   23 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   24   * @{
//   25   */
//   26 
//   27 /** @addtogroup Fonts Fonts
//   28   * @{
//   29   */
//   30 
//   31 /** @defgroup Font_6x8 Fonts 6x8
//   32   * @{
//   33   */
//   34 
//   35 /* The symbol representation has the following format:                      */
//   36 /* Every byte describes all columns of the symbol 8 upper lines.            */
//   37 /* Columns are represented from left to right.                              */
//   38 /* Lowest bit of a byte describes upper line of column,                     */
//   39 /* Highest - lower line.                                                    */
//   40 /* Then it's all repeated for all columns of lower 8 symbol lines.          */
//   41 

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//   42 static ucint8_t Font_6x8_Data[] = {
Font_6x8_Data:
        DC8 0, 0, 0, 0, 0, 0, 0, 62, 69, 81, 69, 62, 0, 62, 107, 111, 107, 62
        DC8 0, 28, 62, 124, 62, 28, 0, 24, 60, 126, 60, 24, 0, 48, 54, 127, 54
        DC8 48, 0, 24, 92, 126, 92, 24, 0, 0, 24, 24, 0, 0, 255, 255, 231, 231
        DC8 255, 255, 0, 60, 36, 36, 60, 0, 255, 195, 219, 219, 195, 255, 0, 48
        DC8 72, 74, 54, 14, 0, 6, 41, 121, 41, 6, 0, 96, 112, 63, 2, 4, 0, 96
        DC8 126, 10, 53, 63, 0, 42, 28, 54, 28, 42, 0, 0, 127, 62, 28, 8, 0, 8
        DC8 28, 62, 127, 0, 0, 20, 54, 127, 54, 20, 0, 0, 95, 0, 95, 0, 0, 6, 9
        DC8 127, 1, 127, 0, 34, 77, 85, 89, 34, 0, 96, 96, 96, 96, 0, 0, 20
        DC8 182, 255, 182, 20, 0, 4, 6, 127, 6, 4, 0, 16, 48, 127, 48, 16, 0, 8
        DC8 8, 62, 28, 8, 0, 8, 28, 62, 8, 8, 0, 120, 64, 64, 64, 64, 0, 8, 62
        DC8 8, 62, 8, 0, 48, 60, 63, 60, 48, 0, 3, 15, 63, 15, 3, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 6, 95, 6, 0, 0, 7, 3, 0, 7, 3, 0, 36, 126, 36, 126, 36, 0
        DC8 36, 43, 106, 18, 0, 0, 99, 19, 8, 100, 99, 0, 54, 73, 86, 32, 80, 0
        DC8 0, 7, 3, 0, 0, 0, 0, 62, 65, 0, 0, 0, 0, 65, 62, 0, 0, 0, 8, 62, 28
        DC8 62, 8, 0, 8, 8, 62, 8, 8, 0, 0, 224, 96, 0, 0, 0, 8, 8, 8, 8, 8, 0
        DC8 0, 96, 96, 0, 0, 0, 32, 16, 8, 4, 2, 0, 62, 65, 65, 65, 62, 0, 0
        DC8 66, 127, 64, 0, 0, 98, 81, 73, 73, 70, 0, 34, 73, 73, 73, 54, 0, 24
        DC8 20, 18, 127, 16, 0, 47, 73, 73, 73, 49, 0, 60, 74, 73, 73, 48, 0, 1
        DC8 113, 9, 5, 3, 0, 54, 73, 73, 73, 54, 0, 6, 73, 73, 41, 30, 0, 0
        DC8 108, 108, 0, 0, 0, 0, 236, 108, 0, 0, 0, 8, 20, 34, 65, 0, 0, 36
        DC8 36, 36, 36, 36, 0, 0, 65, 34, 20, 8, 0, 2, 1, 89, 9, 6, 0, 62, 65
        DC8 93, 85, 30, 0, 126, 17, 17, 17, 126, 0, 127, 73, 73, 73, 54, 0, 62
        DC8 65, 65, 65, 34, 0, 127, 65, 65, 65, 62, 0, 127, 73, 73, 73, 65, 0
        DC8 127, 9, 9, 9, 1, 0, 62, 65, 73, 73, 122, 0, 127, 8, 8, 8, 127, 0, 0
        DC8 65, 127, 65, 0, 0, 48, 64, 64, 64, 63, 0, 127, 8, 20, 34, 65, 0
        DC8 127, 64, 64, 64, 64, 0, 127, 2, 4, 2, 127, 0, 127, 2, 4, 8, 127, 0
        DC8 62, 65, 65, 65, 62, 0, 127, 9, 9, 9, 6, 0, 62, 65, 81, 33, 94, 0
        DC8 127, 9, 9, 25, 102, 0, 38, 73, 73, 73, 50, 0, 1, 1, 127, 1, 1, 0
        DC8 63, 64, 64, 64, 63, 0, 31, 32, 64, 32, 31, 0, 63, 64, 60, 64, 63, 0
        DC8 99, 20, 8, 20, 99, 0, 7, 8, 112, 8, 7, 0, 113, 73, 69, 67, 0, 0, 0
        DC8 127, 65, 65, 0, 0, 2, 4, 8, 16, 32, 0, 0, 65, 65, 127, 0, 0, 4, 2
        DC8 1, 2, 4, 128, 128, 128, 128, 128, 128, 0, 0, 3, 7, 0, 0, 0, 32, 84
        DC8 84, 84, 120, 0, 127, 68, 68, 68, 56, 0, 56, 68, 68, 68, 40, 0, 56
        DC8 68, 68, 68, 127, 0, 56, 84, 84, 84, 8, 0, 8, 126, 9, 9, 0, 0, 24
        DC8 164, 164, 164, 124, 0, 127, 4, 4, 120, 0, 0, 0, 0, 125, 64, 0, 0
        DC8 64, 128, 132, 125, 0, 0, 127, 16, 40, 68, 0, 0, 0, 0, 127, 64, 0, 0
        DC8 124, 4, 24, 4, 120, 0, 124, 4, 4, 120, 0, 0, 56, 68, 68, 68, 56, 0
        DC8 252, 68, 68, 68, 56, 0, 56, 68, 68, 68, 252, 0, 68, 120, 68, 4, 8
        DC8 0, 8, 84, 84, 84, 32, 0, 4, 62, 68, 36, 0, 0, 60, 64, 32, 124, 0, 0
        DC8 28, 32, 64, 32, 28, 0, 60, 96, 48, 96, 60, 0, 108, 16, 16, 108, 0
        DC8 0, 156, 160, 96, 60, 0, 0, 100, 84, 84, 76, 0, 0, 8, 62, 65, 65, 0
        DC8 0, 0, 0, 119, 0, 0, 0, 0, 65, 65, 62, 8, 0, 2, 1, 2, 1, 0, 0, 60
        DC8 38, 35, 38, 60, 68, 17, 68, 17, 68, 17, 170, 85, 170, 85, 170, 85
        DC8 187, 238, 187, 238, 187, 238, 0, 0, 0, 255, 0, 0, 8, 8, 8, 255, 0
        DC8 0, 10, 10, 10, 255, 0, 0, 8, 255, 0, 255, 0, 0, 8, 248, 8, 248, 0
        DC8 0, 10, 10, 10, 254, 0, 0, 10, 251, 0, 255, 0, 0, 0, 255, 0, 255, 0
        DC8 0, 10, 250, 2, 254, 0, 0, 10, 11, 8, 15, 0, 0, 8, 15, 8, 15, 0, 0
        DC8 10, 10, 10, 15, 0, 0, 8, 8, 8, 248, 0, 0, 0, 0, 0, 15, 8, 8, 8, 8
        DC8 8, 15, 8, 8, 8, 8, 8, 248, 8, 8, 0, 0, 0, 255, 8, 8, 8, 8, 8, 8, 8
        DC8 8, 8, 8, 8, 255, 8, 8, 0, 0, 0, 255, 10, 10, 0, 255, 0, 255, 8, 8
        DC8 0, 15, 8, 11, 10, 10, 0, 254, 2, 250, 10, 10, 10, 11, 8, 11, 10, 10
        DC8 10, 250, 2, 250, 10, 10, 0, 255, 0, 251, 10, 10, 10, 10, 10, 10, 10
        DC8 10, 10, 251, 0, 251, 10, 10, 10, 10, 10, 11, 10, 10, 8, 15, 8, 15
        DC8 8, 8, 10, 10, 10, 250, 10, 10, 8, 248, 8, 248, 8, 8, 0, 15, 8, 15
        DC8 8, 8, 0, 0, 0, 15, 10, 10, 0, 0, 0, 254, 10, 10, 0, 248, 8, 248, 8
        DC8 8, 8, 255, 8, 255, 8, 8, 0, 126, 75, 74, 75, 66, 10, 10, 10, 255
        DC8 10, 10, 8, 8, 8, 15, 0, 0, 0, 0, 0, 248, 8, 8, 255, 255, 255, 255
        DC8 255, 255, 240, 240, 240, 240, 240, 240, 255, 255, 255, 0, 0, 0, 0
        DC8 0, 0, 255, 255, 255, 15, 15, 15, 15, 15, 15, 0, 62, 73, 73, 65, 34
        DC8 0, 56, 84, 84, 68, 40, 0, 1, 64, 126, 64, 1, 0, 0, 1, 124, 65, 0, 0
        DC8 39, 72, 75, 72, 63, 0, 157, 162, 98, 61, 0, 0, 6, 9, 9, 6, 0, 0, 56
        DC8 85, 84, 85, 8, 0, 0, 24, 24, 0, 0, 0, 0, 8, 0, 0, 0, 0, 48, 64, 62
        DC8 2, 2, 127, 6, 24, 127, 19, 19, 42, 62, 20, 20, 62, 42, 0, 60, 60
        DC8 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 126, 17, 17, 17, 126, 0, 127, 73
        DC8 73, 73, 49, 0, 127, 73, 73, 73, 54, 0, 127, 1, 1, 1, 1, 192, 126
        DC8 65, 65, 127, 192, 0, 127, 73, 73, 73, 65, 0, 119, 8, 127, 8, 119
        DC8 34, 73, 73, 73, 54, 0, 0, 127, 32, 16, 8, 127, 0, 126, 33, 17, 9
        DC8 126, 0, 127, 8, 20, 34, 65, 0, 64, 126, 1, 1, 127, 0, 127, 2, 4, 2
        DC8 127, 0, 127, 8, 8, 8, 127, 0, 62, 65, 65, 65, 62, 0, 127, 1, 1, 1
        DC8 127, 0, 127, 9, 9, 9, 6, 0, 62, 65, 65, 65, 34, 0, 1, 1, 127, 1, 1
        DC8 0, 39, 72, 72, 72, 63, 0, 14, 17, 127, 17, 14, 0, 99, 20, 8, 20, 99
        DC8 0, 127, 64, 64, 127, 192, 0, 7, 8, 8, 8, 127, 0, 127, 64, 127, 64
        DC8 127, 0, 127, 64, 127, 64, 255, 3, 1, 127, 72, 72, 48, 0, 127, 72
        DC8 72, 48, 127, 0, 127, 72, 72, 72, 48, 0, 34, 65, 73, 73, 62, 0, 127
        DC8 8, 62, 65, 62, 0, 102, 25, 9, 9, 127, 0, 32, 84, 84, 84, 120, 0, 60
        DC8 74, 74, 74, 49, 0, 124, 84, 84, 84, 40, 0, 124, 4, 4, 12, 0, 192
        DC8 120, 68, 68, 124, 192, 0, 56, 84, 84, 84, 8, 0, 108, 16, 124, 16
        DC8 108, 0, 40, 68, 84, 84, 40, 0, 124, 32, 16, 8, 124, 0, 124, 32, 18
        DC8 10, 124, 0, 124, 16, 40, 68, 0, 64, 56, 4, 4, 124, 0, 0, 124, 8, 16
        DC8 8, 124, 0, 124, 16, 16, 16, 124, 0, 56, 68, 68, 68, 56, 0, 124, 4
        DC8 4, 4, 124, 0, 252, 68, 68, 68, 56, 0, 56, 68, 68, 68, 40, 0, 4, 4
        DC8 124, 4, 4, 0, 156, 160, 96, 60, 0, 0, 24, 36, 124, 36, 24, 0, 108
        DC8 16, 16, 108, 0, 0, 124, 64, 64, 124, 192, 0, 12, 16, 16, 16, 124, 0
        DC8 124, 64, 124, 64, 124, 0, 124, 64, 124, 64, 252, 12, 4, 124, 80, 80
        DC8 32, 0, 124, 80, 80, 32, 124, 0, 124, 80, 80, 80, 32, 0, 40, 68, 84
        DC8 84, 56, 0, 124, 16, 56, 68, 56, 0, 72, 52, 20, 20, 124
//   43   /* 0x00 - Space.*/
//   44   0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   45 
//   46   /* 0x01 - smiling face.*/
//   47   0x00, 0x3e, 0x45, 0x51, 0x45, 0x3e,
//   48 
//   49   /* 0x02 - painted smiling face.*/
//   50   0x00, 0x3e, 0x6b, 0x6f, 0x6b, 0x3e,
//   51 
//   52   /* 0x03 - hearts.*/
//   53   0x00, 0x1c, 0x3e, 0x7c, 0x3e, 0x1c,
//   54 
//   55   /* 0x04 - diamonds.*/
//   56   0x00, 0x18, 0x3c, 0x7e, 0x3c, 0x18,
//   57 
//   58   /* 0x05 - clubs.*/
//   59   0x00, 0x30, 0x36, 0x7f, 0x36, 0x30,
//   60 
//   61   /* 0x06 - spades.*/
//   62   0x00, 0x18, 0x5c, 0x7e, 0x5c, 0x18,
//   63 
//   64   /* 0x07 - filled circle at center.*/
//   65   0x00, 0x00, 0x18, 0x18, 0x00, 0x00,
//   66 
//   67   /* 0x08 - inverted filled circle at center.*/
//   68   0xff, 0xff, 0xe7, 0xe7, 0xff, 0xff,
//   69 
//   70   /* 0x09 - unfilled circle at center.*/
//   71   0x00, 0x3c, 0x24, 0x24, 0x3c, 0x00,
//   72 
//   73   /* 0x0a - inverted unfilled circle at center (ring).*/
//   74   0xff, 0xc3, 0xdb, 0xdb, 0xc3, 0xff,
//   75 
//   76   /* 0x0b - male symbol (circle with pointer up).*/
//   77   0x00, 0x30, 0x48, 0x4a, 0x36, 0x0e,
//   78 
//   79   /* 0x0c - female symbol (circle with cross down).*/
//   80   0x00, 0x06, 0x29, 0x79, 0x29, 0x06,
//   81 
//   82   /* 0x0d - note I.*/
//   83   0x00, 0x60, 0x70, 0x3f, 0x02, 0x04,
//   84 
//   85   /* 0x0e - note II.*/
//   86   0x00, 0x60, 0x7e, 0x0a, 0x35, 0x3f,
//   87 
//   88   /* 0x0f - sun (circle with outgoing rays).*/
//   89   0x00, 0x2a, 0x1c, 0x36, 0x1c, 0x2a,
//   90 
//   91   /* 0x10 - thick arrow right.*/
//   92   0x00, 0x00, 0x7f, 0x3e, 0x1c, 0x08,
//   93 
//   94   /* 0x11 - thick arrow lefts.*/
//   95   0x00, 0x08, 0x1c, 0x3e, 0x7f, 0x00,
//   96 
//   97   /* 0x12 - thin arrow up-down.*/
//   98   0x00, 0x14, 0x36, 0x7f, 0x36, 0x14,
//   99 
//  100   /* 0x13 - two exclamations.*/
//  101   0x00, 0x00, 0x5f, 0x00, 0x5f, 0x00,
//  102 
//  103   /* 0x14 - "PI" symbol.*/
//  104   0x00, 0x06, 0x09, 0x7f, 0x01, 0x7f,
//  105 
//  106   /* 0x15 - paragraph symbol.*/
//  107   0x00, 0x22, 0x4d, 0x55, 0x59, 0x22,
//  108 
//  109   /* 0x16 - thick underline.*/
//  110   0x00, 0x60, 0x60, 0x60, 0x60, 0x00,
//  111 
//  112   /* 0x17 - underlined thin arrow up-down.*/
//  113   0x00, 0x14, 0xb6, 0xff, 0xb6, 0x14,
//  114 
//  115   /* 0x18 - thin arrow up.*/
//  116   0x00, 0x04, 0x06, 0x7f, 0x06, 0x04,
//  117 
//  118   /* 0x19 - thin arrow down.*/
//  119   0x00, 0x10, 0x30, 0x7f, 0x30, 0x10,
//  120 
//  121   /* 0x1a - thin arrow right.*/
//  122   0x00, 0x08, 0x08, 0x3e, 0x1c, 0x08,
//  123 
//  124   /* 0x1b - thin arrow left.*/
//  125   0x00, 0x08, 0x1c, 0x3e, 0x08, 0x08,
//  126 
//  127   /* 0x1c - indentation symbol.*/
//  128   0x00, 0x78, 0x40, 0x40, 0x40, 0x40,
//  129 
//  130   /* 0x1d - thin arrow left-right.*/
//  131   0x00, 0x08, 0x3e, 0x08, 0x3e, 0x08,
//  132 
//  133   /* 0x1e - thick arrow up.*/
//  134   0x00, 0x30, 0x3c, 0x3f, 0x3c, 0x30,
//  135 
//  136   /* 0x1f - thick arrow down.*/
//  137   0x00, 0x03, 0x0f, 0x3f, 0x0f, 0x03,
//  138 
//  139   /* 0x20 - space (empty place).*/
//  140   0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//  141 
//  142   /* 0x21 - excalmation.*/
//  143   0x00, 0x00, 0x06, 0x5f, 0x06, 0x00,
//  144 
//  145   /* 0x22 - double quote.*/
//  146   0x00, 0x07, 0x03, 0x00, 0x07, 0x03,
//  147 
//  148   /* 0x23 - number sign.*/
//  149   0x00, 0x24, 0x7e, 0x24, 0x7e, 0x24,
//  150 
//  151   /* 0x24 - dollar.*/
//  152   0x00, 0x24, 0x2b, 0x6a, 0x12, 0x00,
//  153 
//  154   /* 0x25 - percent.*/
//  155   0x00, 0x63, 0x13, 0x08, 0x64, 0x63,
//  156 
//  157   /* 0x26 - ampersand.*/
//  158   0x00, 0x36, 0x49, 0x56, 0x20, 0x50,
//  159 
//  160   /* 0x27 - apostrophe.*/
//  161   0x00, 0x00, 0x07, 0x03, 0x00, 0x00,
//  162 
//  163   /* 0x28 - open bracket.*/
//  164   0x00, 0x00, 0x3e, 0x41, 0x00, 0x00,
//  165 
//  166   /* 0x29 - close bracket.*/
//  167   0x00, 0x00, 0x41, 0x3e, 0x00, 0x00,
//  168 
//  169   /* 0x2a - asterisk (multiplication).*/
//  170   0x00, 0x08, 0x3e, 0x1c, 0x3e, 0x08,
//  171 
//  172   /* 0x2b - plus.*/
//  173   0x00, 0x08, 0x08, 0x3e, 0x08, 0x08,
//  174 
//  175   /* 0x2c - comma.*/
//  176   0x00, 0x00, 0xe0, 0x60, 0x00, 0x00,
//  177 
//  178   /* 0x2d - dash.*/
//  179   0x00, 0x08, 0x08, 0x08, 0x08, 0x08,
//  180 
//  181   /* 0x2e - dot.*/
//  182   0x00, 0x00, 0x60, 0x60, 0x00, 0x00,
//  183 
//  184   /* 0x2f - left-right slash ('/').*/
//  185   0x00, 0x20, 0x10, 0x08, 0x04, 0x02,
//  186 
//  187   /* 0x30 - '0'.*/
//  188   0x00, 0x3e, 0x41, 0x41, 0x41, 0x3e,
//  189 
//  190   /* 0x31 - '1'.*/
//  191   0x00, 0x00, 0x42, 0x7f, 0x40, 0x00,
//  192 
//  193   /* 0x32 - '2'.*/
//  194   0x00, 0x62, 0x51, 0x49, 0x49, 0x46,
//  195 
//  196   /* 0x33 - '3'.*/
//  197   0x00, 0x22, 0x49, 0x49, 0x49, 0x36,
//  198 
//  199   /* 0x34 - '4'.*/
//  200   0x00, 0x18, 0x14, 0x12, 0x7f, 0x10,
//  201 
//  202   /* 0x35 - '5'.*/
//  203   0x00, 0x2f, 0x49, 0x49, 0x49, 0x31,
//  204 
//  205   /* 0x36 - '6'.*/
//  206   0x00, 0x3c, 0x4a, 0x49, 0x49, 0x30,
//  207 
//  208   /* 0x37 - '7'.*/
//  209   0x00, 0x01, 0x71, 0x09, 0x05, 0x03,
//  210 
//  211   /* 0x38 - '8'.*/
//  212   0x00, 0x36, 0x49, 0x49, 0x49, 0x36,
//  213 
//  214   /* 0x39 - '9'.*/
//  215   0x00, 0x06, 0x49, 0x49, 0x29, 0x1e,
//  216 
//  217   /* 0x3a - colon.*/
//  218   0x00, 0x00, 0x6c, 0x6c, 0x00, 0x00,
//  219 
//  220   /* 0x3b - semicolon.*/
//  221   0x00, 0x00, 0xec, 0x6c, 0x00, 0x00,
//  222 
//  223   /* 0x3c - less.*/
//  224   0x00, 0x08, 0x14, 0x22, 0x41, 0x00,
//  225 
//  226   /* 0x3d - equal.*/
//  227   0x00, 0x24, 0x24, 0x24, 0x24, 0x24,
//  228 
//  229   /* 0x3e - greater.*/
//  230   0x00, 0x00, 0x41, 0x22, 0x14, 0x08,
//  231 
//  232   /* 0x3f - question-mark.*/
//  233   0x00, 0x02, 0x01, 0x59, 0x09, 0x06,
//  234 
//  235   /* 0x40 - "dog" ('@').*/
//  236   0x00, 0x3e, 0x41, 0x5d, 0x55, 0x1e,
//  237 
//  238   /* 0x41 - 'A'.*/
//  239   0x00, 0x7e, 0x11, 0x11, 0x11, 0x7e,
//  240 
//  241   /* 0x42 - 'B'.*/
//  242   0x00, 0x7f, 0x49, 0x49, 0x49, 0x36,
//  243 
//  244   /* 0x43 - 'C'.*/
//  245   0x00, 0x3e, 0x41, 0x41, 0x41, 0x22,
//  246 
//  247   /* 0x44 - 'D'.*/
//  248   0x00, 0x7f, 0x41, 0x41, 0x41, 0x3e,
//  249 
//  250   /* 0x45 - 'E'.*/
//  251   0x00, 0x7f, 0x49, 0x49, 0x49, 0x41,
//  252 
//  253   /* 0x46 - 'F'.*/
//  254   0x00, 0x7f, 0x09, 0x09, 0x09, 0x01,
//  255 
//  256   /* 0x47 - 'G'.*/
//  257   0x00, 0x3e, 0x41, 0x49, 0x49, 0x7a,
//  258 
//  259   /* 0x48 - 'H'.*/
//  260   0x00, 0x7f, 0x08, 0x08, 0x08, 0x7f,
//  261 
//  262   /* 0x49 - 'I'.*/
//  263   0x00, 0x00, 0x41, 0x7f, 0x41, 0x00,
//  264 
//  265   /* 0x4a - 'J'.*/
//  266   0x00, 0x30, 0x40, 0x40, 0x40, 0x3f,
//  267 
//  268   /* 0x4b - 'K'.*/
//  269   0x00, 0x7f, 0x08, 0x14, 0x22, 0x41,
//  270 
//  271   /* 0x4c - 'L'.*/
//  272   0x00, 0x7f, 0x40, 0x40, 0x40, 0x40,
//  273 
//  274   /* 0x4d - 'M'.*/
//  275   0x00, 0x7f, 0x02, 0x04, 0x02, 0x7f,
//  276 
//  277   /* 0x4e - 'N'.*/
//  278   0x00, 0x7f, 0x02, 0x04, 0x08, 0x7f,
//  279 
//  280   /* 0x4f - 'O'.*/
//  281   0x00, 0x3e, 0x41, 0x41, 0x41, 0x3e,
//  282 
//  283   /* 0x50 - 'P'.*/
//  284   0x00, 0x7f, 0x09, 0x09, 0x09, 0x06,
//  285 
//  286   /* 0x51 - 'Q'.*/
//  287   0x00, 0x3e, 0x41, 0x51, 0x21, 0x5e,
//  288 
//  289   /* 0x52 - 'R'.*/
//  290   0x00, 0x7f, 0x09, 0x09, 0x19, 0x66,
//  291 
//  292   /* 0x53 - 'S'.*/
//  293   0x00, 0x26, 0x49, 0x49, 0x49, 0x32,
//  294 
//  295   /* 0x54 - 'T'.*/
//  296   0x00, 0x01, 0x01, 0x7f, 0x01, 0x01,
//  297 
//  298   /* 0x55 - 'U'.*/
//  299   0x00, 0x3f, 0x40, 0x40, 0x40, 0x3f,
//  300 
//  301   /* 0x56 - 'V'.*/
//  302   0x00, 0x1f, 0x20, 0x40, 0x20, 0x1f,
//  303 
//  304   /* 0x57 - 'W'.*/
//  305   0x00, 0x3f, 0x40, 0x3c, 0x40, 0x3f,
//  306 
//  307   /* 0x58 - 'X'.*/
//  308   0x00, 0x63, 0x14, 0x08, 0x14, 0x63,
//  309 
//  310   /* 0x59 - 'Y'.*/
//  311   0x00, 0x07, 0x08, 0x70, 0x08, 0x07,
//  312 
//  313   /* 0x5a - 'Z'.*/
//  314   0x00, 0x71, 0x49, 0x45, 0x43, 0x00,
//  315 
//  316   /* 0x5b - '['.*/
//  317   0x00, 0x00, 0x7f, 0x41, 0x41, 0x00,
//  318 
//  319   /* 0x5c - '\'.*/
//  320   0x00, 0x02, 0x04, 0x08, 0x10, 0x20,
//  321 
//  322   /* 0x5d - ']'.*/
//  323   0x00, 0x00, 0x41, 0x41, 0x7f, 0x00,
//  324 
//  325   /* 0x5e - '^'.*/
//  326   0x00, 0x04, 0x02, 0x01, 0x02, 0x04,
//  327 
//  328   /* 0x5f - '_'.*/
//  329   0x80, 0x80, 0x80, 0x80, 0x80, 0x80,
//  330 
//  331   /* 0x60 - back quote.*/
//  332   0x00, 0x00, 0x03, 0x07, 0x00, 0x00,
//  333 
//  334   /* 0x61 - 'a'.*/
//  335   0x00, 0x20, 0x54, 0x54, 0x54, 0x78,
//  336 
//  337   /* 0x62 - 'b'.*/
//  338   0x00, 0x7f, 0x44, 0x44, 0x44, 0x38,
//  339 
//  340   /* 0x63 - 'c'.*/
//  341   0x00, 0x38, 0x44, 0x44, 0x44, 0x28,
//  342 
//  343   /* 0x64 - 'd'.*/
//  344   0x00, 0x38, 0x44, 0x44, 0x44, 0x7f,
//  345 
//  346   /* 0x65 - 'e'.*/
//  347   0x00, 0x38, 0x54, 0x54, 0x54, 0x08,
//  348 
//  349   /* 0x66 - 'f'.*/
//  350   0x00, 0x08, 0x7e, 0x09, 0x09, 0x00,
//  351 
//  352   /* 0x67 - 'g'.*/
//  353   0x00, 0x18, 0xa4, 0xa4, 0xa4, 0x7c,
//  354 
//  355   /* 0x68 - 'h'.*/
//  356   0x00, 0x7f, 0x04, 0x04, 0x78, 0x00,
//  357 
//  358   /* 0x69 - 'i'.*/
//  359   0x00, 0x00, 0x00, 0x7d, 0x40, 0x00,
//  360 
//  361   /* 0x6a - 'j'.*/
//  362   0x00, 0x40, 0x80, 0x84, 0x7d, 0x00,
//  363 
//  364   /* 0x6b - 'k'.*/
//  365   0x00, 0x7f, 0x10, 0x28, 0x44, 0x00,
//  366 
//  367   /* 0x6c - 'l'.*/
//  368   0x00, 0x00, 0x00, 0x7f, 0x40, 0x00,
//  369 
//  370   /* 0x6d - 'm'.*/
//  371   0x00, 0x7c, 0x04, 0x18, 0x04, 0x78,
//  372 
//  373   /* 0x6e - 'n'.*/
//  374   0x00, 0x7c, 0x04, 0x04, 0x78, 0x00,
//  375 
//  376   /* 0x6f - 'o'.*/
//  377   0x00, 0x38, 0x44, 0x44, 0x44, 0x38,
//  378 
//  379   /* 0x70 - 'p'.*/
//  380   0x00, 0xfc, 0x44, 0x44, 0x44, 0x38,
//  381 
//  382   /* 0x71 - 'q'.*/
//  383   0x00, 0x38, 0x44, 0x44, 0x44, 0xfc,
//  384 
//  385   /* 0x72 - 'r'.*/
//  386   0x00, 0x44, 0x78, 0x44, 0x04, 0x08,
//  387 
//  388   /* 0x73 - 's'.*/
//  389   0x00, 0x08, 0x54, 0x54, 0x54, 0x20,
//  390 
//  391   /* 0x74 - 't'.*/
//  392   0x00, 0x04, 0x3e, 0x44, 0x24, 0x00,
//  393 
//  394   /* 0x75 - 'u'.*/
//  395   0x00, 0x3c, 0x40, 0x20, 0x7c, 0x00,
//  396 
//  397   /* 0x76 - 'v'.*/
//  398   0x00, 0x1c, 0x20, 0x40, 0x20, 0x1c,
//  399 
//  400   /* 0x77 - 'w'.*/
//  401   0x00, 0x3c, 0x60, 0x30, 0x60, 0x3c,
//  402 
//  403   /* 0x78 - 'x'.*/
//  404   0x00, 0x6c, 0x10, 0x10, 0x6c, 0x00,
//  405 
//  406   /* 0x79 - 'y'.*/
//  407   0x00, 0x9c, 0xa0, 0x60, 0x3c, 0x00,
//  408 
//  409   /* 0x7a - 'z'.*/
//  410   0x00, 0x64, 0x54, 0x54, 0x4c, 0x00,
//  411 
//  412   /* 0x7b - '{'.*/
//  413   0x00, 0x08, 0x3e, 0x41, 0x41, 0x00,
//  414 
//  415   /* 0x7c - '|'.*/
//  416   0x00, 0x00, 0x00, 0x77, 0x00, 0x00,
//  417 
//  418   /* 0x7d - '}'.*/
//  419   0x00, 0x00, 0x41, 0x41, 0x3e, 0x08,
//  420 
//  421   /* 0x7e - '~'.*/
//  422   0x00, 0x02, 0x01, 0x02, 0x01, 0x00,
//  423 
//  424   /* 0x7f - "house".*/
//  425   0x00, 0x3c, 0x26, 0x23, 0x26, 0x3c,
//  426 
//  427   /* 0x80 - net of points dispersed.*/
//  428   0x44, 0x11, 0x44, 0x11, 0x44, 0x11,
//  429 
//  430   /* 0x81 - net of points condensed.*/
//  431   0xaa, 0x55, 0xaa, 0x55, 0xaa, 0x55,
//  432 
//  433   /* 0x82 - net of lines.*/
//  434   0xbb, 0xee, 0xbb, 0xee, 0xbb, 0xee,
//  435 
//  436   /* 0x83 - pseudo graphics - vertical line.*/
//  437   0x00, 0x00, 0x00, 0xff, 0x00, 0x00,
//  438 
//  439   /* 0x84 - pseudo graphics - vertical line with branch left from center.*/
//  440   0x08, 0x08, 0x08, 0xff, 0x00, 0x00,
//  441 
//  442   /* 0x85 - pseudo graphics - vertical line with double branch left from center.*/
//  443   0x0a, 0x0a, 0x0a, 0xff, 0x00, 0x00,
//  444 
//  445   /* 0x86 - pseudo graphics - double vertical line with branch left from center.*/
//  446   0x08, 0xff, 0x00, 0xff, 0x00, 0x00,
//  447 
//  448   /* 0x87 - pseudo graphics - upper right corner with double vertical line.*/
//  449   0x08, 0xf8, 0x08, 0xf8, 0x00, 0x00,
//  450 
//  451   /* 0x88 - pseudo graphics - upper right corner with double horizontal line.*/
//  452   0x0a, 0x0a, 0x0a, 0xfe, 0x00, 0x00,
//  453 
//  454   /* 0x89 - pseudo graphics - double vertical line with double branch left from center.*/
//  455   0x0a, 0xfb, 0x00, 0xff, 0x00, 0x00,
//  456 
//  457   /* 0x8a - pseudo graphics - double vertical line.*/
//  458   0x00, 0xff, 0x00, 0xff, 0x00, 0x00,
//  459 
//  460   /* 0x8b - pseudo graphics - double upper right corner.*/
//  461   0x0a, 0xfa, 0x02, 0xfe, 0x00, 0x00,
//  462 
//  463   /* 0x8c - pseudo graphics - double lower right corner.*/
//  464   0x0a, 0x0b, 0x08, 0x0f, 0x00, 0x00,
//  465 
//  466   /* 0x8d - pseudo graphics - lower right corner with double vertical line.*/
//  467   0x08, 0x0f, 0x08, 0x0f, 0x00, 0x00,
//  468 
//  469   /* 0x8e - pseudo graphics - lower right corner with double horizontal line.*/
//  470   0x0a, 0x0a, 0x0a, 0x0f, 0x00, 0x00,
//  471 
//  472   /* 0x8f - pseudo graphics - upper right corner.*/
//  473   0x08, 0x08, 0x08, 0xf8, 0x00, 0x00,
//  474 
//  475   /* 0x90 - pseudo graphics - lower left corner.*/
//  476   0x00, 0x00, 0x00, 0x0f, 0x08, 0x08,
//  477 
//  478   /* 0x91 - pseudo graphics - horizontal line with branch up from center.*/
//  479   0x08, 0x08, 0x08, 0x0f, 0x08, 0x08,
//  480 
//  481   /* 0x92 - pseudo graphics - horizontal line with branch down from center.*/
//  482   0x08, 0x08, 0x08, 0xf8, 0x08, 0x08,
//  483 
//  484   /* 0x93 - pseudo graphics - vertical line with branch right from center.*/
//  485   0x00, 0x00, 0x00, 0xff, 0x08, 0x08,
//  486 
//  487   /* 0x94 - pseudo graphics - horizontal line at the center.*/
//  488   0x08, 0x08, 0x08, 0x08, 0x08, 0x08,
//  489 
//  490   /* 0x95 - pseudo graphics - cross.*/
//  491   0x08, 0x08, 0x08, 0xff, 0x08, 0x08,
//  492 
//  493   /* 0x96 - pseudo graphics - vertical line with double branch right from center.*/
//  494   0x00, 0x00, 0x00, 0xff, 0x0a, 0x0a,
//  495 
//  496   /* 0x97 - pseudo graphics - double vertical line with branch right from center.*/
//  497   0x00, 0xff, 0x00, 0xff, 0x08, 0x08,
//  498 
//  499   /* 0x98 - pseudo graphics - double left lower corner.*/
//  500   0x00, 0x0f, 0x08, 0x0b, 0x0a, 0x0a,
//  501 
//  502   /* 0x99 - pseudo graphics - double left upper corner.*/
//  503   0x00, 0xfe, 0x02, 0xfa, 0x0a, 0x0a,
//  504 
//  505   /* 0x9a - pseudo graphics - double horizontal line with double branch up from center.*/
//  506   0x0a, 0x0b, 0x08, 0x0b, 0x0a, 0x0a,
//  507 
//  508   /* 0x9b - pseudo graphics - double horizontal line with double branch down from center.*/
//  509   0x0a, 0xfa, 0x02, 0xfa, 0x0a, 0x0a,
//  510 
//  511   /* 0x9c - pseudo graphics - double vertical line with double branch right from center.*/
//  512   0x00, 0xff, 0x00, 0xfb, 0x0a, 0x0a,
//  513 
//  514   /* 0x9d - pseudo graphics - double horizontal line at the center.*/
//  515   0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a,
//  516 
//  517   /* 0x9e - pseudo graphics - double cross.*/
//  518   0x0a, 0xfb, 0x00, 0xfb, 0x0a, 0x0a,
//  519 
//  520   /* 0x9f - pseudo graphics - double horizontal line with branch up from center.*/
//  521   0x0a, 0x0a, 0x0a, 0x0b, 0x0a, 0x0a,
//  522 
//  523   /* 0xa0 - pseudo graphics - horizontal line with double branch up from center.*/
//  524   0x08, 0x0f, 0x08, 0x0f, 0x08, 0x08,
//  525 
//  526   /* 0xa1 - pseudo graphics - double horizontal line with branch down from center.*/
//  527   0x0a, 0x0a, 0x0a, 0xfa, 0x0a, 0x0a,
//  528 
//  529   /* 0xa2 - pseudo graphics - horizontal line with double branch down from center.*/
//  530   0x08, 0xf8, 0x08, 0xf8, 0x08, 0x08,
//  531 
//  532   /* 0xa3 - pseudo graphics - lower left corner, double vertical line.*/
//  533   0x00, 0x0f, 0x08, 0x0f, 0x08, 0x08,
//  534 
//  535   /* 0xa4 - pseudo graphics - lower left corner, double horizontal line.*/
//  536   0x00, 0x00, 0x00, 0x0f, 0x0a, 0x0a,
//  537 
//  538   /* 0xa5 - pseudo graphics - upper left corner, double horizontal line.*/
//  539   0x00, 0x00, 0x00, 0xfe, 0x0a, 0x0a,
//  540 
//  541   /* 0xa6 - pseudo graphics - upper left corner, double vertical line.*/
//  542   0x00, 0xf8, 0x08, 0xf8, 0x08, 0x08,
//  543 
//  544   /* 0xa7 - pseudo graphics - double vertical line at the center with branches left and right.*/
//  545   0x08, 0xff, 0x08, 0xff, 0x08, 0x08,
//  546 
//  547   /* 0xa8 - Russian capital 'YO'.*/
//  548   0x00, 0x7e, 0x4b, 0x4a, 0x4b, 0x42,
//  549 
//  550   /* 0xa9 - pseudo graphics - double horizontal line at the center with branches up and down.*/
//  551   0x0a, 0x0a, 0x0a, 0xff, 0x0a, 0x0a,
//  552 
//  553   /* 0xaa - pseudo graphics - lower right corner.*/
//  554   0x08, 0x08, 0x08, 0x0f, 0x00, 0x00,
//  555 
//  556   /* 0xab - pseudo graphics - upper left corner.*/
//  557   0x00, 0x00, 0x00, 0xf8, 0x08, 0x08,
//  558 
//  559   /* 0xac - pseudo graphics - filled place.*/
//  560   0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
//  561 
//  562   /* 0xad - pseudo graphics - filled lower half.*/
//  563   0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0,
//  564 
//  565   /* 0xae - pseudo graphics - filled left half.*/
//  566   0xff, 0xff, 0xff, 0x00, 0x00, 0x00,
//  567 
//  568   /* 0xaf - pseudo graphics - filled right half.*/
//  569   0x00, 0x00, 0x00, 0xff, 0xff, 0xff,
//  570 
//  571   /* 0xb0 - pseudo graphics - filled upper half.*/
//  572   0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f,
//  573 
//  574   /* 0xb1 - hearts (not filled).*/
//  575   0x00, 0x3e, 0x49, 0x49, 0x41, 0x22,
//  576 
//  577   /* 0xb2 - EX symbol.*/
//  578   0x00, 0x38, 0x54, 0x54, 0x44, 0x28,
//  579 
//  580   /* 0xb3 - unfilled EX symbol.*/
//  581   0x00, 0x01, 0x40, 0x7e, 0x40, 0x01,
//  582 
//  583   /* 0xb4 - Special symbol: Russian "l".*/
//  584   0x00, 0x00, 0x01, 0x7c, 0x41, 0x00,
//  585 
//  586   /* 0xb5 - Special symbol: Russian "l/ch".*/
//  587   0x00, 0x27, 0x48, 0x4b, 0x48, 0x3f,
//  588 
//  589   /* 0xb6 - 'y' with upper tilde ('~').*/
//  590   0x00, 0x9d, 0xa2, 0x62, 0x3d, 0x00,
//  591 
//  592   /* 0xb7 - small circle up.*/
//  593   0x00, 0x06, 0x09, 0x09, 0x06, 0x00,
//  594 
//  595   /* 0xb8 - Russian low 'yo'.*/
//  596   0x00, 0x38, 0x55, 0x54, 0x55, 0x08,
//  597 
//  598   /* 0xb9 - large filled circle at the center.*/
//  599   0x00, 0x00, 0x18, 0x18, 0x00, 0x00,
//  600 
//  601   /* 0xba - small filled circle at the center.*/
//  602   0x00, 0x00, 0x08, 0x00, 0x00, 0x00,
//  603 
//  604   /* 0xbb - square root symbol.*/
//  605   0x00, 0x30, 0x40, 0x3e, 0x02, 0x02,
//  606 
//  607   /* 0xbc - number sign.*/
//  608   0x7f, 0x06, 0x18, 0x7f, 0x13, 0x13,
//  609 
//  610   /* 0xbd - "sun".*/
//  611   0x2a, 0x3e, 0x14, 0x14, 0x3e, 0x2a,
//  612 
//  613   /* 0xbe - filled square at the center.*/
//  614   0x00, 0x3c, 0x3c, 0x3c, 0x3c, 0x00,
//  615 
//  616   /* 0xbf - empty place.*/
//  617   0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//  618 
//  619   /* 0xc0-0xdf - Russian capital letters.*/
//  620   /* 0xc0 */
//  621   0x00, 0x7e, 0x11, 0x11, 0x11, 0x7e,
//  622 
//  623   /* 0xc1 */
//  624   0x00, 0x7f, 0x49, 0x49, 0x49, 0x31,
//  625 
//  626   /* 0xc2 */
//  627   0x00, 0x7f, 0x49, 0x49, 0x49, 0x36,
//  628 
//  629   /* 0xc3 */
//  630   0x00, 0x7f, 0x01, 0x01, 0x01, 0x01,
//  631 
//  632   /* 0xc4 */
//  633   0xc0, 0x7e, 0x41, 0x41, 0x7f, 0xc0,
//  634 
//  635   /* 0xc5 */
//  636   0x00, 0x7f, 0x49, 0x49, 0x49, 0x41,
//  637 
//  638   /* 0xc6 */
//  639   0x00, 0x77, 0x08, 0x7f, 0x08, 0x77,
//  640 
//  641   /* 0xc7 */
//  642   0x22, 0x49, 0x49, 0x49, 0x36, 0x00,
//  643 
//  644   /* 0xc8 */
//  645   0x00, 0x7f, 0x20, 0x10, 0x08, 0x7f,
//  646 
//  647   /* 0xc9 */
//  648   0x00, 0x7e, 0x21, 0x11, 0x09, 0x7e,
//  649 
//  650   /* 0xca */
//  651   0x00, 0x7f, 0x08, 0x14, 0x22, 0x41,
//  652 
//  653   /* 0xcb */
//  654   0x00, 0x40, 0x7e, 0x01, 0x01, 0x7f,
//  655 
//  656   /* 0xcc */
//  657   0x00, 0x7f, 0x02, 0x04, 0x02, 0x7f,
//  658 
//  659   /* 0xcd */
//  660   0x00, 0x7f, 0x08, 0x08, 0x08, 0x7f,
//  661 
//  662   /* 0xce */
//  663   0x00, 0x3e, 0x41, 0x41, 0x41, 0x3e,
//  664 
//  665   /* 0xcf */
//  666   0x00, 0x7f, 0x01, 0x01, 0x01, 0x7f,
//  667 
//  668   /* 0xd0 */
//  669   0x00, 0x7f, 0x09, 0x09, 0x09, 0x06,
//  670 
//  671   /* 0xd1 */
//  672   0x00, 0x3e, 0x41, 0x41, 0x41, 0x22,
//  673 
//  674   /* 0xd2 */
//  675   0x00, 0x01, 0x01, 0x7f, 0x01, 0x01,
//  676 
//  677   /* 0xd3 */
//  678   0x00, 0x27, 0x48, 0x48, 0x48, 0x3f,
//  679 
//  680   /* 0xd4 */
//  681   0x00, 0x0e, 0x11, 0x7f, 0x11, 0x0e,
//  682 
//  683   /* 0xd5 */
//  684   0x00, 0x63, 0x14, 0x08, 0x14, 0x63,
//  685 
//  686   /* 0xd6 */
//  687   0x00, 0x7f, 0x40, 0x40, 0x7f, 0xc0,
//  688 
//  689   /* 0xd7 */
//  690   0x00, 0x07, 0x08, 0x08, 0x08, 0x7f,
//  691 
//  692   /* 0xd8 */
//  693   0x00, 0x7f, 0x40, 0x7f, 0x40, 0x7f,
//  694 
//  695   /* 0xd9 */
//  696   0x00, 0x7f, 0x40, 0x7f, 0x40, 0xff,
//  697 
//  698   /* 0xda */
//  699   0x03, 0x01, 0x7f, 0x48, 0x48, 0x30,
//  700 
//  701   /* 0xdb */
//  702   0x00, 0x7f, 0x48, 0x48, 0x30, 0x7f,
//  703 
//  704   /* 0xdc */
//  705   0x00, 0x7f, 0x48, 0x48, 0x48, 0x30,
//  706 
//  707   /* 0xdd */
//  708   0x00, 0x22, 0x41, 0x49, 0x49, 0x3e,
//  709 
//  710   /* 0xde */
//  711   0x00, 0x7f, 0x08, 0x3e, 0x41, 0x3e,
//  712 
//  713   /* 0xdf */
//  714   0x00, 0x66, 0x19, 0x09, 0x09, 0x7f,
//  715 
//  716   /* 0xe0-0xff - Russian low letters.*/
//  717   /* 0xe0 */
//  718   0x00, 0x20, 0x54, 0x54, 0x54, 0x78,
//  719 
//  720   /* 0xe1 */
//  721   0x00, 0x3c, 0x4a, 0x4a, 0x4a, 0x31,
//  722 
//  723   /* 0xe2 */
//  724   0x00, 0x7c, 0x54, 0x54, 0x54, 0x28,
//  725 
//  726   /* 0xe3 */
//  727   0x00, 0x7c, 0x04, 0x04, 0x0c, 0x00,
//  728 
//  729   /* 0xe4 */
//  730   0xc0, 0x78, 0x44, 0x44, 0x7c, 0xc0,
//  731 
//  732   /* 0xe5 */
//  733   0x00, 0x38, 0x54, 0x54, 0x54, 0x08,
//  734 
//  735   /* 0xe6 */
//  736   0x00, 0x6c, 0x10, 0x7c, 0x10, 0x6c,
//  737 
//  738   /* 0xe7 */
//  739   0x00, 0x28, 0x44, 0x54, 0x54, 0x28,
//  740 
//  741   /* 0xe8 */
//  742   0x00, 0x7c, 0x20, 0x10, 0x08, 0x7c,
//  743 
//  744   /* 0xe9 */
//  745   0x00, 0x7c, 0x20, 0x12, 0x0a, 0x7c,
//  746 
//  747   /* 0xea */
//  748   0x00, 0x7c, 0x10, 0x28, 0x44, 0x00,
//  749 
//  750   /* 0xeb */
//  751   0x40, 0x38, 0x04, 0x04, 0x7c, 0x00,
//  752 
//  753   /* 0xec */
//  754   0x00, 0x7c, 0x08, 0x10, 0x08, 0x7c,
//  755 
//  756   /* 0xed */
//  757   0x00, 0x7c, 0x10, 0x10, 0x10, 0x7c,
//  758 
//  759   /* 0xee */
//  760   0x00, 0x38, 0x44, 0x44, 0x44, 0x38,
//  761 
//  762   /* 0xef */
//  763   0x00, 0x7c, 0x04, 0x04, 0x04, 0x7c,
//  764 
//  765   /* 0xf0 */
//  766   0x00, 0xfc, 0x44, 0x44, 0x44, 0x38,
//  767 
//  768   /* 0xf1 */
//  769   0x00, 0x38, 0x44, 0x44, 0x44, 0x28,
//  770 
//  771   /* 0xf2 */
//  772   0x00, 0x04, 0x04, 0x7c, 0x04, 0x04,
//  773 
//  774   /* 0xf3 */
//  775   0x00, 0x9c, 0xa0, 0x60, 0x3c, 0x00,
//  776 
//  777   /* 0xf4 */
//  778   0x00, 0x18, 0x24, 0x7c, 0x24, 0x18,
//  779 
//  780   /* 0xf5 */
//  781   0x00, 0x6c, 0x10, 0x10, 0x6c, 0x00,
//  782 
//  783   /* 0xf6 */
//  784   0x00, 0x7c, 0x40, 0x40, 0x7c, 0xc0,
//  785 
//  786   /* 0xf7 */
//  787   0x00, 0x0c, 0x10, 0x10, 0x10, 0x7c,
//  788 
//  789   /* 0xf8 */
//  790   0x00, 0x7c, 0x40, 0x7c, 0x40, 0x7c,
//  791 
//  792   /* 0xf9 */
//  793   0x00, 0x7c, 0x40, 0x7c, 0x40, 0xfc,
//  794 
//  795   /* 0xfa */
//  796   0x0c, 0x04, 0x7c, 0x50, 0x50, 0x20,
//  797 
//  798   /* 0xfb */
//  799   0x00, 0x7c, 0x50, 0x50, 0x20, 0x7c,
//  800 
//  801   /* 0xfc */
//  802   0x00, 0x7c, 0x50, 0x50, 0x50, 0x20,
//  803 
//  804   /* 0xfd */
//  805   0x00, 0x28, 0x44, 0x54, 0x54, 0x38,
//  806 
//  807   /* 0xfe */
//  808   0x00, 0x7c, 0x10, 0x38, 0x44, 0x38,
//  809 
//  810   /* 0xff */
//  811   0x00, 0x48, 0x34, 0x14, 0x14, 0x7c
//  812 };
//  813 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  814 sFONT Font_6x8 = {
Font_6x8:
        DATA
        DC32 8, 6, 255, Font_6x8_Data

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  815   8,                    /* Symbol height, in pixels.*/
//  816   6,                    /* Symbol width, in pixels.*/
//  817   255,                  /* Symbol number in the font.*/
//  818   &Font_6x8_Data[0]     /* Font description table address.*/
//  819 };
//  820 
//  821 /** @} */ /* End of group Font_6x8 */
//  822 
//  823 /** @} */ /* End of group Fonts */
//  824 
//  825 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  826 
//  827 /******************* (C) COPYRIGHT 2010 Phyton *********************************
//  828 *
//  829 * END OF FILE Font_6x8.c */
//  830 
// 
//    16 bytes in section .data
// 1 536 bytes in section .rodata
// 
// 1 536 bytes of CONST memory
//    16 bytes of DATA  memory
//
//Errors: none
//Warnings: none
