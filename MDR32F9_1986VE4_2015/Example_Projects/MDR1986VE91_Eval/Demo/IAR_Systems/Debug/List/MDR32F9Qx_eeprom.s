///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:56 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_eeprom.c                  /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_eeprom.c --preprocess     /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_eepr /
//                    om.s                                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_eeprom

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        PUBLIC EEPROM_EraseAllPages
        PUBLIC EEPROM_ErasePage
        PUBLIC EEPROM_ProgramByte
        PUBLIC EEPROM_ProgramHalfWord
        PUBLIC EEPROM_ProgramWord
        PUBLIC EEPROM_ReadByte
        PUBLIC EEPROM_ReadHalfWord
        PUBLIC EEPROM_ReadWord
        PUBLIC EEPROM_SetLatency

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_eeprom.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_eeprom.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    11/06/2010
//    7   * @brief   This file contains all the EEPROM firmware functions.
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
//   20   * FILE MDR32F9Qx_eeprom.c
//   21   */
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "MDR32F9Qx_config.h"
//   25 #include "MDR32F9Qx_eeprom.h"
//   26 
//   27 
//   28 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_EEPROM_C
//   29 
//   30 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup EEPROM EEPROM
//   35   * @{
//   36   */
//   37 
//   38 /** @defgroup EEPROM_Private_Defines EEPROM Private Defines
//   39   * @{
//   40   */
//   41 
//   42 #define EEPROM_REG_ACCESS_KEY           ((uint32_t)0x8AAA5551)
//   43 
//   44 /** @} */ /* End of group EEPROM_Private_Defines */
//   45 
//   46 /** @defgroup EEPROM_Private_Macros EEPROM Private Macros
//   47   * @{
//   48   */
//   49 
//   50 #define IS_TWO_BYTE_ALLIGNED(ADDR)      ((ADDR & 1) == 0)
//   51 #define IS_FOUR_BYTE_ALLIGNED(ADDR)     ((ADDR & 3) == 0)
//   52 
//   53 #define DELAY_LOOP_CYCLES               (8UL)
//   54 #define GET_US_LOOPS(N)                 ((uint32_t)((float)(N) * FLASH_PROG_FREQ_MHZ / DELAY_LOOP_CYCLES))
//   55 
//   56 /** @} */ /* End of group EEPROM_Private_Macros */
//   57 
//   58 /** @defgroup EEPROM_Private_Functions EEPROM Private Functions
//   59   * @{
//   60   */
//   61 
//   62 __RAMFUNC static void ProgramDelay(uint32_t Loops) __attribute__((section("EXECUTABLE_MEMORY_SECTION")));
//   63 
//   64 /**
//   65   * @brief  Program delay.
//   66   * @param  Loops: Number of the loops.
//   67   * @retval None.
//   68   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//   69 __RAMFUNC static void ProgramDelay(uint32_t Loops)
//   70 {
ProgramDelay:
        SUB      SP,SP,#+4
//   71   volatile uint32_t i = Loops;
        B.N      ??ProgramDelay_0
//   72   for (; i > 0; i--)
??ProgramDelay_1:
        LDR      R0,[SP, #+0]
        SUBS     R0,R0,#+1
??ProgramDelay_0:
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??ProgramDelay_1
//   73   {
//   74   }
//   75 }
        ADD      SP,SP,#+4
        BX       LR               ;; return
//   76 
//   77 
//   78 /**
//   79   * @brief  Sets the code latency value.
//   80   * @param  FLASH_Latency: specifies the FLASH Latency value.
//   81   *          This parameter can be one of the following values:
//   82   *            @arg EEPROM_Latency_0: EEPROM Zero Latency cycle
//   83   *            @arg EEPROM_Latency_1: EEPROM One Latency cycle
//   84   *            @arg EEPROM_Latency_2: EEPROM Two Latency cycles
//   85   *            @arg EEPROM_Latency_3: EEPROM Three Latency cycles
//   86   *            @arg EEPROM_Latency_4: EEPROM Four Latency cycles
//   87   *            @arg EEPROM_Latency_5: EEPROM Five Latency cycles
//   88   *            @arg EEPROM_Latency_6: EEPROM Six Latency cycles
//   89   *            @arg EEPROM_Latency_7: EEPROM Seven Latency cycles
//   90   * @retval None
//   91   */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   92 void EEPROM_SetLatency ( uint32_t EEPROM_Latency )
//   93 {
//   94   /* Check the parameters */
//   95   assert_param(IS_EEPROM_LATENCY(EEPROM_Latency));
//   96 
//   97   /* Set the new latency value */
//   98   MDR_EEPROM->CMD = EEPROM_Latency;
EEPROM_SetLatency:
        LDR.N    R1,??EEPROM_SetLatency_0  ;; 0x40018000
        STR      R0,[R1, #+0]
//   99 }
        BX       LR               ;; return
        Nop      
        DATA
??EEPROM_SetLatency_0:
        DC32     0x40018000
//  100 
//  101 /**
//  102   * @brief  Reads the 8-bit EEPROM memory value.
//  103   * @param  Address: The EEPROM memory byte address.
//  104   * @param  BankSelector: Selects EEPROM Bank (Main Bank or Information Bank).
//  105   *         This parameter can be one of the following values:
//  106   *           @arg EEPROM_Main_Bank_Select:      The EEPROM Main Bank selector.
//  107   *           @arg EEPROM_Info_Bank_Select:      The EEPROM Information Bank selector.
//  108   * @retval The selected EEPROM memory value.
//  109   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  110 __RAMFUNC  uint8_t EEPROM_ReadByte(uint32_t Address, uint32_t BankSelector)
//  111 {
//  112   uint32_t Data;
//  113   uint32_t Command;
//  114   uint32_t Shift;
//  115 
//  116   assert_param(IS_EEPROM_BANK_SELECTOR(BankSelector));
//  117 
//  118   MDR_EEPROM->KEY = EEPROM_REG_ACCESS_KEY;
EEPROM_ReadByte:
        LDR.N    R2,??DataTable5  ;; 0x40018000
        LDR.N    R3,??DataTable5_1  ;; 0x8aaa5551
        STR      R3,[R2, #+16]
//  119   Command = (MDR_EEPROM->CMD & EEPROM_CMD_DELAY_Msk) | EEPROM_CMD_CON;
        LDR      R3,[R2, #+0]
        AND      R3,R3,#0x38
        ORR      R3,R3,#0x1
//  120   Command |= (BankSelector == EEPROM_Info_Bank_Select) ? EEPROM_CMD_IFREN : 0;
        CMP      R1,#+1
        ITE      EQ 
        MOVEQ    R1,#+512
        MOVNE    R1,#+0
        ORRS     R1,R1,R3
//  121   MDR_EEPROM->CMD = Command;
        STR      R1,[R2, #+0]
//  122   MDR_EEPROM->ADR = Address;
        STR      R0,[R2, #+4]
//  123   MDR_EEPROM->CMD = Command | EEPROM_CMD_XE | EEPROM_CMD_YE | EEPROM_CMD_SE;
        ORR      R3,R1,#0x1C0
        STR      R3,[R2, #+0]
//  124   MDR_EEPROM->DO;   /* Idle Reading for Delay */
        LDR      R3,[R2, #+12]
//  125   MDR_EEPROM->DO;   /* Idle Reading for Delay */
        LDR      R3,[R2, #+12]
//  126   MDR_EEPROM->DO;   /* Idle Reading for Delay */
        LDR      R3,[R2, #+12]
//  127   Data = MDR_EEPROM->DO;
        LDR      R3,[R2, #+12]
//  128   Command &= EEPROM_CMD_DELAY_Msk;
//  129   MDR_EEPROM->CMD = Command;
        AND      R1,R1,#0x38
        STR      R1,[R2, #+0]
//  130   MDR_EEPROM->KEY = 0;
        MOVS     R1,#+0
        STR      R1,[R2, #+16]
//  131 
//  132   Shift = (Address & 3) * 8;
//  133   Data >>= Shift;
//  134   return Data;
        AND      R0,R0,#0x3
        LSLS     R0,R0,#+3
        LSR      R0,R3,R0
        UXTB     R0,R0
        BX       LR               ;; return
//  135 }
//  136 
//  137 /**
//  138   * @brief  Reads the 16-bit EEPROM memory value.
//  139   * @param  Address: The EEPROM memory half word address (two byte aligned).
//  140   * @param  BankSelector: Selects EEPROM Bank (Main Bank or Information Bank).
//  141   *         This parameter can be one of the following values:
//  142   *           @arg EEPROM_Main_Bank_Select:      The EEPROM Main Bank selector.
//  143   *           @arg EEPROM_Info_Bank_Select:      The EEPROM Information Bank selector.
//  144   * @retval The selected EEPROM memory value.
//  145   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  146 __RAMFUNC uint16_t EEPROM_ReadHalfWord(uint32_t Address, uint32_t BankSelector)
//  147 {
//  148   uint32_t Data;
//  149   uint32_t Command;
//  150   uint32_t Shift;
//  151 
//  152   assert_param(IS_EEPROM_BANK_SELECTOR(BankSelector));
//  153   assert_param(IS_TWO_BYTE_ALLIGNED(Address));
//  154 
//  155   MDR_EEPROM->KEY = EEPROM_REG_ACCESS_KEY;
EEPROM_ReadHalfWord:
        LDR.N    R2,??DataTable5  ;; 0x40018000
        LDR.N    R3,??DataTable5_1  ;; 0x8aaa5551
        STR      R3,[R2, #+16]
//  156   Command = (MDR_EEPROM->CMD & EEPROM_CMD_DELAY_Msk) | EEPROM_CMD_CON;
        LDR      R3,[R2, #+0]
        AND      R3,R3,#0x38
        ORR      R3,R3,#0x1
//  157   Command |= (BankSelector == EEPROM_Info_Bank_Select) ? EEPROM_CMD_IFREN : 0;
        CMP      R1,#+1
        ITE      EQ 
        MOVEQ    R1,#+512
        MOVNE    R1,#+0
        ORRS     R1,R1,R3
//  158   MDR_EEPROM->CMD = Command;
        STR      R1,[R2, #+0]
//  159   MDR_EEPROM->ADR = Address;
        STR      R0,[R2, #+4]
//  160   MDR_EEPROM->CMD = Command | EEPROM_CMD_XE | EEPROM_CMD_YE | EEPROM_CMD_SE;
        ORR      R3,R1,#0x1C0
        STR      R3,[R2, #+0]
//  161   MDR_EEPROM->DO;   /* Idle Reading for Delay */
        LDR      R3,[R2, #+12]
//  162   MDR_EEPROM->DO;   /* Idle Reading for Delay */
        LDR      R3,[R2, #+12]
//  163   MDR_EEPROM->DO;   /* Idle Reading for Delay */
        LDR      R3,[R2, #+12]
//  164   Data = MDR_EEPROM->DO;
        LDR      R3,[R2, #+12]
//  165   Command &= EEPROM_CMD_DELAY_Msk;
//  166   MDR_EEPROM->CMD = Command;
        AND      R1,R1,#0x38
        STR      R1,[R2, #+0]
//  167   MDR_EEPROM->KEY = 0;
        MOVS     R1,#+0
        STR      R1,[R2, #+16]
//  168 
//  169   Shift = (Address & 2) * 8;
//  170   Data >>= Shift;
//  171   return Data;
        AND      R0,R0,#0x2
        LSLS     R0,R0,#+3
        LSR      R0,R3,R0
        UXTH     R0,R0
        BX       LR               ;; return
//  172 }
//  173 
//  174 /**
//  175   * @brief  Reads the 32-bit EEPROM memory value.
//  176   * @param  Address: The EEPROM memory word address (four byte aligned).
//  177   * @param  BankSelector: Selects EEPROM Bank (Main Bank or Information Bank).
//  178   *         This parameter can be one of the following values:
//  179   *           @arg EEPROM_Main_Bank_Select:      The EEPROM Main Bank selector.
//  180   *           @arg EEPROM_Info_Bank_Select:      The EEPROM Information Bank selector.
//  181   * @retval The selected EEPROM memory value.
//  182   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  183 __RAMFUNC uint32_t EEPROM_ReadWord(uint32_t Address, uint32_t BankSelector)
//  184 {
//  185   uint32_t Command;
//  186   uint32_t Data;
//  187 
//  188   assert_param(IS_EEPROM_BANK_SELECTOR(BankSelector));
//  189   assert_param(IS_FOUR_BYTE_ALLIGNED(Address));
//  190 
//  191   MDR_EEPROM->KEY = EEPROM_REG_ACCESS_KEY;
EEPROM_ReadWord:
        LDR.N    R2,??DataTable5  ;; 0x40018000
        LDR.N    R3,??DataTable5_1  ;; 0x8aaa5551
        STR      R3,[R2, #+16]
//  192   Command = (MDR_EEPROM->CMD & EEPROM_CMD_DELAY_Msk) | EEPROM_CMD_CON;
        LDR      R3,[R2, #+0]
        AND      R3,R3,#0x38
        ORR      R3,R3,#0x1
//  193   Command |= (BankSelector == EEPROM_Info_Bank_Select) ? EEPROM_CMD_IFREN : 0;
        CMP      R1,#+1
        ITE      EQ 
        MOVEQ    R1,#+512
        MOVNE    R1,#+0
        ORRS     R1,R1,R3
//  194   MDR_EEPROM->CMD = Command;
        STR      R1,[R2, #+0]
//  195   MDR_EEPROM->ADR = Address;
        STR      R0,[R2, #+4]
//  196   MDR_EEPROM->CMD = Command | EEPROM_CMD_XE | EEPROM_CMD_YE | EEPROM_CMD_SE;
        ORR      R0,R1,#0x1C0
        STR      R0,[R2, #+0]
//  197   MDR_EEPROM->DO;   /* Idle Reading for Delay */
        LDR      R0,[R2, #+12]
//  198   MDR_EEPROM->DO;   /* Idle Reading for Delay */
        LDR      R0,[R2, #+12]
//  199   MDR_EEPROM->DO;   /* Idle Reading for Delay */
        LDR      R0,[R2, #+12]
//  200   Data = MDR_EEPROM->DO;
        LDR      R0,[R2, #+12]
//  201   Command &= EEPROM_CMD_DELAY_Msk;
//  202   MDR_EEPROM->CMD = Command;
        AND      R1,R1,#0x38
        STR      R1,[R2, #+0]
//  203   MDR_EEPROM->KEY = 0;
        MOVS     R1,#+0
        STR      R1,[R2, #+16]
//  204   return Data;
        BX       LR               ;; return
//  205 }
//  206 
//  207 /**
//  208   * @brief  Erases one page of the selected EEPROM memory bank.
//  209   * @param  Address: Page Address in the EEPROM memory.
//  210   * @param  BankSelector: Selects EEPROM Bank (Main Bank or Information Bank).
//  211   *         This parameter can be one of the following values:
//  212   *           @arg EEPROM_Main_Bank_Select:      The EEPROM Main Bank selector.
//  213   *           @arg EEPROM_Info_Bank_Select:      The EEPROM Information Bank selector.
//  214   * @retval None
//  215   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  216 __RAMFUNC void EEPROM_ErasePage(uint32_t Address, uint32_t BankSelector)
//  217 {
EEPROM_ErasePage:
        PUSH     {R3-R7,LR}
        MOV      R4,R0
//  218   uint32_t Command;
//  219   uint32_t Offset;
//  220 
//  221   assert_param(IS_EEPROM_BANK_SELECTOR(BankSelector));
//  222 
//  223   MDR_EEPROM->KEY = EEPROM_REG_ACCESS_KEY;
        LDR.N    R5,??DataTable5  ;; 0x40018000
        LDR.N    R0,??DataTable5_1  ;; 0x8aaa5551
        STR      R0,[R5, #+16]
//  224   Command = (MDR_EEPROM->CMD & EEPROM_CMD_DELAY_Msk) | EEPROM_CMD_CON;
        LDR      R0,[R5, #+0]
        AND      R0,R0,#0x38
        ORR      R0,R0,#0x1
//  225   Command |= (BankSelector == EEPROM_Info_Bank_Select) ? EEPROM_CMD_IFREN : 0;
        CMP      R1,#+1
        ITE      EQ 
        MOVEQ    R1,#+512
        MOVNE    R1,#+0
        ORR      R7,R1,R0
//  226   MDR_EEPROM->CMD = Command;
        STR      R7,[R5, #+0]
//  227 
//  228   for (Offset = 0; Offset < (4 << 2); Offset += 4)
        MOVS     R6,#+0
//  229   {
//  230     MDR_EEPROM->ADR = Address + Offset;             /* Page Address */
??EEPROM_ErasePage_0:
        ADDS     R0,R6,R4
        STR      R0,[R5, #+4]
//  231     MDR_EEPROM->DI = 0;
        MOVS     R0,#+0
        STR      R0,[R5, #+8]
//  232     Command |= EEPROM_CMD_XE | EEPROM_CMD_ERASE;
        ORR      R7,R7,#0x440
//  233     MDR_EEPROM->CMD = Command;
        STR      R7,[R5, #+0]
//  234     ProgramDelay(GET_US_LOOPS(5));              /* Wait for 5 us */
        BL       ??Subroutine1_0
//  235     Command |= EEPROM_CMD_NVSTR;
??CrossCallReturnLabel_1:
        ORR      R7,R7,#0x2000
//  236     MDR_EEPROM->CMD = Command;
        STR      R7,[R5, #+0]
//  237     ProgramDelay(GET_US_LOOPS(40000));          /* Wait for 40 ms */
        MOVW     R0,#+40000
        BL       ProgramDelay
//  238     Command &= ~EEPROM_CMD_ERASE;
        BIC      R7,R7,#0x400
//  239     MDR_EEPROM->CMD = Command;
        STR      R7,[R5, #+0]
//  240     ProgramDelay(GET_US_LOOPS(5));              /* Wait for 5 us */
        BL       ??Subroutine1_0
//  241     Command &= ~(EEPROM_CMD_XE | EEPROM_CMD_NVSTR);
??CrossCallReturnLabel_0:
        BIC      R7,R7,#0x2040
//  242     MDR_EEPROM->CMD = Command;
        STR      R7,[R5, #+0]
//  243     ProgramDelay(GET_US_LOOPS(1));              /* Wait for 1 us */
        BL       ??Subroutine2_0
//  244   }
??CrossCallReturnLabel_5:
        ADDS     R6,R6,#+4
        CMP      R6,#+16
        BCC.N    ??EEPROM_ErasePage_0
//  245   Command &= EEPROM_CMD_DELAY_Msk;
//  246   MDR_EEPROM->CMD = Command;
        AND      R0,R7,#0x38
        STR      R0,[R5, #+0]
//  247   MDR_EEPROM->KEY = 0;
        MOVS     R0,#+0
        STR      R0,[R5, #+16]
//  248 }
        POP      {R0,R4-R7,PC}    ;; return
//  249 
//  250 /**
//  251   * @brief  Erases all pages of the selected EEPROM memory bank.
//  252   * @param  BankSelector: Selects EEPROM Bank (Main Bank or Information Bank).
//  253   *         This parameter can be one of the following values:
//  254   *           @arg EEPROM_Main_Bank_Select:      The EEPROM Main Bank selector.
//  255   *           @arg EEPROM_All_Banks_Select:      The EEPROM All Banks selector.
//  256   * @retval None
//  257   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  258 __RAMFUNC void EEPROM_EraseAllPages(uint32_t BankSelector)
//  259 {
EEPROM_EraseAllPages:
        PUSH     {R4-R6,LR}
//  260   uint32_t Command;
//  261   uint32_t Offset;
//  262 
//  263   assert_param(IS_EEPROM_ERASE_SELECTOR(BankSelector));
//  264 
//  265   MDR_EEPROM->KEY = EEPROM_REG_ACCESS_KEY;
        LDR.N    R4,??DataTable5  ;; 0x40018000
        LDR.N    R1,??DataTable5_1  ;; 0x8aaa5551
        STR      R1,[R4, #+16]
//  266   Command = (MDR_EEPROM->CMD & EEPROM_CMD_DELAY_Msk) | EEPROM_CMD_CON;
        LDR      R1,[R4, #+0]
        AND      R1,R1,#0x38
        ORR      R1,R1,#0x1
//  267   Command |= (BankSelector == EEPROM_All_Banks_Select) ? EEPROM_CMD_IFREN : 0;
        CMP      R0,#+2
        ITE      EQ 
        MOVEQ    R0,#+512
        MOVNE    R0,#+0
        ORR      R5,R0,R1
//  268 
//  269   MDR_EEPROM->CMD = Command;
        STR      R5,[R4, #+0]
//  270 
//  271   for (Offset = 0; Offset < (4 << 2); Offset += 4)
        MOVS     R6,#+0
//  272   {
//  273     MDR_EEPROM->ADR = Offset;
??EEPROM_EraseAllPages_0:
        STR      R6,[R4, #+4]
//  274     MDR_EEPROM->DI = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
//  275     Command |= EEPROM_CMD_XE | EEPROM_CMD_MAS1 | EEPROM_CMD_ERASE;
        ORR      R5,R5,#0xC40
//  276     MDR_EEPROM->CMD = Command;
        BL       ?Subroutine1
//  277     ProgramDelay(GET_US_LOOPS(5));                /* Wait for 5 us */
//  278     Command |= EEPROM_CMD_NVSTR;
??CrossCallReturnLabel_4:
        ORR      R5,R5,#0x2000
//  279     MDR_EEPROM->CMD = Command;
        STR      R5,[R4, #+0]
//  280     ProgramDelay(GET_US_LOOPS(40000));            /* Wait for 40 ms */
        MOVW     R0,#+40000
        BL       ProgramDelay
//  281     Command &= ~EEPROM_CMD_ERASE;
        BIC      R5,R5,#0x400
//  282     MDR_EEPROM->CMD = Command;
        STR      R5,[R4, #+0]
//  283     ProgramDelay(GET_US_LOOPS(100));              /* Wait for 100 us */
        MOVS     R0,#+100
        BL       ProgramDelay
//  284     Command &= ~(EEPROM_CMD_XE | EEPROM_CMD_MAS1 | EEPROM_CMD_NVSTR);
        BIC      R5,R5,#0x2840
//  285     MDR_EEPROM->CMD = Command;
        BL       ?Subroutine2
//  286     ProgramDelay(GET_US_LOOPS(1));                /* Wait for 1 us */
//  287   }
??CrossCallReturnLabel_7:
        ADDS     R6,R6,#+4
        CMP      R6,#+16
        BCC.N    ??EEPROM_EraseAllPages_0
//  288   Command &= EEPROM_CMD_DELAY_Msk;
//  289   MDR_EEPROM->CMD = Command;
        AND      R0,R5,#0x38
        STR      R0,[R4, #+0]
//  290   MDR_EEPROM->KEY = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+16]
//  291 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
?Subroutine2:
        STR      R5,[R4, #+0]
??Subroutine2_0:
        MOVS     R0,#+1
        B.N      ProgramDelay

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
?Subroutine1:
        STR      R5,[R4, #+0]
??Subroutine1_0:
        MOVS     R0,#+5
        B.N      ProgramDelay
//  292 
//  293 /**
//  294   * @brief  Programs the 8-bit EEPROM memory value.
//  295   * @param  Address: The EEPROM memory byte address.
//  296   * @param  BankSelector: Selects EEPROM Bank (Main Bank or Information Bank).
//  297   *         This parameter can be one of the following values:
//  298   *           @arg EEPROM_Main_Bank_Select:      The EEPROM Main Bank selector.
//  299   *           @arg EEPROM_Info_Bank_Select:      The EEPROM Information Bank selector.
//  300   * @param  Data: The data value to be programmed.
//  301   * @retval None
//  302   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  303 __RAMFUNC void EEPROM_ProgramByte(uint32_t Address, uint32_t BankSelector, uint32_t Data)
//  304 {
EEPROM_ProgramByte:
        PUSH     {R4-R8,LR}
        MOV      R4,R0
        MOV      R5,R1
        MOV      R8,R2
//  305   uint32_t Mask;
//  306   uint32_t Tmp;
//  307   uint32_t Shift;
//  308 
//  309   assert_param(IS_EEPROM_BANK_SELECTOR(BankSelector));
//  310 
//  311   Shift = (Address & 3) * 8;
        AND      R0,R4,#0x3
        LSLS     R7,R0,#+3
//  312   Data = Data << Shift;
//  313   Mask = 0xFF << Shift;
        MOVS     R0,#+255
        B.N      ?Subroutine0
//  314   Tmp = EEPROM_ReadWord(Address, BankSelector);
//  315   EEPROM_ProgramWord(Address, BankSelector, (Tmp & ~Mask) | (Data & Mask));
//  316 }
//  317 
//  318 /**
//  319   * @brief  Programs the 16-bit EEPROM memory value.
//  320   * @param  Address: The EEPROM memory half word address (two byte aligned).
//  321   * @param  BankSelector: Selects EEPROM Bank (Main Bank or Information Bank).
//  322   *         This parameter can be one of the following values:
//  323   *           @arg EEPROM_Main_Bank_Select:      The EEPROM Main Bank selector.
//  324   *           @arg EEPROM_Info_Bank_Select:      The EEPROM Information Bank selector.
//  325   * @param  Data: The data value to be programmed.
//  326   * @retval None
//  327   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  328 __RAMFUNC void EEPROM_ProgramHalfWord(uint32_t Address, uint32_t BankSelector, uint32_t Data)
//  329 {
EEPROM_ProgramHalfWord:
        PUSH     {R4-R8,LR}
        MOV      R4,R0
        MOV      R5,R1
        MOV      R8,R2
//  330   uint32_t Mask;
//  331   uint32_t Tmp;
//  332   uint32_t Shift;
//  333 
//  334   assert_param(IS_EEPROM_BANK_SELECTOR(BankSelector));
//  335   assert_param(IS_TWO_BYTE_ALLIGNED(Address));
//  336 
//  337   Shift = (Address & 2) * 8;
        AND      R0,R4,#0x2
        LSLS     R7,R0,#+3
//  338   Data = Data << Shift;
//  339   Mask = 0xFFFF << Shift;
        MOVW     R0,#+65535
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  340   Tmp = EEPROM_ReadWord(Address, BankSelector);
//  341   EEPROM_ProgramWord(Address, BankSelector, (Tmp & ~Mask) | (Data & Mask));
//  342 }

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
?Subroutine0:
        LSL      R6,R0,R7
        MOV      R0,R4
        BL       EEPROM_ReadWord
        BICS     R0,R0,R6
        LSL      R1,R8,R7
        ANDS     R1,R6,R1
        ORR      R2,R1,R0
        MOV      R1,R5
        MOV      R0,R4
        POP      {R4-R8,LR}
        REQUIRE EEPROM_ProgramWord
        ;; // Fall through to label EEPROM_ProgramWord
//  343 
//  344 /**
//  345   * @brief  Programs the 32-bit EEPROM memory value.
//  346   * @param  Address: The EEPROM memory word address (four byte aligned).
//  347   * @param  BankSelector: Selects EEPROM Bank (Main Bank or Information Bank).
//  348   *         This parameter can be one of the following values:
//  349   *           @arg EEPROM_Main_Bank_Select:      The EEPROM Main Bank selector.
//  350   *           @arg EEPROM_Info_Bank_Select:      The EEPROM Information Bank selector.
//  351   * @param  Data: The data value to be programmed.
//  352   * @retval None
//  353   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  354 __RAMFUNC void EEPROM_ProgramWord(uint32_t Address, uint32_t BankSelector, uint32_t Data)
//  355 {
EEPROM_ProgramWord:
        PUSH     {R3-R5,LR}
//  356   uint32_t Command;
//  357 
//  358   assert_param(IS_EEPROM_BANK_SELECTOR(BankSelector));
//  359   assert_param(IS_FOUR_BYTE_ALLIGNED(Address));
//  360 
//  361   MDR_EEPROM->KEY = EEPROM_REG_ACCESS_KEY;
        LDR.N    R4,??DataTable5  ;; 0x40018000
        LDR.N    R3,??DataTable5_1  ;; 0x8aaa5551
        STR      R3,[R4, #+16]
//  362   BankSelector = (BankSelector == EEPROM_Info_Bank_Select) ? EEPROM_CMD_IFREN : 0;
        CMP      R1,#+1
        ITE      EQ 
        MOVEQ    R1,#+512
        MOVNE    R1,#+0
//  363   Command = MDR_EEPROM->CMD & EEPROM_CMD_DELAY_Msk;
        LDR      R3,[R4, #+0]
//  364   Command |= EEPROM_CMD_CON | BankSelector;
        AND      R3,R3,#0x38
        ORRS     R1,R1,R3
        ORR      R1,R1,#0x1
//  365   MDR_EEPROM->CMD = Command;
        STR      R1,[R4, #+0]
//  366   MDR_EEPROM->ADR = Address;
        STR      R0,[R4, #+4]
//  367   MDR_EEPROM->DI  = Data;
        STR      R2,[R4, #+8]
//  368   Command |= EEPROM_CMD_XE | EEPROM_CMD_PROG;
        ORR      R5,R1,#0x1040
//  369   MDR_EEPROM->CMD = Command;
        BL       ?Subroutine1
//  370   ProgramDelay(GET_US_LOOPS(5));                /* Wait for 5 us */
//  371   Command |= EEPROM_CMD_NVSTR;
??CrossCallReturnLabel_3:
        ORR      R5,R5,#0x2000
//  372   MDR_EEPROM->CMD = Command;
        STR      R5,[R4, #+0]
//  373   ProgramDelay(GET_US_LOOPS(10));               /* Wait for 10 us */
        MOVS     R0,#+10
        BL       ProgramDelay
//  374   Command |= EEPROM_CMD_YE;
        ORR      R5,R5,#0x80
//  375   MDR_EEPROM->CMD = Command;
        STR      R5,[R4, #+0]
//  376   ProgramDelay(GET_US_LOOPS(40));               /* Wait for 40 us */
        MOVS     R0,#+40
        BL       ProgramDelay
//  377   Command &= ~EEPROM_CMD_YE;
        BIC      R0,R5,#0x80
//  378   MDR_EEPROM->CMD = Command;
        STR      R0,[R4, #+0]
//  379   Command &= ~EEPROM_CMD_PROG;
        BIC      R5,R0,#0x1000
//  380   MDR_EEPROM->CMD = Command;
        BL       ?Subroutine1
//  381   ProgramDelay(GET_US_LOOPS(5));                /* Wait for 5 us */
//  382   Command &= ~(EEPROM_CMD_XE | EEPROM_CMD_NVSTR);
??CrossCallReturnLabel_2:
        BIC      R5,R5,#0x2040
//  383   MDR_EEPROM->CMD = Command;
        BL       ?Subroutine2
//  384   ProgramDelay(GET_US_LOOPS(1));                /* Wait for 1 us */
//  385 
//  386   MDR_EEPROM->CMD = Command & EEPROM_CMD_DELAY_Msk;
??CrossCallReturnLabel_6:
        AND      R0,R5,#0x38
        STR      R0,[R4, #+0]
//  387   MDR_EEPROM->KEY = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+16]
//  388 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5:
        DC32     0x40018000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_1:
        DC32     0x8aaa5551

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  389 
//  390 /** @} */ /* End of group EEPROM_Private_Functions */
//  391 
//  392 /** @} */ /* End of group EEPROM */
//  393 
//  394 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
//  395 
//  396 /******************* (C) COPYRIGHT 2010 Phyton *********************************
//  397 *
//  398 * END OF FILE MDR32F9Qx_eeprom.c */
//  399 
// 
//  12 bytes in section .text
// 620 bytes in section .textrw
// 
// 632 bytes of CODE memory
//
//Errors: none
//Warnings: none
