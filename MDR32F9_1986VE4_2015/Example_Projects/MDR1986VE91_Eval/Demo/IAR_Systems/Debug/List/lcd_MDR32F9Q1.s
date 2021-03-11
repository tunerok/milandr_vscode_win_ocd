///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:03 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\lcd_MDR32F9Q1.c                        /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\lcd_MDR32F9Q1.c --preprocess           /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\lcd_MDR32F9Q1. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME lcd_MDR32F9Q1

        #define SHT_PROGBITS 0x1

        EXTERN PORT_ResetBits
        EXTERN PORT_SetBits
        EXTERN PORT_Write

        PUBLIC CrystalPorts
        PUBLIC CurrentCrystal
        PUBLIC CurrentMethod
        PUBLIC LCD_CLS
        PUBLIC LCD_INIT
        PUBLIC ReadLCD_Cmd
        PUBLIC ReadLCD_Data
        PUBLIC ResetLCD
        PUBLIC SetCrystal
        PUBLIC WriteLCD_Cmd
        PUBLIC WriteLCD_Data

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\lcd_MDR32F9Q1.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    lcd_MDR32F9Q1.c
//    4   * @author  Phyton Application Team
//    5   * @version V3.0.0
//    6   * @date    10.09.2011
//    7   * @brief   This file provides all the LCD driver functions for MDR32F9Q1_Rev0
//    8   *          and MDR32F9Q1_Rev1 evaluation boards (LCD is connected to EBC).
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
//   22 #include "lcd.h"
//   23 
//   24 #if defined (USE_MDR32F9Q1_Rev0) || defined (USE_MDR32F9Q1_Rev1)
//   25 
//   26 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   27   * @{
//   28   */
//   29 
//   30 /** @addtogroup LCD_Driver LCD Driver
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup __MDR32F9Q1_LCD MDR32F9Q1 evaluation boards specific
//   35   * @{
//   36   */
//   37 
//   38 /** @defgroup __MDR32F9Q1_LCD_Private_Constants MDR32F9Q1 LCD Private Constants
//   39   * @{
//   40   */
//   41 
//   42 #define EXTBUS_BASE         0x10000000
//   43 #define LCD_CRYSTAL1_OFFS   0x100000
//   44 #define LCD_CRYSTAL2_OFFS   0x200000
//   45 #define LCD_DATA_OFFS       0x8000000
//   46 #define LCD_CRYSTAL1_CMD    EXTBUS_BASE + LCD_CRYSTAL1_OFFS
//   47 #define LCD_CRYSTAL2_CMD    EXTBUS_BASE + LCD_CRYSTAL2_OFFS
//   48 #define LCD_CRYSTAL1_DATA   EXTBUS_BASE + LCD_CRYSTAL1_OFFS + LCD_DATA_OFFS
//   49 #define LCD_CRYSTAL2_DATA   EXTBUS_BASE + LCD_CRYSTAL2_OFFS + LCD_DATA_OFFS
//   50 
//   51 /** @} */ /* End of group __MDR32F9Q1_LCD_Private_Constants */
//   52 
//   53 /** @defgroup __MDR32F9Q1_LCD_Private_Macros MDR32F9Q1 LCD Private Macros
//   54   * @{
//   55   */
//   56 
//   57 #define WAIT_BUSY           WhileStatus(LCD_BUSY_Msk)
//   58 #define WAIT_RESET          WhileStatus(LCD_RESET_Msk)
//   59 #define WAIT_ON             WhileStatus(LCD_ONOFF_Msk)
//   60 
//   61 /** @} */ /* End of group __MDR32F9Q1_LCD_Private_Macros */
//   62 
//   63 /** @defgroup __MDR32F9Q1_LCD_Variables MDR32F9Q1 LCD Variables
//   64   * @{
//   65   */
//   66 
//   67 /* LCD ports */
//   68 const LCD_Ports CrystalPorts[NUM_LCD_CRYSTALS] = {
//   69   /* Crystal #1 */
//   70   { LCD_CRYSTAL1_DATA,
//   71     LCD_CRYSTAL1_CMD },
//   72   /* Crystal #2 */
//   73   { LCD_CRYSTAL2_DATA,
//   74     LCD_CRYSTAL2_CMD }
//   75 };
//   76 
//   77 /* Display context */

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   78 LCD_Crystal CurrentCrystal = LCD_CRYSTAL1;  /*!< Currently selected crystal */
CurrentCrystal:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   79 LCD_Method CurrentMethod = MET_AND;         /*!< Current display method    */
CurrentMethod:
        DATA
        DC8 4
//   80 
//   81 /** @} */ /* End of group __MDR32F9Q1_LCD_Variables */
//   82 
//   83 /** @defgroup __MDR32F9Q1_LCD_Private_Functions MDR32F9Q1 LCD Private Functions
//   84   * @{
//   85   */
//   86 
//   87 /* Private function prototypes -----------------------------------------------*/
//   88 static uint32_t GetStatus(void);
//   89 static void WhileStatus(uint32_t status);
//   90 static void Pause(void);
//   91 
//   92 /* Private functions ---------------------------------------------------------*/
//   93 
//   94 /*******************************************************************************
//   95 * Function Name  : ResetLCD
//   96 * Description    : Resets the LCD.
//   97 * Input          : None
//   98 * Output         : None
//   99 * Return         : None
//  100 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  101 void ResetLCD(void)
//  102 {
ResetLCD:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
//  103   PORT_SetBits(MDR_PORTC, PORT_Pin_9);
        LDR.N    R4,??DataTable5  ;; 0x400b8000
        BL       ?Subroutine2
//  104   PORT_ResetBits(MDR_PORTC, PORT_Pin_9);
??CrossCallReturnLabel_6:
        MOV      R1,#+512
        MOV      R0,R4
        BL       PORT_ResetBits
//  105   Pause();
        MOVS     R0,#+15
        B.N      ??ResetLCD_0
??ResetLCD_1:
        LDR      R0,[SP, #+0]
        SUBS     R0,R0,#+1
??ResetLCD_0:
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??ResetLCD_1
//  106   PORT_SetBits(MDR_PORTC, PORT_Pin_9);
        BL       ?Subroutine2
//  107   WhileStatus(LCD_BUSY_Msk | LCD_RESET_Msk);
??CrossCallReturnLabel_5:
        MOVS     R0,#+144
        POP      {R1,R2,R4,LR}
        B.N      WhileStatus
//  108 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        MOV      R1,#+512
        MOV      R0,R4
        B.W      PORT_SetBits
//  109 
//  110 /*******************************************************************************
//  111 * Function Name  : SetCrystal
//  112 * Description    : Sets the current LCD crystal.
//  113 * Input          : None
//  114 * Output         : None
//  115 * Return         : None
//  116 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  117 void SetCrystal(LCD_Crystal num)
//  118 {
SetCrystal:
        PUSH     {R4,LR}
        MOV      R4,R0
//  119   PORT_Write(MDR_PORTE, ((num + 1) << 4));
        ADDS     R0,R4,#+1
        LSLS     R1,R0,#+4
        LDR.N    R0,??DataTable5_1  ;; 0x400c8000
        BL       PORT_Write
//  120   WAIT_BUSY;
        BL       ?Subroutine1
//  121   CurrentCrystal = num;
??CrossCallReturnLabel_4:
        LDR.N    R0,??DataTable5_2
        STRB     R4,[R0, #+0]
//  122 }
        POP      {R4,PC}          ;; return
//  123 
//  124 /*******************************************************************************
//  125 * Function Name  : WriteLCD_Cmd
//  126 * Description    : Writes command to the current LCD crystal.
//  127 * Input          : LCD command
//  128 * Output         : None
//  129 * Return         : None
//  130 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  131 void WriteLCD_Cmd(uint32_t val)
//  132 {
//  133   LCD_CMD(CurrentCrystal) = val;
WriteLCD_Cmd:
        LDR.N    R1,??DataTable5_2
        LDRB     R1,[R1, #+0]
        ADR.W    R2,CrystalPorts
        ADD      R1,R2,R1, LSL #+3
        LDR      R1,[R1, #+4]
        B.N      ?Subroutine0
//  134   WAIT_BUSY;
//  135 }
//  136 
//  137 /*******************************************************************************
//  138 * Function Name  : WriteLCD_Data
//  139 * Description    : Writes data to the current LCD crystal.
//  140 * Input          : Data
//  141 * Output         : None
//  142 * Return         : None
//  143 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  144 void WriteLCD_Data(uint32_t val)
//  145 {
//  146   LCD_DATA(CurrentCrystal) = val;
WriteLCD_Data:
        LDR.N    R1,??DataTable5_2
        LDRB     R1,[R1, #+0]
        ADR.W    R2,CrystalPorts
        LDR      R1,[R2, R1, LSL #+3]
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  147   WAIT_BUSY;
//  148 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        STR      R0,[R1, #+0]
        MOVS     R0,#+128
        B.N      WhileStatus
//  149 
//  150 /*******************************************************************************
//  151 * Function Name  : ReadLCD_Cmd
//  152 * Description    : Reads command from the current LCD crystal.
//  153 * Input          : None
//  154 * Output         : None
//  155 * Return         : LCD command
//  156 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  157 uint32_t ReadLCD_Cmd(void)
//  158 {
//  159   uint32_t ret = LCD_CMD(CurrentCrystal);
ReadLCD_Cmd:
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        ADR.W    R1,CrystalPorts
        ADD      R0,R1,R0, LSL #+3
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+0]
//  160 
//  161   return ret;
        BX       LR               ;; return
//  162 }
//  163 
//  164 /*******************************************************************************
//  165 * Function Name  : ReadLCD_Data
//  166 * Description    : Reads data from the current LCD crystal.
//  167 * Input          : None
//  168 * Output         : None
//  169 * Return         : LCD data
//  170 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  171 uint32_t ReadLCD_Data()
//  172 {
ReadLCD_Data:
        PUSH     {R4,LR}
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        ADR.W    R1,CrystalPorts
        LDR      R4,[R1, R0, LSL #+3]
        LDR      R0,[R4, #+0]
//  173   uint32_t ret;
//  174   LCD_DATA(CurrentCrystal);     /* First reading is necessary to get correct data */
//  175   WAIT_BUSY;
        BL       ?Subroutine1
//  176   ret = LCD_DATA(CurrentCrystal);
??CrossCallReturnLabel_3:
        LDR      R4,[R4, #+0]
//  177   WAIT_BUSY;
        BL       ?Subroutine1
//  178   return ret;
??CrossCallReturnLabel_2:
        MOV      R0,R4
        POP      {R4,PC}          ;; return
//  179 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x400c8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     CurrentCrystal
//  180 
//  181 /*******************************************************************************
//  182 * Function Name  : LCD_INIT
//  183 * Description    : Initializes all LCD crystals.
//  184 * Input          : None
//  185 * Output         : None
//  186 * Return         : None
//  187 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  188 void LCD_INIT(void)
//  189 {
LCD_INIT:
        PUSH     {R4,LR}
//  190   uint32_t crystal;
//  191 
//  192   ResetLCD();
        BL       ResetLCD
//  193 
//  194   for (crystal = LCD_CRYSTAL1; crystal < NUM_LCD_CRYSTALS; crystal++)
        MOVS     R4,#+0
//  195   {
//  196     SetCrystal((LCD_Crystal)crystal);
??LCD_INIT_0:
        UXTB     R0,R4
        BL       SetCrystal
//  197     WAIT_BUSY;
        BL       ?Subroutine1
//  198     LCD_ON;
??CrossCallReturnLabel_1:
        MOVS     R0,#+63
        BL       WriteLCD_Cmd
//  199     WAIT_ON;
        MOVS     R0,#+32
        BL       WhileStatus
//  200     LCD_START_LINE(0);
        MOVS     R0,#+192
        BL       WriteLCD_Cmd
//  201   }
        ADDS     R4,R4,#+1
        CMP      R4,#+2
        BCC.N    ??LCD_INIT_0
//  202 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        MOVS     R0,#+128
        B.N      WhileStatus
//  203 
//  204 /*******************************************************************************
//  205 * Function Name  : LCD_CLS
//  206 * Description    : Clears the LCD screen.
//  207 * Input          : None
//  208 * Output         : None
//  209 * Return         : None
//  210 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  211 void LCD_CLS(void)
//  212 {
LCD_CLS:
        PUSH     {R4-R6,LR}
//  213   uint32_t i, j, crystal;
//  214 
//  215   for (crystal = LCD_CRYSTAL1; crystal < NUM_LCD_CRYSTALS; crystal++)
        MOVS     R4,#+0
//  216   {
//  217     SetCrystal((LCD_Crystal)crystal);
??LCD_CLS_0:
        UXTB     R0,R4
        BL       SetCrystal
//  218     WAIT_BUSY;
        BL       ?Subroutine1
//  219     LCD_OFF;
??CrossCallReturnLabel_0:
        MOVS     R0,#+62
        BL       WriteLCD_Cmd
//  220     LCD_SET_ADDRESS(0);
        MOVS     R0,#+64
        BL       WriteLCD_Cmd
//  221     for (i = 0; i < 8; i++)
        MOVS     R5,#+0
//  222     {
//  223       LCD_SET_PAGE(i);
??LCD_CLS_1:
        ORR      R0,R5,#0xB8
        BL       WriteLCD_Cmd
//  224       for (j = 0; j < 64; j++)
        MOVS     R6,#+64
//  225       {
//  226         WriteLCD_Data(0x00);
??LCD_CLS_2:
        MOVS     R0,#+0
        BL       WriteLCD_Data
//  227       }
        SUBS     R6,R6,#+1
        BNE.N    ??LCD_CLS_2
//  228     }
        ADDS     R5,R5,#+1
        CMP      R5,#+8
        BCC.N    ??LCD_CLS_1
//  229     LCD_ON;
        MOVS     R0,#+63
        BL       WriteLCD_Cmd
//  230   }
        ADDS     R4,R4,#+1
        CMP      R4,#+2
        BCC.N    ??LCD_CLS_0
//  231 }
        POP      {R4-R6,PC}       ;; return
//  232 
//  233 /*******************************************************************************
//  234 * Function Name  : GetStatus
//  235 * Description    : Returns the current LCD status.
//  236 * Input          : None
//  237 * Output         : None
//  238 * Return         : LCD status
//  239 *******************************************************************************/
//  240 static uint32_t GetStatus(void)
//  241 {
//  242   uint32_t ret;
//  243 
//  244   ret = ReadLCD_Cmd();
//  245   return ret;
//  246 }
//  247 
//  248 /*******************************************************************************
//  249 * Function Name  : WhileStatus
//  250 * Description    : Wait until the specific LCD status changes.
//  251 * Input          : LCD status. This parameter can be one of the following
//  252 *                : values: LCD_BUSY, LCD_ONOFF, LCD_RESET.
//  253 * Output         : None
//  254 * Return         : None
//  255 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  256 static void WhileStatus(uint32_t status)
//  257 {
WhileStatus:
        PUSH     {R4,LR}
        MOV      R4,R0
//  258 
//  259   uint32_t stat;
//  260   for (stat = GetStatus(); (stat & status) != 0; stat = GetStatus())
??WhileStatus_0:
        BL       ReadLCD_Cmd
        TST      R0,R4
        BNE.N    ??WhileStatus_0
//  261   {
//  262   }
//  263 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
CrystalPorts:
        DC32 403701760, 269484032, 404750336, 270532608

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  264 
//  265 /*******************************************************************************
//  266 * Function Name  : Pause
//  267 * Description    : Delay for approx. 15*3 CPU clocks.
//  268 * Input          : None
//  269 * Output         : None
//  270 * Return         : None
//  271 *******************************************************************************/
//  272 static void Pause(void)
//  273 {
//  274   vuint32_t i;
//  275 
//  276   for (i = 15; i > 0; i--);
//  277 }
//  278 
//  279 /** @} */ /* End of group __MDR32F9Q1_LCD_Private_Functions */
//  280 
//  281 /** @} */ /* End of group __MDR32F9Q1_LCD */
//  282 
//  283 /** @} */ /* End of group __MDR32F9Q1_LCD_Driver */
//  284 
//  285 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  286 
//  287 #endif /* USE_MDR32F9Q1_Rev0 || USE_MDR32F9Q1_Rev1 */
//  288 
//  289 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  290 *
//  291 * END OF FILE lcd_MDR32F9Q1.c */
//  292 
// 
//   1 byte  in section .bss
//   1 byte  in section .data
// 322 bytes in section .text
// 
// 322 bytes of CODE memory
//   2 bytes of DATA memory
//
//Errors: none
//Warnings: none
