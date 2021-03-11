///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:03 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src_fatfs\mmc.c                            /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src_fatfs\mmc.c --preprocess               /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\mmc.s          /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME mmc

        #define SHT_PROGBITS 0x1

        PUBLIC disk_initialize
        PUBLIC disk_ioctl
        PUBLIC disk_read
        PUBLIC disk_status
        PUBLIC disk_timerproc
        PUBLIC disk_write

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src_fatfs\mmc.c
//    1 /*------------------------------------------------------------------------*/
//    2 /* MMCv3/SDv1/SDv2 (SPI mode) control module                              */
//    3 /*------------------------------------------------------------------------*/
//    4 /*
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
//   15 #define CCLK        80000000UL  /* cclk frequency [Hz] */
//   16 #define PCLK_SSP    80000000UL  /* PCLK frequency for SSP [Hz] */
//   17 #define SCLK_FAST   20000000UL  /* SCLK frequency under normal operation [Hz] */
//   18 #define SCLK_SLOW   400000UL  /* SCLK frequency under initialization [Hz] */
//   19 
//   20 #define INS         1 /* Socket status (true:Inserted, false:Empty) */
//   21 #define WP          0 /* Card write protection (true:yes, false:no) */
//   22 #define _BV(bit) (1<<(bit))
//   23 
//   24 #define SSPxDR      MDR_SSP2->DR
//   25 #define SSPxSR      MDR_SSP2->SR
//   26 #define SSPxCR0     MDR_SSP2->CR0
//   27 #define SSPxCR1     MDR_SSP2->CR1
//   28 #define SSPxCPSR    MDR_SSP2->CPSR
//   29 #define CS_LOW()    {MDR_PORTD->RXTX &= ~0x0008;} /* Set PD3 low */
//   30 #define CS_HIGH()   {MDR_PORTD->RXTX |= 0x0008;;} /* Set PD3 high */
//   31 
//   32 #if PCLK_SSP * 1 == CCLK
//   33 #define PCLKDIV_SSP PCLKDIV_1
//   34 #elif PCLK_SSP * 2 == CCLK
//   35 #define PCLKDIV_SSP PCLKDIV_2
//   36 #elif PCLK_SSP * 4 == CCLK
//   37 #define PCLKDIV_SSP PCLKDIV_4
//   38 #elif PCLK_SSP * 8 == CCLK
//   39 #define PCLKDIV_SSP PCLKDIV_8
//   40 #else
//   41 #error Invalid clock frequency.
//   42 #endif
//   43 
//   44 
//   45 #define FCLK_FAST()     { SSPxCPSR = (PCLK_SSP / SCLK_FAST) & ~1; }
//   46 #define FCLK_SLOW()     { SSPxCPSR = (PCLK_SSP / SCLK_SLOW) & ~1; }
//   47 
//   48 
//   49 /*--------------------------------------------------------------------------
//   50 
//   51    Module Private Functions
//   52 
//   53 ---------------------------------------------------------------------------*/
//   54 
//   55 #include "diskio.h"
//   56 #include <MDR32Fx.h>
//   57 
//   58 
//   59 /* MMC/SD command */
//   60 #define CMD0  (0)     /* GO_IDLE_STATE */
//   61 #define CMD1  (1)     /* SEND_OP_COND (MMC) */
//   62 #define ACMD41  (0x80+41) /* SEND_OP_COND (SDC) */
//   63 #define CMD8  (8)     /* SEND_IF_COND */
//   64 #define CMD9  (9)     /* SEND_CSD */
//   65 #define CMD10 (10)    /* SEND_CID */
//   66 #define CMD12 (12)    /* STOP_TRANSMISSION */
//   67 #define ACMD13  (0x80+13) /* SD_STATUS (SDC) */
//   68 #define CMD16 (16)    /* SET_BLOCKLEN */
//   69 #define CMD17 (17)    /* READ_SINGLE_BLOCK */
//   70 #define CMD18 (18)    /* READ_MULTIPLE_BLOCK */
//   71 #define CMD23 (23)    /* SET_BLOCK_COUNT (MMC) */
//   72 #define ACMD23  (0x80+23) /* SET_WR_BLK_ERASE_COUNT (SDC) */
//   73 #define CMD24 (24)    /* WRITE_BLOCK */
//   74 #define CMD25 (25)    /* WRITE_MULTIPLE_BLOCK */
//   75 #define CMD32 (32)    /* ERASE_ER_BLK_START */
//   76 #define CMD33 (33)    /* ERASE_ER_BLK_END */
//   77 #define CMD38 (38)    /* ERASE */
//   78 #define CMD55 (55)    /* APP_CMD */
//   79 #define CMD58 (58)    /* READ_OCR */
//   80 
//   81 /* Card type flags (CardType) */
//   82 #define CT_MMC    0x01    /* MMC ver 3 */
//   83 #define CT_SD1    0x02    /* SD ver 1 */
//   84 #define CT_SD2    0x04    /* SD ver 2 */
//   85 #define CT_SDC    (CT_SD1|CT_SD2) /* SD */
//   86 #define CT_BLOCK  0x08    /* Block addressing */
//   87 
//   88 
//   89 static volatile

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   90 DSTATUS Stat = STA_NOINIT;  /* Physical drive status */
Stat:
        DATA
        DC8 1
        DC8 0
        DC8 0, 0
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0
//   91 
//   92 static volatile
//   93 UINT Timer1, Timer2;  /* 1kHz decrement timer stopped at zero (disk_timerproc()) */
//   94 
//   95 static
//   96 BYTE CardType;      /* Card type flags */
//   97 
//   98 
//   99 
//  100 /*-----------------------------------------------------------------------*/
//  101 /* Send/Receive data to the MMC  (Platform dependent)                    */
//  102 /*-----------------------------------------------------------------------*/
//  103 
//  104 /* Exchange a byte */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 static
//  106 BYTE xchg_spi (
//  107   BYTE dat  /* Data to send */
//  108 )
//  109 {
//  110   SSPxDR = dat;
xchg_spi:
        LDR.W    R1,??DataTable11  ;; 0x400a0008
        STR      R0,[R1, #+0]
//  111   while (SSPxSR & 0x10) ;
??xchg_spi_0:
        LDR      R0,[R1, #+4]
        LSLS     R0,R0,#+27
        BMI.N    ??xchg_spi_0
//  112   return SSPxDR;
        LDR      R0,[R1, #+0]
        UXTB     R0,R0
        BX       LR               ;; return
//  113 }
//  114 
//  115 
//  116 /* Receive multiple byte */
//  117 static
//  118 void rcvr_spi_multi (
//  119   BYTE *buff,   /* Pointer to data buffer */
//  120   UINT btr    /* Number of bytes to receive (16, 64 or 512) */
//  121 )
//  122 {
//  123   UINT n = 512;
//  124   WORD d;
//  125 
//  126 
//  127   SSPxCR0 = 0x000F;       /* Select 16-bit mode */
//  128 
//  129   for (n = 0; n < 8; n++)     /* Push 8 frames into pipeline  */
//  130     SSPxDR = 0xFFFF;
//  131   btr -= 16;
//  132   while (btr) {         /* Receive the data block into buffer */
//  133     while (!(SSPxSR & _BV(2))) ;
//  134     d = SSPxDR;
//  135     SSPxDR = 0xFFFF;
//  136     *buff++ = d >> 8;
//  137     *buff++ = d;
//  138     btr -= 2;
//  139   }
//  140   for (n = 0; n < 8; n++) {   /* Pop remaining frames from pipeline */
//  141     while (!(SSPxSR & _BV(2))) ;
//  142     d = SSPxDR;
//  143     *buff++ = d >> 8;
//  144     *buff++ = d;
//  145   }
//  146 
//  147   SSPxCR0 = 0x0007;       /* Select 8-bit mode */
//  148 }
//  149 
//  150 
//  151 /* Send multiple byte */
//  152 static
//  153 void xmit_spi_multi (
//  154   const BYTE *buff, /* Pointer to the data */
//  155   UINT btx      /* Number of bytes to send (512) */
//  156 )
//  157 {
//  158   UINT n = 512;
//  159   WORD d;
//  160 
//  161 
//  162   SSPxCR0 = 0x000F;     /* Select 16-bit mode */
//  163 
//  164   for (n = 0; n < 8; n++) { /* Push 8 frames into pipeline  */
//  165     d = *buff++;
//  166     d = (d << 8) | *buff++;
//  167     SSPxDR = d;
//  168   }
//  169   btx -= 16;
//  170   do {            /* Transmit data block */
//  171     d = *buff++;
//  172     d = (d << 8) | *buff++;
//  173     while (!(SSPxSR & _BV(2))) ;
//  174     SSPxDR; SSPxDR = d;
//  175   } while (btx -= 2);
//  176   for (n = 0; n < 8; n++) {
//  177     while (!(SSPxSR & _BV(2))) ;
//  178     SSPxDR;
//  179   }
//  180 
//  181   SSPxCR0 = 0x0007;     /* Select 8-bit mode */
//  182 }
//  183 
//  184 
//  185 
//  186 /*-----------------------------------------------------------------------*/
//  187 /* Wait for card ready                                                   */
//  188 /*-----------------------------------------------------------------------*/
//  189 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  190 static
//  191 int wait_ready (  /* 1:Ready, 0:Timeout */
//  192   UINT wt     /* Timeout [ms] */
//  193 )
//  194 {
wait_ready:
        PUSH     {R4,LR}
//  195   BYTE d;
//  196 
//  197 
//  198   Timer2 = wt;
        LDR.W    R4,??DataTable11_1
        STR      R0,[R4, #+8]
//  199   do {
//  200     d = xchg_spi(0xFF);
//  201     /* This loop takes a time. Insert rot_rdq() here for multitask envilonment. */
//  202   } while (d != 0xFF && Timer2);  /* Wait for card goes ready or timeout */
??wait_ready_0:
        BL       ??Subroutine0_1
??CrossCallReturnLabel_12:
        CMP      R0,#+255
        BEQ.N    ??wait_ready_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BNE.N    ??wait_ready_0
        POP      {R4,PC}          ;; return
??wait_ready_1:
        MOVS     R0,#+1
        POP      {R4,PC}
//  203 
//  204   return (d == 0xFF) ? 1 : 0;
//  205 }
//  206 
//  207 
//  208 
//  209 /*-----------------------------------------------------------------------*/
//  210 /* Deselect card and release SPI                                         */
//  211 /*-----------------------------------------------------------------------*/
//  212 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  213 static
//  214 void deselect (void)
//  215 {
//  216   CS_HIGH();    /* CS = H */
deselect:
        LDR.W    R0,??DataTable11_2  ;; 0x400c0000
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0x8
        STR      R1,[R0, #+0]
//  217   xchg_spi(0xFF); /* Dummy clock (force DO hi-z for multiple slave SPI) */
        MOVS     R0,#+255
        B.N      xchg_spi
//  218 
//  219 }
//  220 
//  221 
//  222 
//  223 /*-----------------------------------------------------------------------*/
//  224 /* Select card and wait for ready                                        */
//  225 /*-----------------------------------------------------------------------*/
//  226 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  227 static
//  228 int select (void) /* 1:OK, 0:Timeout */
//  229 {
select:
        PUSH     {R7,LR}
//  230   CS_LOW();
        LDR.W    R0,??DataTable11_2  ;; 0x400c0000
        LDR      R1,[R0, #+0]
        BIC      R1,R1,#0x8
        BL       ??Subroutine0_0
//  231   xchg_spi(0xFF); /* Dummy clock (force DO enabled) */
//  232 
//  233   if (wait_ready(500)) return 1;  /* OK */
??CrossCallReturnLabel_13:
        MOV      R0,#+500
        BL       wait_ready
        CBZ.N    R0,??select_0
        MOVS     R0,#+1
        POP      {R1,PC}
//  234   deselect();
??select_0:
        BL       deselect
//  235   return 0; /* Timeout */
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  236 }
//  237 
//  238 
//  239 
//  240 /*-----------------------------------------------------------------------*/
//  241 /* Control SPI module (Platform dependent)                               */
//  242 /*-----------------------------------------------------------------------*/
//  243 
//  244 static
//  245 void power_on (void)  /* Enable SSP module and attach it to I/O pads */
//  246 {
//  247   MDR_RST_CLK->PER_CLOCK |= 1 << 20 | 1 << 24;    /* Enable SSP, PD module clock */
//  248     MDR_RST_CLK->SSP_CLOCK = 2 << RST_CLK_SSP_CLOCK_SSP2_BRG_Pos | 1 << RST_CLK_SSP_CLOCK_SSP2_CLK_EN_Pos;
//  249                                         /* Select frequency for SSP */
//  250 
//  251   SSPxCR0 = 0x0007;     /* Set mode: SPI mode 0, 8-bit */
//  252   SSPxCR1 = 0x2;        /* Enable SSP with Master */
//  253 
//  254   // Attach SCK1, MISO1, MOSI1 and CS# to I/O pad
//  255     MDR_PORTD->ANALOG &= 0xFF93;
//  256     MDR_PORTD->ANALOG |= 0x006C;
//  257     MDR_PORTD->FUNC   &= 0xFFFFC30F;
//  258     MDR_PORTD->FUNC   |= 0x00002820;
//  259     MDR_PORTD->PWR    |= 0x00003CF0;
//  260 
//  261     MDR_PORTD->OE |= _BV(6)|_BV(5)|_BV(3);  /* Set SCK1, MOSI1 and CS# as output */
//  262 
//  263   CS_HIGH();          /* Set CS# high */
//  264 }
//  265 
//  266 
//  267 static
//  268 void power_off (void)   /* Disable SPI function */
//  269 {
//  270   select();       /* Wait for card ready */
//  271   deselect();
//  272 }
//  273 
//  274 
//  275 
//  276 /*-----------------------------------------------------------------------*/
//  277 /* Receive a data packet from the MMC                                    */
//  278 /*-----------------------------------------------------------------------*/
//  279 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  280 static
//  281 int rcvr_datablock (  /* 1:OK, 0:Error */
//  282   BYTE *buff,     /* Data buffer */
//  283   UINT btr      /* Data block length (byte) */
//  284 )
//  285 {
rcvr_datablock:
        PUSH     {R4-R6,LR}
        MOV      R4,R0
        MOV      R5,R1
//  286   BYTE token;
//  287 
//  288 
//  289   Timer1 = 200;
        LDR.W    R6,??DataTable11_1
        MOVS     R0,#+200
        STR      R0,[R6, #+4]
//  290   do {              /* Wait for DataStart token in timeout of 200ms */
//  291     token = xchg_spi(0xFF);
??rcvr_datablock_0:
        BL       ??Subroutine0_1
//  292     /* This loop will take a time. Insert rot_rdq() here for multitask envilonment. */
//  293   } while ((token == 0xFF) && Timer1);
??CrossCallReturnLabel_11:
        CMP      R0,#+255
        BNE.N    ??rcvr_datablock_1
        LDR      R0,[R6, #+4]
        CMP      R0,#+0
        BNE.N    ??rcvr_datablock_0
        B.N      ??rcvr_datablock_2
//  294   if(token != 0xFE) return 0;   /* Function fails if invalid DataStart token or timeout */
??rcvr_datablock_1:
        CMP      R0,#+254
        BEQ.N    ??rcvr_datablock_3
??rcvr_datablock_2:
        MOVS     R0,#+0
        POP      {R4-R6,PC}
//  295 
//  296   rcvr_spi_multi(buff, btr);    /* Store trailing data to the buffer */
??rcvr_datablock_3:
        BL       ?Subroutine2
??CrossCallReturnLabel_18:
        MOVW     R2,#+65535
??rcvr_datablock_4:
        STR      R2,[R0, #+8]
        SUBS     R1,R1,#+1
        BNE.N    ??rcvr_datablock_4
        SUBS     R1,R5,#+16
        B.N      ??rcvr_datablock_5
??rcvr_datablock_6:
        BL       ?Subroutine1
??CrossCallReturnLabel_16:
        LSLS     R5,R3,#+16
        LSRS     R5,R5,#+24
        STRB     R5,[R4], #+1
        STRB     R3,[R4], #+1
        SUBS     R1,R1,#+2
??rcvr_datablock_5:
        BNE.N    ??rcvr_datablock_6
        MOVS     R1,#+8
??rcvr_datablock_7:
        LDR      R2,[R0, #+12]
        LSLS     R2,R2,#+29
        BPL.N    ??rcvr_datablock_7
        LDR      R2,[R0, #+8]
        LSLS     R3,R2,#+16
        LSRS     R3,R3,#+24
        STRB     R3,[R4], #+1
        STRB     R2,[R4], #+1
        SUBS     R1,R1,#+1
        BNE.N    ??rcvr_datablock_7
        BL       ?Subroutine0
//  297   xchg_spi(0xFF); xchg_spi(0xFF);     /* Discard CRC */
??CrossCallReturnLabel_15:
        BL       ??Subroutine0_1
//  298 
//  299   return 1;           /* Function succeeded */
??CrossCallReturnLabel_10:
        MOVS     R0,#+1
        POP      {R4-R6,PC}       ;; return
//  300 }
//  301 
//  302 
//  303 
//  304 /*-----------------------------------------------------------------------*/
//  305 /* Send a data packet to the MMC                                         */
//  306 /*-----------------------------------------------------------------------*/
//  307 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  308 static
//  309 int xmit_datablock (  /* 1:OK, 0:Failed */
//  310   const BYTE *buff, /* Ponter to 512 byte data to be sent */
//  311   BYTE token      /* Token */
//  312 )
//  313 {
xmit_datablock:
        PUSH     {R3-R5,LR}
        MOV      R4,R0
        MOV      R5,R1
//  314   BYTE resp;
//  315 
//  316 
//  317   if (!wait_ready(500)) return 0;   /* Wait for card ready */
        MOV      R0,#+500
        BL       wait_ready
        CBZ.N    R0,??xmit_datablock_0
//  318 
//  319   xchg_spi(token);          /* Send token */
        MOV      R0,R5
        BL       xchg_spi
//  320   if (token != 0xFD) {        /* Send data if token is other than StopTran */
        CMP      R5,#+253
        BEQ.N    ??xmit_datablock_1
//  321     xmit_spi_multi(buff, 512);    /* Data */
        BL       ?Subroutine2
??CrossCallReturnLabel_19:
        BL       ?Subroutine3
??CrossCallReturnLabel_20:
        STR      R2,[R0, #+8]
        SUBS     R1,R1,#+1
        BNE.N    ??CrossCallReturnLabel_19
        MOVS     R1,#+248
??xmit_datablock_2:
        BL       ?Subroutine3
??CrossCallReturnLabel_21:
        BL       ?Subroutine1
??CrossCallReturnLabel_17:
        SUBS     R1,R1,#+1
        BNE.N    ??xmit_datablock_2
        MOVS     R1,#+8
??xmit_datablock_3:
        LDR      R2,[R0, #+12]
        LSLS     R2,R2,#+29
        BPL.N    ??xmit_datablock_3
        LDR      R2,[R0, #+8]
        SUBS     R1,R1,#+1
        BNE.N    ??xmit_datablock_3
        BL       ?Subroutine0
//  322     xchg_spi(0xFF); xchg_spi(0xFF); /* Dummy CRC */
??CrossCallReturnLabel_14:
        BL       ??Subroutine0_1
//  323 
//  324     resp = xchg_spi(0xFF);        /* Receive data resp */
//  325     if ((resp & 0x1F) != 0x05)    /* Function fails if the data packet was not accepted */
??CrossCallReturnLabel_9:
        BL       ??Subroutine0_1
??CrossCallReturnLabel_8:
        AND      R0,R0,#0x1F
        CMP      R0,#+5
        BEQ.N    ??xmit_datablock_1
//  326       return 0;
??xmit_datablock_0:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}
//  327   }
//  328   return 1;
??xmit_datablock_1:
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}    ;; return
//  329 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine3:
        LDRB     R2,[R4], #+1
        LDRB     R3,[R4], #+1
        ORR      R2,R3,R2, LSL #+8
        BX       LR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        LDR.W    R0,??DataTable11_3  ;; 0x400a0000
        MOVS     R1,#+15
        STR      R1,[R0, #+0]
        MOVS     R1,#+8
        BX       LR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        LDR      R3,[R0, #+12]
        LSLS     R3,R3,#+29
        BPL.N    ?Subroutine1
        LDR      R3,[R0, #+8]
        STR      R2,[R0, #+8]
        BX       LR
//  330 
//  331 
//  332 
//  333 /*-----------------------------------------------------------------------*/
//  334 /* Send a command packet to the MMC                                      */
//  335 /*-----------------------------------------------------------------------*/
//  336 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  337 static
//  338 BYTE send_cmd (   /* Return value: R1 resp (bit7==1:Failed to send) */
//  339   BYTE cmd,   /* Command index */
//  340   DWORD arg   /* Argument */
//  341 )
//  342 {
send_cmd:
        PUSH     {R3-R5,LR}
        MOV      R4,R0
        MOV      R5,R1
//  343   BYTE n, res;
//  344 
//  345 
//  346   if (cmd & 0x80) { /* Send a CMD55 prior to ACMD<n> */
        LSLS     R0,R4,#+24
        BPL.N    ??send_cmd_0
//  347     cmd &= 0x7F;
        AND      R4,R4,#0x7F
//  348     res = send_cmd(CMD55, 0);
        MOVS     R1,#+0
        MOVS     R0,#+55
        BL       send_cmd
//  349     if (res > 1) return res;
        CMP      R0,#+2
        BCS.N    ??send_cmd_1
//  350   }
//  351 
//  352   /* Select card */
//  353   deselect();
??send_cmd_0:
        BL       deselect
//  354   if (!select()) return 0xFF;
        BL       select
        CBNZ.N   R0,??send_cmd_2
        MOVS     R0,#+255
        POP      {R1,R4,R5,PC}
//  355 
//  356   /* Send command packet */
//  357   xchg_spi(0x40 | cmd);       /* Start + command index */
??send_cmd_2:
        ORR      R0,R4,#0x40
        BL       xchg_spi
//  358   xchg_spi((BYTE)(arg >> 24));    /* Argument[31..24] */
        LSRS     R0,R5,#+24
        BL       xchg_spi
//  359   xchg_spi((BYTE)(arg >> 16));    /* Argument[23..16] */
        LSLS     R0,R5,#+8
        LSRS     R0,R0,#+24
        BL       xchg_spi
//  360   xchg_spi((BYTE)(arg >> 8));     /* Argument[15..8] */
        LSLS     R0,R5,#+16
        LSRS     R0,R0,#+24
        BL       xchg_spi
//  361   xchg_spi((BYTE)arg);        /* Argument[7..0] */
        UXTB     R0,R5
        BL       xchg_spi
//  362   n = 0x01;             /* Dummy CRC + Stop */
        MOVS     R0,#+1
//  363   if (cmd == CMD0) n = 0x95;      /* Valid CRC for CMD0(0) */
        CBNZ.N   R4,??send_cmd_3
        MOVS     R0,#+149
        B.N      ??send_cmd_4
//  364   if (cmd == CMD8) n = 0x87;      /* Valid CRC for CMD8(0x1AA) */
??send_cmd_3:
        CMP      R4,#+8
        IT       EQ 
        MOVEQ    R0,#+135
//  365   xchg_spi(n);
??send_cmd_4:
        BL       xchg_spi
//  366 
//  367   /* Receive command resp */
//  368   if (cmd == CMD12) xchg_spi(0xFF); /* Diacard following one byte when CMD12 */
        CMP      R4,#+12
        ITT      EQ 
        MOVEQ    R0,#+255
        BLEQ     xchg_spi
//  369   n = 10;               /* Wait for response (10 bytes max) */
        MOVS     R4,#+10
//  370   do
//  371     res = xchg_spi(0xFF);
??send_cmd_5:
        BL       ??Subroutine0_1
//  372   while ((res & 0x80) && --n);
??CrossCallReturnLabel_7:
        LSLS     R1,R0,#+24
        BPL.N    ??send_cmd_1
        SUBS     R4,R4,#+1
        BNE.N    ??send_cmd_5
//  373 
//  374   return res;             /* Return received response */
??send_cmd_1:
        POP      {R1,R4,R5,PC}    ;; return
//  375 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        MOVS     R1,#+7
??Subroutine0_0:
        STR      R1,[R0, #+0]
??Subroutine0_1:
        MOVS     R0,#+255
        B.N      xchg_spi
//  376 
//  377 
//  378 
//  379 /*--------------------------------------------------------------------------
//  380 
//  381    Public Functions
//  382 
//  383 ---------------------------------------------------------------------------*/
//  384 
//  385 
//  386 /*-----------------------------------------------------------------------*/
//  387 /* Initialize disk drive                                                 */
//  388 /*-----------------------------------------------------------------------*/
//  389 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  390 DSTATUS disk_initialize (
//  391   BYTE drv    /* Physical drive number (0) */
//  392 )
//  393 {
disk_initialize:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
//  394   BYTE n, cmd, ty, ocr[4];
//  395 
//  396 
//  397   if (drv) return STA_NOINIT;     /* Supports only drive 0 */
        CBZ.N    R0,??disk_initialize_0
        MOVS     R0,#+1
        B.N      ??disk_initialize_1
//  398   if (Stat & STA_NODISK) return Stat; /* Is card existing in the soket? */
??disk_initialize_0:
        LDR.W    R4,??DataTable11_1
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+30
        BMI.W    ??disk_initialize_2
//  399 
//  400   power_on();             /* Initialize SPI */
        LDR.W    R0,??DataTable11_4  ;; 0x4002001c
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0x1100000
        STR      R1,[R0, #+0]
        MOV      R1,#+33554944
        STR      R1,[R0, #+16]
        LDR.W    R5,??DataTable11_3  ;; 0x400a0000
        MOVS     R0,#+7
        STR      R0,[R5, #+0]
        MOVS     R0,#+2
        STR      R0,[R5, #+4]
        LDR.W    R0,??DataTable11_2  ;; 0x400c0000
        LDR      R1,[R0, #+12]
        MOVW     R2,#+65427
        ANDS     R1,R2,R1
        STR      R1,[R0, #+12]
        LDR      R1,[R0, #+12]
        ORR      R1,R1,#0x6C
        STR      R1,[R0, #+12]
        LDR      R1,[R0, #+8]
        LDR.W    R2,??DataTable11_5  ;; 0xffffc30f
        ANDS     R1,R2,R1
        STR      R1,[R0, #+8]
        LDR      R1,[R0, #+8]
        ORR      R1,R1,#0x2800
        ORR      R1,R1,#0x20
        STR      R1,[R0, #+8]
        LDR      R1,[R0, #+24]
        ORR      R1,R1,#0x3C00
        ORR      R1,R1,#0xF0
        STR      R1,[R0, #+24]
        LDR      R1,[R0, #+4]
        ORR      R1,R1,#0x68
        STR      R1,[R0, #+4]
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0x8
        STR      R1,[R0, #+0]
//  401   FCLK_SLOW();
        MOVS     R0,#+200
        STR      R0,[R5, #+16]
//  402   for (n = 10; n; n--) xchg_spi(0xFF);  /* Send 80 dummy clocks */
        MOVS     R7,#+10
??disk_initialize_3:
        BL       ??Subroutine0_1
??CrossCallReturnLabel_6:
        SUBS     R7,R7,#+1
        BNE.N    ??disk_initialize_3
//  403 
//  404   ty = 0;
        MOVS     R6,#+0
//  405   if (send_cmd(CMD0, 0) == 1) {     /* Put the card SPI/Idle state */
        MOVS     R1,#+0
        MOV      R0,R1
        BL       send_cmd
        CMP      R0,#+1
        BNE.N    ??disk_initialize_4
//  406     Timer1 = 1000;            /* Initialization timeout = 1 sec */
        MOV      R0,#+1000
        STR      R0,[R4, #+4]
//  407     if (send_cmd(CMD8, 0x1AA) == 1) { /* SDv2? */
        MOV      R1,#+426
        MOVS     R0,#+8
        BL       send_cmd
        CMP      R0,#+1
        ADD      R8,SP,#+0
        BNE.N    ??disk_initialize_5
//  408       for (n = 0; n < 4; n++) ocr[n] = xchg_spi(0xFF);  /* Get 32 bit return value of R7 resp */
??disk_initialize_6:
        BL       ??Subroutine0_1
??CrossCallReturnLabel_5:
        STRB     R0,[R7, R8]
        ADDS     R0,R7,#+1
        UXTB     R7,R0
        CMP      R7,#+4
        BCC.N    ??disk_initialize_6
//  409       if (ocr[2] == 0x01 && ocr[3] == 0xAA) {       /* Is the card supports vcc of 2.7-3.6V? */
        LDRB     R0,[R8, #+2]
        CMP      R0,#+1
        ITT      EQ 
        LDRBEQ   R0,[SP, #+3]
        CMPEQ    R0,#+170
        BNE.N    ??disk_initialize_4
//  410 //                send_cmd(CMD0, 0);
//  411 //                send_cmd(CMD8, 0x1AA);
//  412 //        while (Timer1 && send_cmd(ACMD41, 0)) ; /* Wait for end of initialization with ACMD41(HCS) */
//  413         while (Timer1 && send_cmd(ACMD41, 1UL << 30)) ; /* Wait for end of initialization with ACMD41(HCS) */
??disk_initialize_7:
        LDR      R0,[R4, #+4]
        CBZ.N    R0,??disk_initialize_8
        MOV      R1,#+1073741824
        MOVS     R0,#+169
        BL       send_cmd
        CMP      R0,#+0
        BNE.N    ??disk_initialize_7
//  414         if (Timer1 && send_cmd(CMD58, 0) == 0) {    /* Check CCS bit in the OCR */
??disk_initialize_8:
        LDR      R0,[R4, #+4]
        CBZ.N    R0,??disk_initialize_4
        MOVS     R1,#+0
        MOVS     R0,#+58
        BL       send_cmd
        CBNZ.N   R0,??disk_initialize_4
//  415           for (n = 0; n < 4; n++) ocr[n] = xchg_spi(0xFF);
        MOVS     R7,#+0
??disk_initialize_9:
        BL       ??Subroutine0_1
??CrossCallReturnLabel_4:
        STRB     R0,[R7, R8]
        ADDS     R7,R7,#+1
        CMP      R7,#+4
        BCC.N    ??disk_initialize_9
//  416           ty = (ocr[0] & 0x40) ? CT_SD2 | CT_BLOCK : CT_SD2;  /* Card id SDv2 */
        LDRB     R0,[SP, #+0]
        LSLS     R0,R0,#+25
        ITE      PL 
        MOVPL    R6,#+4
        MOVMI    R6,#+12
        B.N      ??disk_initialize_4
//  417         }
//  418       }
//  419     } else {  /* Not SDv2 card */
//  420       if (send_cmd(ACMD41, 0) <= 1)   { /* SDv1 or MMC? */
??disk_initialize_5:
        MOVS     R1,#+0
        MOVS     R0,#+169
        BL       send_cmd
        CMP      R0,#+2
        ITTEE    CC 
        MOVCC    R6,#+2
        MOVCC    R8,#+169
        MOVCS    R6,#+1
        MOVCS    R8,R6
//  421         ty = CT_SD1; cmd = ACMD41;  /* SDv1 (ACMD41(0)) */
//  422       } else {
//  423         ty = CT_MMC; cmd = CMD1;  /* MMCv3 (CMD1(0)) */
//  424       }
//  425       while (Timer1 && send_cmd(cmd, 0)) ;    /* Wait for end of initialization */
??disk_initialize_10:
        LDR      R0,[R4, #+4]
        CBZ.N    R0,??disk_initialize_11
        MOVS     R1,#+0
        MOV      R0,R8
        BL       send_cmd
        CMP      R0,#+0
        BNE.N    ??disk_initialize_10
//  426       if (!Timer1 || send_cmd(CMD16, 512) != 0) /* Set block length: 512 */
??disk_initialize_11:
        LDR      R0,[R4, #+4]
        CBZ.N    R0,??disk_initialize_12
        MOV      R1,#+512
        MOVS     R0,#+16
        BL       send_cmd
        CBZ.N    R0,??disk_initialize_4
//  427         ty = 0;
??disk_initialize_12:
        MOVS     R6,#+0
//  428     }
//  429   }
//  430   CardType = ty;  /* Card type */
??disk_initialize_4:
        STRB     R6,[R4, #+1]
//  431   deselect();
        BL       deselect
//  432 
//  433   if (ty) {     /* OK */
        CBZ.N    R6,??disk_initialize_13
//  434     FCLK_FAST();      /* Set fast clock */
        MOVS     R0,#+4
        STR      R0,[R5, #+16]
//  435     Stat &= ~STA_NOINIT;  /* Clear STA_NOINIT flag */
        LDRB     R0,[R4, #+0]
        AND      R0,R0,#0xFE
        B.N      ??disk_initialize_14
//  436   } else {      /* Failed */
//  437     power_off();
??disk_initialize_13:
        BL       select
        BL       deselect
//  438     Stat = STA_NOINIT;
        MOVS     R0,#+1
??disk_initialize_14:
        STRB     R0,[R4, #+0]
//  439   }
//  440 
//  441   return Stat;
??disk_initialize_2:
        LDRB     R0,[R4, #+0]
??disk_initialize_1:
        POP      {R1,R2,R4-R8,PC}  ;; return
//  442 }
//  443 
//  444 
//  445 
//  446 /*-----------------------------------------------------------------------*/
//  447 /* Get disk status                                                       */
//  448 /*-----------------------------------------------------------------------*/
//  449 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  450 DSTATUS disk_status (
//  451   BYTE drv    /* Physical drive number (0) */
//  452 )
//  453 {
//  454   if (drv) return STA_NOINIT;   /* Supports only drive 0 */
disk_status:
        CBZ.N    R0,??disk_status_0
        MOVS     R0,#+1
        BX       LR
//  455 
//  456   return Stat;  /* Return disk status */
??disk_status_0:
        LDR.N    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        BX       LR               ;; return
//  457 }
//  458 
//  459 
//  460 
//  461 /*-----------------------------------------------------------------------*/
//  462 /* Read sector(s)                                                        */
//  463 /*-----------------------------------------------------------------------*/
//  464 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  465 DRESULT disk_read (
//  466   BYTE drv,   /* Physical drive number (0) */
//  467   BYTE *buff,   /* Pointer to the data buffer to store read data */
//  468   DWORD sector, /* Start sector number (LBA) */
//  469   BYTE count    /* Number of sectors to read (1..128) */
//  470 )
//  471 {
disk_read:
        PUSH     {R3-R5,LR}
        MOV      R4,R1
        MOV      R1,R2
        MOV      R5,R3
//  472   if (drv || !count) return RES_PARERR;   /* Check parameter */
        CBNZ.N   R0,??disk_read_0
        CBNZ.N   R5,??disk_read_1
??disk_read_0:
        MOVS     R0,#+4
        POP      {R1,R4,R5,PC}
//  473   if (Stat & STA_NOINIT) return RES_NOTRDY; /* Check if drive is ready */
??disk_read_1:
        LDR.N    R0,??DataTable11_1
        LDRB     R2,[R0, #+0]
        LSLS     R2,R2,#+31
        BPL.N    ??disk_read_2
        MOVS     R0,#+3
        POP      {R1,R4,R5,PC}
//  474 
//  475   if (!(CardType & CT_BLOCK)) sector *= 512;  /* LBA ot BA conversion (byte addressing cards) */
??disk_read_2:
        LDRB     R0,[R0, #+1]
        LSLS     R0,R0,#+28
        IT       PL 
        LSLPL    R1,R1,#+9
//  476 
//  477   if (count == 1) { /* Single sector read */
        CMP      R5,#+1
        BNE.N    ??disk_read_3
//  478     if ((send_cmd(CMD17, sector) == 0)  /* READ_SINGLE_BLOCK */
//  479       && rcvr_datablock(buff, 512))
        MOVS     R0,#+17
        BL       send_cmd
        CBNZ.N   R0,??disk_read_4
        BL       ?Subroutine5
??CrossCallReturnLabel_26:
        CBZ.N    R0,??disk_read_4
//  480       count = 0;
        MOVS     R5,#+0
        B.N      ??disk_read_4
//  481   }
//  482   else {        /* Multiple sector read */
//  483     if (send_cmd(CMD18, sector) == 0) { /* READ_MULTIPLE_BLOCK */
??disk_read_3:
        MOVS     R0,#+18
        BL       send_cmd
        CBNZ.N   R0,??disk_read_4
//  484       do {
//  485         if (!rcvr_datablock(buff, 512)) break;
??disk_read_5:
        BL       ?Subroutine5
??CrossCallReturnLabel_25:
        CMP      R0,#+0
        ITTTT    NE 
        ADDNE    R4,R4,#+512
        SUBNE    R5,R5,#+1
        UXTBNE   R5,R5
        CMPNE    R5,#+0
//  486         buff += 512;
//  487       } while (--count);
        BNE.N    ??disk_read_5
//  488       send_cmd(CMD12, 0);       /* STOP_TRANSMISSION */
        MOVS     R1,#+0
        MOVS     R0,#+12
        BL       send_cmd
//  489     }
//  490   }
//  491   deselect();
??disk_read_4:
        BL       deselect
//  492 
//  493   return count ? RES_ERROR : RES_OK;  /* Return result */
        MOVS     R0,R5
        IT       NE 
        MOVNE    R0,#+1
        POP      {R1,R4,R5,PC}    ;; return
//  494 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine5:
        MOV      R1,#+512
        MOV      R0,R4
        B.N      rcvr_datablock
//  495 
//  496 
//  497 
//  498 /*-----------------------------------------------------------------------*/
//  499 /* Write sector(s)                                                       */
//  500 /*-----------------------------------------------------------------------*/
//  501 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  502 DRESULT disk_write (
//  503   BYTE drv,     /* Physical drive number (0) */
//  504   const BYTE *buff, /* Ponter to the data to write */
//  505   DWORD sector,   /* Start sector number (LBA) */
//  506   BYTE count      /* Number of sectors to write (1..128) */
//  507 )
//  508 {
disk_write:
        PUSH     {R4-R6,LR}
        MOV      R4,R1
        MOV      R5,R2
        MOV      R6,R3
//  509   if (drv || !count) return RES_PARERR;   /* Check parameter */
        CBNZ.N   R0,??disk_write_0
        CBNZ.N   R6,??disk_write_1
??disk_write_0:
        MOVS     R0,#+4
        POP      {R4-R6,PC}
//  510   if (Stat & STA_NOINIT) return RES_NOTRDY; /* Check drive status */
??disk_write_1:
        LDR.N    R0,??DataTable11_1
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??disk_write_2
        MOVS     R0,#+3
        POP      {R4-R6,PC}
//  511   if (Stat & STA_PROTECT) return RES_WRPRT; /* Check write protect */
??disk_write_2:
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+29
        BPL.N    ??disk_write_3
        MOVS     R0,#+2
        POP      {R4-R6,PC}
//  512 
//  513   if (!(CardType & CT_BLOCK)) sector *= 512;  /* LBA ==> BA conversion (byte addressing cards) */
??disk_write_3:
        LDRB     R0,[R0, #+1]
        LSLS     R1,R0,#+28
        IT       PL 
        LSLPL    R5,R5,#+9
//  514 
//  515   if (count == 1) { /* Single sector write */
        CMP      R6,#+1
        BNE.N    ??disk_write_4
//  516     if ((send_cmd(CMD24, sector) == 0)  /* WRITE_BLOCK */
//  517       && xmit_datablock(buff, 0xFE))
        MOV      R1,R5
        MOVS     R0,#+24
        BL       send_cmd
        CBNZ.N   R0,??disk_write_5
        MOVS     R1,#+254
        MOV      R0,R4
        BL       xmit_datablock
        CBZ.N    R0,??disk_write_5
//  518       count = 0;
        MOVS     R6,#+0
        B.N      ??disk_write_5
//  519   }
//  520   else {        /* Multiple sector write */
//  521     if (CardType & CT_SDC) send_cmd(ACMD23, count); /* Predefine number of sectors */
??disk_write_4:
        MOVS     R1,#+6
        TST      R0,R1
        BEQ.N    ??disk_write_6
        MOV      R1,R6
        MOVS     R0,#+151
        BL       send_cmd
//  522     if (send_cmd(CMD25, sector) == 0) { /* WRITE_MULTIPLE_BLOCK */
??disk_write_6:
        MOV      R1,R5
        MOVS     R0,#+25
        BL       send_cmd
        CBNZ.N   R0,??disk_write_5
//  523       do {
//  524         if (!xmit_datablock(buff, 0xFC)) break;
??disk_write_7:
        MOVS     R1,#+252
        MOV      R0,R4
        BL       xmit_datablock
        CMP      R0,#+0
        ITTTT    NE 
        ADDNE    R4,R4,#+512
        SUBNE    R6,R6,#+1
        UXTBNE   R6,R6
        CMPNE    R6,#+0
//  525         buff += 512;
//  526       } while (--count);
        BNE.N    ??disk_write_7
//  527       if (!xmit_datablock(0, 0xFD)) /* STOP_TRAN token */
        MOVS     R1,#+253
        MOVS     R0,#+0
        BL       xmit_datablock
        CBNZ.N   R0,??disk_write_5
//  528         count = 1;
        MOVS     R6,#+1
//  529     }
//  530   }
//  531   deselect();
??disk_write_5:
        BL       deselect
//  532 
//  533   return count ? RES_ERROR : RES_OK;  /* Return result */
        MOVS     R0,R6
        IT       NE 
        MOVNE    R0,#+1
        POP      {R4-R6,PC}       ;; return
//  534 }
//  535 
//  536 
//  537 
//  538 /*-----------------------------------------------------------------------*/
//  539 /* Miscellaneous drive controls other than data read/write               */
//  540 /*-----------------------------------------------------------------------*/
//  541 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  542 DRESULT disk_ioctl (
//  543   BYTE drv,   /* Physical drive number (0) */
//  544   BYTE ctrl,    /* Control command code */
//  545   void *buff    /* Pointer to the conrtol data */
//  546 )
//  547 {
disk_ioctl:
        PUSH     {R0-R8,LR}
        MOV      R4,R2
//  548   DRESULT res;
//  549   BYTE n, csd[16], *ptr = buff;
        MOV      R8,R4
//  550   WORD csize;
//  551   DWORD *dp, st, ed;
//  552 
//  553 
//  554   if (drv) return RES_PARERR;         /* Check parameter */
        CBZ.N    R0,??disk_ioctl_1
        MOVS     R0,#+4
??disk_ioctl_2:
        B.N      ??disk_ioctl_3
//  555   if (Stat & STA_NOINIT) return RES_NOTRDY; /* Check if drive is ready */
??disk_ioctl_1:
        LDR.N    R6,??DataTable11_1
        LDRB     R0,[R6, #+0]
        LSLS     R0,R0,#+31
        IT       MI 
        MOVMI    R0,#+3
        BMI.N    ??disk_ioctl_2
//  556 
//  557   res = RES_ERROR;
        MOVS     R7,#+1
//  558 
//  559   switch (ctrl) {
        LDRB     R0,[R6, #+1]
        ADD      R5,SP,#+0
        CMP      R1,#+14
        BHI.W    ??disk_ioctl_4
        TBB      [PC, R1]
        DATA
??disk_ioctl_0:
        DC8      0x8,0xF,0x3F,0x43
        DC8      0x82,0xD7,0xD7,0xD7
        DC8      0xD7,0xD7,0xAF,0xB2
        DC8      0xB5,0xBC,0xC9,0x0
        THUMB
//  560   case CTRL_SYNC :    /* Wait for end of internal write process of the drive */
//  561     if (select()) {
??disk_ioctl_5:
        BL       select
        CMP      R0,#+0
        BEQ.N    ??disk_ioctl_6
//  562       deselect();
        BL       deselect
//  563       res = RES_OK;
        B.N      ??disk_ioctl_7
//  564     }
//  565     break;
//  566 
//  567   case GET_SECTOR_COUNT : /* Get drive capacity in unit of sector (DWORD) */
//  568     if ((send_cmd(CMD9, 0) == 0) && rcvr_datablock(csd, 16)) {
??disk_ioctl_8:
        MOVS     R1,#+0
        MOVS     R0,#+9
        BL       send_cmd
        CMP      R0,#+0
        BNE.N    ??disk_ioctl_9
        BL       ?Subroutine4
??CrossCallReturnLabel_24:
        CMP      R0,#+0
        BEQ.N    ??disk_ioctl_6
//  569       if ((csd[0] >> 6) == 1) { /* SDC ver 2.00 */
        LDRB     R1,[R5, #+8]
        LDRB     R0,[R5, #+9]
        LDRB     R2,[SP, #+0]
        LSRS     R2,R2,#+6
        CMP      R2,#+1
        BNE.N    ??disk_ioctl_10
//  570         csize = csd[9] + ((WORD)csd[8] << 8) + 1;
//  571         *(DWORD*)buff = (DWORD)csize << 10;
        ADD      R0,R0,R1, LSL #+8
        ADDS     R0,R0,#+1
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+6
        B.N      ??disk_ioctl_11
//  572       } else {          /* SDC ver 1.XX or MMC ver 3 */
//  573         n = (csd[5] & 15) + ((csd[10] & 128) >> 7) + ((csd[9] & 3) << 1) + 2;
//  574         csize = (csd[8] >> 6) + ((WORD)csd[7] << 2) + ((WORD)(csd[6] & 3) << 10) + 1;
//  575         *(DWORD*)buff = (DWORD)csize << (n - 9);
??disk_ioctl_10:
        LSRS     R1,R1,#+6
        LDRB     R2,[R5, #+7]
        ADD      R1,R1,R2, LSL #+2
        LDRB     R2,[R5, #+6]
        AND      R2,R2,#0x3
        ADD      R1,R1,R2, LSL #+10
        ADDS     R1,R1,#+1
        UXTH     R1,R1
        LDRB     R2,[R5, #+5]
        AND      R2,R2,#0xF
        LDRB     R3,[R5, #+10]
        ADD      R2,R2,R3, LSR #+7
        AND      R0,R0,#0x3
        ADD      R0,R2,R0, LSL #+1
        SUBS     R0,R0,#+7
        LSL      R0,R1,R0
        B.N      ??disk_ioctl_11
//  576       }
//  577       res = RES_OK;
//  578     }
//  579     break;
//  580 
//  581   case GET_SECTOR_SIZE :  /* Get sector size in unit of byte (WORD) */
//  582     *(WORD*)buff = 512;
??disk_ioctl_12:
        MOV      R0,#+512
        STRH     R0,[R4, #+0]
//  583     res = RES_OK;
        B.N      ??disk_ioctl_7
//  584     break;
//  585 
//  586   case GET_BLOCK_SIZE : /* Get erase block size in unit of sector (DWORD) */
//  587     if (CardType & CT_SD2) {  /* SDC ver 2.00 */
??disk_ioctl_13:
        LSLS     R0,R0,#+29
        BPL.N    ??disk_ioctl_14
//  588       if (send_cmd(ACMD13, 0) == 0) { /* Read SD status */
        MOVS     R1,#+0
        MOVS     R0,#+141
        BL       send_cmd
        CMP      R0,#+0
        BNE.N    ??disk_ioctl_9
//  589         xchg_spi(0xFF);
        BL       ??Subroutine0_1
//  590         if (rcvr_datablock(csd, 16)) {        /* Read partial block */
??CrossCallReturnLabel_3:
        BL       ?Subroutine4
??CrossCallReturnLabel_23:
        CMP      R0,#+0
        BEQ.N    ??disk_ioctl_6
//  591           for (n = 64 - 16; n; n--) xchg_spi(0xFF); /* Purge trailing data */
        MOVS     R6,#+48
??disk_ioctl_15:
        BL       ??Subroutine0_1
??CrossCallReturnLabel_2:
        SUBS     R6,R6,#+1
        BNE.N    ??disk_ioctl_15
//  592           *(DWORD*)buff = 16UL << (csd[10] >> 4);
        MOVS     R0,#+16
        LDRB     R1,[R5, #+10]
        LSRS     R1,R1,#+4
        LSLS     R0,R0,R1
        B.N      ??disk_ioctl_11
//  593           res = RES_OK;
//  594         }
//  595       }
//  596     } else {          /* SDC ver 1.XX or MMC */
//  597       if ((send_cmd(CMD9, 0) == 0) && rcvr_datablock(csd, 16)) {  /* Read CSD */
??disk_ioctl_14:
        MOVS     R1,#+0
        MOVS     R0,#+9
        BL       send_cmd
        CMP      R0,#+0
??disk_ioctl_9:
        BNE.N    ??disk_ioctl_16
        BL       ?Subroutine4
??CrossCallReturnLabel_22:
        CMP      R0,#+0
??disk_ioctl_6:
        BEQ.N    ??disk_ioctl_16
//  598         if (CardType & CT_SD1) {  /* SDC ver 1.XX */
        LDRB     R0,[R5, #+11]
        LDRB     R1,[R5, #+10]
        LDRB     R2,[R6, #+1]
        LSLS     R2,R2,#+30
        BPL.N    ??disk_ioctl_17
//  599           *(DWORD*)buff = (((csd[10] & 63) << 1) + ((WORD)(csd[11] & 128) >> 7) + 1) << ((csd[13] >> 6) - 1);
        AND      R1,R1,#0x3F
        LSRS     R0,R0,#+7
        ADD      R0,R0,R1, LSL #+1
        ADDS     R0,R0,#+1
        LDRB     R1,[SP, #+13]
        LSRS     R1,R1,#+6
        SUBS     R1,R1,#+1
        LSLS     R0,R0,R1
        B.N      ??disk_ioctl_11
//  600         } else {          /* MMC */
//  601           *(DWORD*)buff = ((WORD)((csd[10] & 124) >> 2) + 1) * (((csd[11] & 3) << 3) + ((csd[11] & 224) >> 5) + 1);
??disk_ioctl_17:
        UBFX     R1,R1,#+2,#+5
        ADDS     R1,R1,#+1
        AND      R2,R0,#0x3
        LSRS     R0,R0,#+5
        ADD      R0,R0,R2, LSL #+3
        ADDS     R0,R0,#+1
        MULS     R0,R0,R1
??disk_ioctl_11:
        STR      R0,[R4, #+0]
//  602         }
//  603         res = RES_OK;
        B.N      ??disk_ioctl_7
//  604       }
//  605     }
//  606     break;
//  607 
//  608   case CTRL_ERASE_SECTOR :  /* Erase a block of sectors (used when _USE_ERASE == 1) */
//  609     if (!(CardType & CT_SDC)) break;        /* Check if the card is SDC */
??disk_ioctl_18:
        MOVS     R1,#+6
        TST      R0,R1
        BEQ.N    ??disk_ioctl_16
//  610     if (disk_ioctl(drv, MMC_GET_CSD, csd)) break; /* Get CSD */
        ADD      R2,SP,#+0
        MOVS     R1,#+11
        MOVS     R0,#+0
        BL       disk_ioctl
        CMP      R0,#+0
        BNE.N    ??disk_ioctl_16
//  611     if (!(csd[0] >> 6) && !(csd[10] & 0x40)) break; /* Check if sector erase can be applied to the card */
        LDRB     R0,[SP, #+0]
        LSRS     R0,R0,#+6
        BNE.N    ??disk_ioctl_19
        LDRB     R0,[R5, #+10]
        LSLS     R0,R0,#+25
        BPL.N    ??disk_ioctl_16
//  612     dp = buff; st = dp[0]; ed = dp[1];        /* Load sector block */
??disk_ioctl_19:
        LDR      R1,[R4, #+0]
        LDR      R4,[R4, #+4]
//  613     if (!(CardType & CT_BLOCK)) {
        LDRB     R0,[R6, #+1]
        LSLS     R0,R0,#+28
        ITT      PL 
        LSLPL    R1,R1,#+9
        LSLPL    R4,R4,#+9
//  614       st *= 512; ed *= 512;
//  615     }
//  616     if (send_cmd(CMD32, st) == 0 && send_cmd(CMD33, ed) == 0 && send_cmd(CMD38, 0) == 0 && wait_ready(30000)) /* Erase sector block */
        MOVS     R0,#+32
        BL       send_cmd
        CMP      R0,#+0
        BNE.N    ??disk_ioctl_16
        MOV      R1,R4
        MOVS     R0,#+33
        BL       send_cmd
        CMP      R0,#+0
        BNE.N    ??disk_ioctl_16
        MOVS     R1,#+0
        MOVS     R0,#+38
        BL       send_cmd
        CBNZ.N   R0,??disk_ioctl_16
        MOVW     R0,#+30000
        BL       wait_ready
        B.N      ??disk_ioctl_20
//  617       res = RES_OK; /* FatFs does not check result of this command */
//  618     break;
//  619 
//  620   /* Following command are not used by FatFs module */
//  621 
//  622   case MMC_GET_TYPE :   /* Get MMC/SDC type (BYTE) */
//  623     *ptr = CardType;
??disk_ioctl_21:
        STRB     R0,[R8, #+0]
//  624     res = RES_OK;
        B.N      ??disk_ioctl_7
//  625     break;
//  626 
//  627   case MMC_GET_CSD :    /* Read CSD (16 bytes) */
//  628     if (send_cmd(CMD9, 0) == 0    /* READ_CSD */
//  629       && rcvr_datablock(ptr, 16))
??disk_ioctl_22:
        MOVS     R1,#+0
        MOVS     R0,#+9
        B.N      ??disk_ioctl_23
//  630       res = RES_OK;
//  631     break;
//  632 
//  633   case MMC_GET_CID :    /* Read CID (16 bytes) */
//  634     if (send_cmd(CMD10, 0) == 0   /* READ_CID */
//  635       && rcvr_datablock(ptr, 16))
??disk_ioctl_24:
        MOVS     R1,#+0
        MOVS     R0,#+10
??disk_ioctl_23:
        BL       send_cmd
        CBNZ.N   R0,??disk_ioctl_16
        MOVS     R1,#+16
        B.N      ??disk_ioctl_25
//  636       res = RES_OK;
//  637     break;
//  638 
//  639   case MMC_GET_OCR :    /* Read OCR (4 bytes) */
//  640     if (send_cmd(CMD58, 0) == 0) {  /* READ_OCR */
??disk_ioctl_26:
        MOVS     R1,#+0
        MOVS     R0,#+58
        BL       send_cmd
        CBNZ.N   R0,??disk_ioctl_16
//  641       for (n = 4; n; n--) *ptr++ = xchg_spi(0xFF);
        MOVS     R4,#+4
??disk_ioctl_27:
        BL       ??Subroutine0_1
??CrossCallReturnLabel_1:
        STRB     R0,[R8], #+1
        SUBS     R4,R4,#+1
        BNE.N    ??disk_ioctl_27
//  642       res = RES_OK;
        B.N      ??disk_ioctl_7
//  643     }
//  644     break;
//  645 
//  646   case MMC_GET_SDSTAT : /* Read SD status (64 bytes) */
//  647     if (send_cmd(ACMD13, 0) == 0) { /* SD_STATUS */
??disk_ioctl_28:
        MOVS     R1,#+0
        MOVS     R0,#+141
        BL       send_cmd
        CBNZ.N   R0,??disk_ioctl_16
//  648       xchg_spi(0xFF);
        BL       ??Subroutine0_1
//  649       if (rcvr_datablock(ptr, 64))
??CrossCallReturnLabel_0:
        MOVS     R1,#+64
??disk_ioctl_25:
        MOV      R0,R8
        BL       rcvr_datablock
??disk_ioctl_20:
        CBZ.N    R0,??disk_ioctl_16
//  650         res = RES_OK;
??disk_ioctl_7:
        MOVS     R7,#+0
        B.N      ??disk_ioctl_16
//  651     }
//  652     break;
//  653 
//  654   default:
//  655     res = RES_PARERR;
??disk_ioctl_4:
        MOVS     R7,#+4
//  656   }
//  657 
//  658   deselect();
??disk_ioctl_16:
        BL       deselect
//  659 
//  660   return res;
        MOV      R0,R7
??disk_ioctl_3:
        ADD      SP,SP,#+16
        POP      {R4-R8,PC}       ;; return
//  661 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine4:
        MOVS     R1,#+16
        ADD      R0,SP,#+0
        B.N      rcvr_datablock
//  662 
//  663 
//  664 /*-----------------------------------------------------------------------*/
//  665 /* Device timer function  (Platform dependent)                           */
//  666 /*-----------------------------------------------------------------------*/
//  667 /* This function must be called from timer interrupt routine in period
//  668 /  of 1 ms to generate card control timing.
//  669 */
//  670 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  671 void disk_timerproc (void)
//  672 {
//  673   WORD n;
//  674   BYTE s;
//  675 
//  676 
//  677   n = Timer1;           /* 1kHz decrement timer stopped at 0 */
disk_timerproc:
        LDR.N    R0,??DataTable11_1
        LDR      R1,[R0, #+4]
//  678   if (n) Timer1 = --n;
        UXTH     R1,R1
        CBZ.N    R1,??disk_timerproc_0
        SUBS     R1,R1,#+1
        UXTH     R1,R1
        STR      R1,[R0, #+4]
//  679   n = Timer2;
??disk_timerproc_0:
        LDR      R1,[R0, #+8]
//  680   if (n) Timer2 = --n;
        UXTH     R1,R1
        CBZ.N    R1,??disk_timerproc_1
        SUBS     R1,R1,#+1
        UXTH     R1,R1
        STR      R1,[R0, #+8]
//  681 
//  682   s = Stat;
//  683   if (WP)   /* Write protected */
//  684     s |= STA_PROTECT;
//  685   else    /* Write enabled */
//  686     s &= ~STA_PROTECT;
//  687   if (INS)  /* Card is in socket */
//  688     s &= ~STA_NODISK;
//  689   else    /* Socket empty */
//  690     s |= (STA_NODISK | STA_NOINIT);
//  691   Stat = s;
??disk_timerproc_1:
        LDRB     R1,[R0, #+0]
        AND      R1,R1,#0xF9
        STRB     R1,[R0, #+0]
//  692 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x400a0008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     Stat

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     0x400c0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x400a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     0x4002001c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     0xffffc30f

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  693 
// 
//    12 bytes in section .data
// 1 668 bytes in section .text
// 
// 1 668 bytes of CODE memory
//    12 bytes of DATA memory
//
//Errors: none
//Warnings: none
