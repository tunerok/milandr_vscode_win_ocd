///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:03 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\lcd_MDR32F9Qx.c                        /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\lcd_MDR32F9Qx.c --preprocess           /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\lcd_MDR32F9Qx. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME lcd_MDR32F9Qx

        #define SHT_PROGBITS 0x1



        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\lcd_MDR32F9Qx.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    lcd_MDR32F9Qx.c
//    4   * @author  Phyton Application Team
//    5   * @version V3.0.0
//    6   * @date    10.09.2011
//    7   * @brief   This file provides all the LCD driver functions for MDR32F9Q2_Rev0,
//    8   *          MDR32F9Q2_Rev1, MDR32F9Q3_Rev0 and MDR32F9Q3_Rev1 evaluation boards.
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
//   24 #if defined (USE_MDR32F9Q2_Rev0)  || defined (USE_MDR32F9Q2_Rev1) || \ 
//   25     defined (USE_MDR32F9Q3_Rev0) || defined (USE_MDR32F9Q3_Rev1)
//   26 
//   27 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   28   * @{
//   29   */
//   30 
//   31 /** @addtogroup LCD_Driver LCD Driver
//   32   * @{
//   33   */
//   34 
//   35 /** @defgroup __MDR32F9Qx_LCD MDR32F9Q2Y and MDR32F9Q3Y evaluation boards specific
//   36   * @{
//   37   */
//   38 
//   39 /** @defgroup __MDR32F9Qx_LCD_Private_Constants MDR32F9Qx LCD Private Constants
//   40   * @{
//   41   */
//   42 
//   43 #define LCD_DATA_BAS_8  (PORT_Pin_0 | PORT_Pin_1 | PORT_Pin_2 | PORT_Pin_3 | \ 
//   44                          PORT_Pin_4 | PORT_Pin_5 | PORT_Pin_6 | PORT_Pin_7)
//   45 
//   46 /** @} */ /* End of group __MDR32F9Qx_LCD_Private_Constants */
//   47 
//   48 /** @defgroup __MDR32F9Qx_LCD_Private_Macros MDR32F9Qx LCD Private Macros
//   49   * @{
//   50   */
//   51 
//   52 #define WAIT_BUSY           WhileStatus(LCD_BUSY_Msk)
//   53 #define WAIT_RESET          WhileStatus(LCD_RESET_Msk)
//   54 #define WAIT_ON             WhileStatus(LCD_ONOFF_Msk)
//   55 
//   56 /** @} */ /* End of group __MDR32F9Qx_LCD_Private_Macros */
//   57 
//   58 /** @defgroup __MDR32F9Qx_LCD_Variables MDR32F9Qx LCD Variables
//   59   * @{
//   60   */
//   61 
//   62 /* Display context */
//   63 LCD_Crystal CurrentCrystal = LCD_CRYSTAL1;  /*!< Currently selected crystal */
//   64 LCD_Method CurrentMethod;                   /*!< Current display method    */
//   65 
//   66 /** @} */ /* End of group __MDR32F9Qx_LCD_Variables */
//   67 
//   68 /** @defgroup __MDR32F9Qx_LCD_Private_Functions MDR32F9Qx LCD Private Functions
//   69   * @{
//   70   */
//   71 
//   72 /* Private function prototypes -----------------------------------------------*/
//   73 static uint32_t GetStatus(void);
//   74 static void WhileStatus(uint32_t status);
//   75 static void Pause(void);
//   76 
//   77 /* Private functions ---------------------------------------------------------*/
//   78 
//   79 /*******************************************************************************
//   80 * Function Name  : LCDClock
//   81 * Description    : Gating data.
//   82 * Input          : None
//   83 * Output         : None
//   84 * Return         : None
//   85 *******************************************************************************/
//   86 void LCDClock(void)
//   87 {
//   88   PORT_SetBits(LCD_CLOCK_PORT, LCD_CLOCK_PIN);
//   89   PORT_ResetBits(LCD_CLOCK_PORT, LCD_CLOCK_PIN);
//   90 }
//   91 
//   92 /*******************************************************************************
//   93 * Function Name  : ResetLCD
//   94 * Description    : Resets the LCD.
//   95 * Input          : None
//   96 * Output         : None
//   97 * Return         : None
//   98 *******************************************************************************/
//   99 void ResetLCD(void)
//  100 {
//  101   PORT_SetBits(LCD_RESET_PORT, LCD_RESET_PIN);
//  102   PORT_ResetBits(LCD_RESET_PORT, LCD_RESET_PIN);
//  103   Pause();
//  104   PORT_SetBits(LCD_RESET_PORT, LCD_RESET_PIN);
//  105 }
//  106 
//  107 /*******************************************************************************
//  108 * Function Name  : SetCrystal
//  109 * Description    : Sets the current LCD crystal.
//  110 * Input          : None
//  111 * Output         : None
//  112 * Return         : None
//  113 *******************************************************************************/
//  114 void SetCrystal(LCD_Crystal num)
//  115 {
//  116   PORT_ResetBits(LCD_CRYSTAL_PORT, LCD_CRYSTAL_PINs);
//  117   PORT_SetBits(LCD_CRYSTAL_PORT, ((num + 1) << LCD_CRYSTAL_POS));
//  118   LCDClock();
//  119   CurrentCrystal = num;
//  120 }
//  121 
//  122 /*******************************************************************************
//  123 * Function Name  : WriteLCD_Cmd
//  124 * Description    : Writes command to the current LCD crystal.
//  125 * Input          : LCD command
//  126 * Output         : None
//  127 * Return         : None
//  128 *******************************************************************************/
//  129 void WriteLCD_Cmd(uint32_t val)
//  130 {
//  131   uint32_t portdata;
//  132 
//  133   portdata = PORT_ReadInputData(LCD_DATA_PORT) & (~LCD_DATA_BAS_8);
//  134   portdata |= val;
//  135   /* Switch LCD to the command mode */
//  136   PORT_ResetBits(LCD_CMD_DATA_PORT, LCD_CMD_DATA_PIN);
//  137   /* Switch LCD to the data input mode */
//  138   PORT_ResetBits(LCD_RD_WR_PORT, LCD_RD_WR_PIN);
//  139 
//  140   PORT_Write(LCD_DATA_PORT, portdata);
//  141   /* Switch LCD_DATA_PORT to the data output mode */
//  142   LCD_DATA_PORT->OE |= LCD_DATA_BAS_8;
//  143 
//  144   LCDClock();
//  145 
//  146   /* Switch LCD_DATA_PORT to the data input mode */
//  147   LCD_DATA_PORT->OE &= ~LCD_DATA_BAS_8;
//  148 
//  149   /* Switch LCD to the data output mode */
//  150   PORT_SetBits(LCD_RD_WR_PORT, LCD_RD_WR_PIN);
//  151 }
//  152 
//  153 /*******************************************************************************
//  154 * Function Name  : WriteLCD_Data
//  155 * Description    : Writes data to the current LCD crystal.
//  156 * Input          : Data
//  157 * Output         : None
//  158 * Return         : None
//  159 *******************************************************************************/
//  160 void WriteLCD_Data(uint32_t val)
//  161 {
//  162   uint32_t portdata;
//  163 
//  164   portdata = PORT_ReadInputData(LCD_DATA_PORT) & (~LCD_DATA_BAS_8);
//  165   portdata |= val;
//  166   /* Switch LCD to the data mode */
//  167   PORT_SetBits(LCD_CMD_DATA_PORT, LCD_CMD_DATA_PIN);
//  168   /* Switch LCD to the data input mode */
//  169   PORT_ResetBits(LCD_RD_WR_PORT, LCD_RD_WR_PIN);
//  170 
//  171   PORT_Write(LCD_DATA_PORT, portdata);
//  172   /* Switch LCD_DATA_PORT to the data output mode */
//  173   LCD_DATA_PORT->OE |= LCD_DATA_BAS_8;
//  174 
//  175   LCDClock();
//  176 
//  177   /* Switch LCD_DATA_PORT to the data input mode */
//  178   LCD_DATA_PORT->OE &= ~LCD_DATA_BAS_8;
//  179 
//  180   /* Switch LCD to the data output mode */
//  181   PORT_SetBits(LCD_RD_WR_PORT, LCD_RD_WR_PIN);
//  182 }
//  183 
//  184 /*******************************************************************************
//  185 * Function Name  : ReadLCD_Cmd
//  186 * Description    : Reads command from the current LCD crystal.
//  187 * Input          : None
//  188 * Output         : None
//  189 * Return         : LCD command
//  190 *******************************************************************************/
//  191 uint32_t ReadLCD_Cmd(void)
//  192 {
//  193   uint32_t ret;
//  194 
//  195   /* Switch LCD to the command mode */
//  196   PORT_ResetBits(LCD_CMD_DATA_PORT, LCD_CMD_DATA_PIN);
//  197 
//  198   PORT_SetBits(LCD_CLOCK_PORT, LCD_CLOCK_PIN);
//  199   ret = PORT_ReadInputData(LCD_DATA_PORT) & LCD_DATA_BAS_8;
//  200   PORT_ResetBits(LCD_CLOCK_PORT, LCD_CLOCK_PIN);
//  201 
//  202   return ret;
//  203 }
//  204 
//  205 /*******************************************************************************
//  206 * Function Name  : ReadLCD_Data
//  207 * Description    : Reads data from the current LCD crystal.
//  208 * Input          : None
//  209 * Output         : None
//  210 * Return         : LCD data
//  211 *******************************************************************************/
//  212 uint32_t ReadLCD_Data()
//  213 {
//  214   uint32_t ret;
//  215 
//  216   /* Switch LCD to the data mode */
//  217   PORT_SetBits(LCD_CMD_DATA_PORT, LCD_CMD_DATA_PIN);
//  218   LCDClock();              /* Dummy reading is necessary to get correct data */
//  219   PORT_SetBits(LCD_CLOCK_PORT, LCD_CLOCK_PIN);
//  220   ret = PORT_ReadInputData(LCD_DATA_PORT) & LCD_DATA_BAS_8;
//  221   PORT_ResetBits(LCD_CLOCK_PORT, LCD_CLOCK_PIN);
//  222 
//  223   return ret;
//  224 }
//  225 
//  226 /*******************************************************************************
//  227 * Function Name  : LCD_INIT
//  228 * Description    : Initializes all LCD crystals.
//  229 * Input          : None
//  230 * Output         : None
//  231 * Return         : None
//  232 *******************************************************************************/
//  233 void LCD_INIT(void)
//  234 {
//  235   uint32_t crystal;
//  236 
//  237   ResetLCD();
//  238 
//  239   for (crystal = LCD_CRYSTAL1; crystal < NUM_LCD_CRYSTALS; crystal++)
//  240   {
//  241     SetCrystal((LCD_Crystal)crystal);
//  242     WAIT_BUSY;
//  243     LCD_ON;
//  244     WAIT_ON;
//  245     LCD_START_LINE(0);
//  246   }
//  247 }
//  248 
//  249 /*******************************************************************************
//  250 * Function Name  : LCD_CLS
//  251 * Description    : Clears LCD screen.
//  252 * Input          : None
//  253 * Output         : None
//  254 * Return         : None
//  255 *******************************************************************************/
//  256 void LCD_CLS(void)
//  257 {
//  258   uint32_t i, j, crystal;
//  259 
//  260   for (crystal = LCD_CRYSTAL1; crystal < NUM_LCD_CRYSTALS; crystal++)
//  261   {
//  262     SetCrystal((LCD_Crystal)crystal);
//  263     WAIT_BUSY;
//  264     LCD_OFF;
//  265     LCD_SET_ADDRESS(0);
//  266     for (i = 0; i < 8; i++)
//  267     {
//  268       LCD_SET_PAGE(i);
//  269       for (j = 0; j < 64; j++)
//  270       {
//  271         WriteLCD_Data(0x00);
//  272       }
//  273     }
//  274     LCD_ON;
//  275   }
//  276 }
//  277 
//  278 /*******************************************************************************
//  279 * Function Name  : GetStatus
//  280 * Description    : Returns the current LCD status.
//  281 * Input          : None
//  282 * Output         : None
//  283 * Return         : LCD status
//  284 *******************************************************************************/
//  285 static uint32_t GetStatus(void)
//  286 {
//  287   uint32_t ret;
//  288 
//  289   ret = ReadLCD_Cmd();
//  290   return ret;
//  291 }
//  292 
//  293 /*******************************************************************************
//  294 * Function Name  : WhileStatus
//  295 * Description    : Wait until the specific LCD status changes.
//  296 * Input          : LCD status. This parameter can be one of the following
//  297 *                : values: LCD_BUSY, LCD_ONOFF, LCD_RESET.
//  298 * Output         : None
//  299 * Return         : None
//  300 *******************************************************************************/
//  301 static void WhileStatus(uint32_t status)
//  302 {
//  303 
//  304   uint32_t stat;
//  305   for (stat = GetStatus(); (stat & status) != 0; stat = GetStatus())
//  306   {
//  307   }
//  308 }
//  309 
//  310 /*******************************************************************************
//  311 * Function Name  : Pause
//  312 * Description    : Delay for approx. 15*3 CPU clocks.
//  313 * Input          : None
//  314 * Output         : None
//  315 * Return         : None
//  316 *******************************************************************************/
//  317 static void Pause(void)
//  318 {
//  319   vuint32_t i;
//  320 
//  321   for (i = 15; i > 0; i--);
//  322 }
//  323 
//  324 /** @} */ /* End of group __MDR32F9Qx_LCD_Private_Functions */
//  325 
//  326 /** @} */ /* End of group __MDR32F9Qx_LCD */
//  327 
//  328 /** @} */ /* End of group LCD_Driver */
//  329 
//  330 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  331 
//  332 #endif /* USE_MDR32F9Q2_Rev0  || USE_MDR32F9Q2_Rev1 ||
//  333         * USE_MDR32F9Q3_Rev0 || USE_MDR32F9Q3_Rev1 */
//  334 
//  335 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  336 *
//  337 * END OF FILE lcd_MDR32F9Qx.c */
//  338 
// 
//
// 
//
//
//Errors: none
//Warnings: none
