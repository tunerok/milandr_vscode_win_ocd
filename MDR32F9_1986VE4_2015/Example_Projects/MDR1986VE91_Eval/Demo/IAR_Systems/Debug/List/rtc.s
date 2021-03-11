///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:03 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src_fatfs\rtc.c                            /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src_fatfs\rtc.c --preprocess               /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\rtc.s          /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME rtc

        #define SHT_PROGBITS 0x1

        EXTERN BKP_RTC_GetCounter

        PUBLIC get_fattime
        PUBLIC rtc_gettime
        PUBLIC rtc_initialize
        PUBLIC rtc_settime

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src_fatfs\rtc.c
//    1 /*------------------------------------------------------------------------/
//    2 /  RTC control module
//    3 /-------------------------------------------------------------------------/
//    4 /
//    5 /  Copyright (C) 2011, ChaN, all right reserved.
//    6 /  Copyright (C) 2012, Milandr.
//    7 /
//    8 / * This software is a free software and there is NO WARRANTY.
//    9 / * No restriction on use. You can use, modify and redistribute it for
//   10 /   personal, non-profit or commercial products UNDER YOUR RESPONSIBILITY.
//   11 / * Redistributions of source code must retain the above copyright notice.
//   12 /
//   13 /-------------------------------------------------------------------------*/
//   14 
//   15 #include "rtc.h"
//   16 #include <MDR32F9Qx_bkp.h>
//   17 
//   18 /*---------------------------------------------------------*/
//   19 /* User Provided RTC Function for FatFs module             */
//   20 /*---------------------------------------------------------*/
//   21 /* This is a real time clock service to be called from     */
//   22 /* FatFs module. Any valid time must be returned even if   */
//   23 /* the system does not support an RTC.                     */
//   24 /* This function is not required in read-only cfg.         */
//   25 
//   26 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 DWORD get_fattime ()
//   28 {
get_fattime:
        PUSH     {LR}
        SUB      SP,SP,#+12
//   29 	RTC rtc;
//   30 
//   31 	/* Get local time */
//   32 	rtc_gettime(&rtc);
        ADD      R0,SP,#+0
        BL       rtc_gettime
//   33 
//   34 	/* Pack date and time into a DWORD variable */
//   35 	return	  ((DWORD)(rtc.year - 1980) << 25)
//   36 			| ((DWORD)rtc.month << 21)
//   37 			| ((DWORD)rtc.mday << 16)
//   38 			| ((DWORD)rtc.hour << 11)
//   39 			| ((DWORD)rtc.min << 5)
//   40 			| ((DWORD)rtc.sec >> 1);
        LDRH     R0,[SP, #+0]
        SUBW     R0,R0,#+1980
        LDRB     R1,[SP, #+2]
        LSLS     R1,R1,#+21
        ORR      R0,R1,R0, LSL #+25
        LDRB     R1,[SP, #+3]
        ORR      R0,R0,R1, LSL #+16
        LDRB     R1,[SP, #+5]
        ORR      R0,R0,R1, LSL #+11
        LDRB     R1,[SP, #+6]
        ORR      R0,R0,R1, LSL #+5
        LDRB     R1,[SP, #+7]
        ORR      R0,R0,R1, LSR #+1
        POP      {R1-R3,PC}       ;; return
//   41 }
//   42 
//   43 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 int rtc_initialize (void)
//   45 {
//   46 
//   47 	return 1;
rtc_initialize:
        MOVS     R0,#+1
        BX       LR               ;; return
//   48 }
//   49 
//   50 
//   51 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 int rtc_gettime (RTC *rtc)
//   53 {
rtc_gettime:
        PUSH     {R3-R5,LR}
        MOV      R4,R0
//   54 
//   55   ULONG TimeVar, temp_date;
//   56 
//   57     TimeVar = BKP_RTC_GetCounter();
        BL       BKP_RTC_GetCounter
//   58     temp_date   = MDR_BKP->REG_01;
        LDR.N    R1,??DataTable0  ;; 0x400d8004
        LDR      R1,[R1, #+0]
//   59 
//   60 	rtc->sec = (BYTE)(((TimeVar) % 3600) % 60);
        MOV      R2,#+3600
        UDIV     R3,R0,R2
        MLS      R0,R2,R3,R0
        MOVS     R2,#+60
        UDIV     R5,R0,R2
        MLS      R0,R2,R5,R0
        STRB     R0,[R4, #+7]
//   61 	rtc->min = (BYTE)(((TimeVar) % 3600) / 60);
        STRB     R5,[R4, #+6]
//   62 	rtc->hour = (BYTE)(TimeVar / 3600);
        STRB     R3,[R4, #+5]
//   63 	rtc->wday = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+4]
//   64 	rtc->mday = temp_date >> 24;
        LSRS     R0,R1,#+24
        STRB     R0,[R4, #+3]
//   65 	rtc->month = (temp_date >> 16) & 0xFF;
        LSRS     R0,R1,#+16
        STRB     R0,[R4, #+2]
//   66 	rtc->year = temp_date & 0xFFFF;
        STRH     R1,[R4, #+0]
//   67 	return 1;
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}    ;; return
//   68 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x400d8004
//   69 
//   70 
//   71 
//   72 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 int rtc_settime (const RTC *rtc)
//   74 {
//   75 	return 1;
rtc_settime:
        MOVS     R0,#+1
        BX       LR               ;; return
//   76 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   77 
//   78 
// 
// 132 bytes in section .text
// 
// 132 bytes of CODE memory
//
//Errors: none
//Warnings: none
