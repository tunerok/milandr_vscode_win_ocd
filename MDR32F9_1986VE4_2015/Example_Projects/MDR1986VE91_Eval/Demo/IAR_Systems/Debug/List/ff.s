///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:02 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src_fatfs\ff.c                             /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src_fatfs\ff.c --preprocess                /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ff.s           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME ff

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memset
        EXTERN disk_initialize
        EXTERN disk_ioctl
        EXTERN disk_read
        EXTERN disk_status
        EXTERN disk_write
        EXTERN get_fattime

        PUBLIC clust2sect
        PUBLIC f_chdir
        PUBLIC f_chdrive
        PUBLIC f_chmod
        PUBLIC f_close
        PUBLIC f_getcwd
        PUBLIC f_getfree
        PUBLIC f_gets
        PUBLIC f_lseek
        PUBLIC f_mkdir
        PUBLIC f_mkfs
        PUBLIC f_mount
        PUBLIC f_open
        PUBLIC f_opendir
        PUBLIC f_printf
        PUBLIC f_putc
        PUBLIC f_puts
        PUBLIC f_read
        PUBLIC f_readdir
        PUBLIC f_rename
        PUBLIC f_stat
        PUBLIC f_sync
        PUBLIC f_truncate
        PUBLIC f_unlink
        PUBLIC f_utime
        PUBLIC f_write
        PUBLIC get_fat
        PUBLIC put_fat

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src_fatfs\ff.c
//    1 /*----------------------------------------------------------------------------/
//    2 /  FatFs - FAT file system module  R0.09                  (C)ChaN, 2011
//    3 /-----------------------------------------------------------------------------/
//    4 / FatFs module is a generic FAT file system module for small embedded systems.
//    5 / This is a free software that opened for education, research and commercial
//    6 / developments under license policy of following terms.
//    7 /
//    8 /  Copyright (C) 2011, ChaN, all right reserved.
//    9 /
//   10 / * The FatFs module is a free software and there is NO WARRANTY.
//   11 / * No restriction on use. You can use, modify and redistribute it for
//   12 /   personal, non-profit or commercial products UNDER YOUR RESPONSIBILITY.
//   13 / * Redistributions of source code must retain the above copyright notice.
//   14 /
//   15 /-----------------------------------------------------------------------------/
//   16 / Feb 26,'06 R0.00  Prototype.
//   17 /
//   18 / Apr 29,'06 R0.01  First stable version.
//   19 /
//   20 / Jun 01,'06 R0.02  Added FAT12 support.
//   21 /                   Removed unbuffered mode.
//   22 /                   Fixed a problem on small (<32M) partition.
//   23 / Jun 10,'06 R0.02a Added a configuration option (_FS_MINIMUM).
//   24 /
//   25 / Sep 22,'06 R0.03  Added f_rename().
//   26 /                   Changed option _FS_MINIMUM to _FS_MINIMIZE.
//   27 / Dec 11,'06 R0.03a Improved cluster scan algorithm to write files fast.
//   28 /                   Fixed f_mkdir() creates incorrect directory on FAT32.
//   29 /
//   30 / Feb 04,'07 R0.04  Supported multiple drive system.
//   31 /                   Changed some interfaces for multiple drive system.
//   32 /                   Changed f_mountdrv() to f_mount().
//   33 /                   Added f_mkfs().
//   34 / Apr 01,'07 R0.04a Supported multiple partitions on a physical drive.
//   35 /                   Added a capability of extending file size to f_lseek().
//   36 /                   Added minimization level 3.
//   37 /                   Fixed an endian sensitive code in f_mkfs().
//   38 / May 05,'07 R0.04b Added a configuration option _USE_NTFLAG.
//   39 /                   Added FSInfo support.
//   40 /                   Fixed DBCS name can result FR_INVALID_NAME.
//   41 /                   Fixed short seek (<= csize) collapses the file object.
//   42 /
//   43 / Aug 25,'07 R0.05  Changed arguments of f_read(), f_write() and f_mkfs().
//   44 /                   Fixed f_mkfs() on FAT32 creates incorrect FSInfo.
//   45 /                   Fixed f_mkdir() on FAT32 creates incorrect directory.
//   46 / Feb 03,'08 R0.05a Added f_truncate() and f_utime().
//   47 /                   Fixed off by one error at FAT sub-type determination.
//   48 /                   Fixed btr in f_read() can be mistruncated.
//   49 /                   Fixed cached sector is not flushed when create and close without write.
//   50 /
//   51 / Apr 01,'08 R0.06  Added fputc(), fputs(), fprintf() and fgets().
//   52 /                   Improved performance of f_lseek() on moving to the same or following cluster.
//   53 /
//   54 / Apr 01,'09 R0.07  Merged Tiny-FatFs as a configuration option. (_FS_TINY)
//   55 /                   Added long file name feature.
//   56 /                   Added multiple code page feature.
//   57 /                   Added re-entrancy for multitask operation.
//   58 /                   Added auto cluster size selection to f_mkfs().
//   59 /                   Added rewind option to f_readdir().
//   60 /                   Changed result code of critical errors.
//   61 /                   Renamed string functions to avoid name collision.
//   62 / Apr 14,'09 R0.07a Separated out OS dependent code on reentrant cfg.
//   63 /                   Added multiple sector size feature.
//   64 / Jun 21,'09 R0.07c Fixed f_unlink() can return FR_OK on error.
//   65 /                   Fixed wrong cache control in f_lseek().
//   66 /                   Added relative path feature.
//   67 /                   Added f_chdir() and f_chdrive().
//   68 /                   Added proper case conversion to extended char.
//   69 / Nov 03,'09 R0.07e Separated out configuration options from ff.h to ffconf.h.
//   70 /                   Fixed f_unlink() fails to remove a sub-dir on _FS_RPATH.
//   71 /                   Fixed name matching error on the 13 char boundary.
//   72 /                   Added a configuration option, _LFN_UNICODE.
//   73 /                   Changed f_readdir() to return the SFN with always upper case on non-LFN cfg.
//   74 /
//   75 / May 15,'10 R0.08  Added a memory configuration option. (_USE_LFN = 3)
//   76 /                   Added file lock feature. (_FS_SHARE)
//   77 /                   Added fast seek feature. (_USE_FASTSEEK)
//   78 /                   Changed some types on the API, XCHAR->TCHAR.
//   79 /                   Changed fname member in the FILINFO structure on Unicode cfg.
//   80 /                   String functions support UTF-8 encoding files on Unicode cfg.
//   81 / Aug 16,'10 R0.08a Added f_getcwd(). (_FS_RPATH = 2)
//   82 /                   Added sector erase feature. (_USE_ERASE)
//   83 /                   Moved file lock semaphore table from fs object to the bss.
//   84 /                   Fixed a wrong directory entry is created on non-LFN cfg when the given name contains ';'.
//   85 /                   Fixed f_mkfs() creates wrong FAT32 volume.
//   86 / Jan 15,'11 R0.08b Fast seek feature is also applied to f_read() and f_write().
//   87 /                   f_lseek() reports required table size on creating CLMP.
//   88 /                   Extended format syntax of f_printf function.
//   89 /                   Ignores duplicated directory separators in given path names.
//   90 /
//   91 / Sep 06,'11 R0.09  f_mkfs() supports multiple partition to finish the multiple partition feature.
//   92 /                   Added f_fdisk(). (_MULTI_PARTITION = 2)
//   93 /---------------------------------------------------------------------------*/
//   94 
//   95 #include "ff.h"     /* FatFs configurations and declarations */
//   96 #include "diskio.h"   /* Declarations of low level disk I/O functions */
//   97 
//   98 
//   99 /*--------------------------------------------------------------------------
//  100 
//  101    Module Private Definitions
//  102 
//  103 ---------------------------------------------------------------------------*/
//  104 
//  105 #if _FATFS != 6502  /* Revision ID */
//  106 #error Wrong include file (ff.h).
//  107 #endif
//  108 
//  109 
//  110 /* Definitions on sector size */
//  111 #if _MAX_SS != 512 && _MAX_SS != 1024 && _MAX_SS != 2048 && _MAX_SS != 4096
//  112 #error Wrong sector size.
//  113 #endif
//  114 #if _MAX_SS != 512
//  115 #define SS(fs)  ((fs)->ssize) /* Variable sector size */
//  116 #else
//  117 #define SS(fs)  512U      /* Fixed sector size */
//  118 #endif
//  119 
//  120 
//  121 /* Reentrancy related */
//  122 #if _FS_REENTRANT
//  123 #if _USE_LFN == 1
//  124 #error Static LFN work area must not be used in re-entrant configuration.
//  125 #endif
//  126 #define ENTER_FF(fs)    { if (!lock_fs(fs)) return FR_TIMEOUT; }
//  127 #define LEAVE_FF(fs, res) { unlock_fs(fs, res); return res; }
//  128 #else
//  129 #define ENTER_FF(fs)
//  130 #define LEAVE_FF(fs, res) return res
//  131 #endif
//  132 
//  133 #define ABORT(fs, res)    { fp->flag |= FA__ERROR; LEAVE_FF(fs, res); }
//  134 
//  135 
//  136 /* File shareing feature */
//  137 #if _FS_SHARE
//  138 #if _FS_READONLY
//  139 #error _FS_SHARE must be 0 on read-only cfg.
//  140 #endif
//  141 typedef struct {
//  142   FATFS *fs;        /* File ID 1, volume (NULL:blank entry) */
//  143   DWORD clu;        /* File ID 2, directory */
//  144   WORD idx;       /* File ID 3, directory index */
//  145   WORD ctr;       /* File open counter, 0:none, 0x01..0xFF:read open count, 0x100:write mode */
//  146 } FILESEM;
//  147 #endif
//  148 
//  149 
//  150 /* Misc definitions */
//  151 #define LD_CLUST(dir) (((DWORD)LD_WORD(dir+DIR_FstClusHI)<<16) | LD_WORD(dir+DIR_FstClusLO))
//  152 #define ST_CLUST(dir,cl) {ST_WORD(dir+DIR_FstClusLO, cl); ST_WORD(dir+DIR_FstClusHI, (DWORD)cl>>16);}
//  153 
//  154 
//  155 /* DBCS code ranges and SBCS extend char conversion table */
//  156 
//  157 #if _CODE_PAGE == 932 /* Japanese Shift-JIS */
//  158 #define _DF1S 0x81  /* DBC 1st byte range 1 start */
//  159 #define _DF1E 0x9F  /* DBC 1st byte range 1 end */
//  160 #define _DF2S 0xE0  /* DBC 1st byte range 2 start */
//  161 #define _DF2E 0xFC  /* DBC 1st byte range 2 end */
//  162 #define _DS1S 0x40  /* DBC 2nd byte range 1 start */
//  163 #define _DS1E 0x7E  /* DBC 2nd byte range 1 end */
//  164 #define _DS2S 0x80  /* DBC 2nd byte range 2 start */
//  165 #define _DS2E 0xFC  /* DBC 2nd byte range 2 end */
//  166 
//  167 #elif _CODE_PAGE == 936 /* Simplified Chinese GBK */
//  168 #define _DF1S 0x81
//  169 #define _DF1E 0xFE
//  170 #define _DS1S 0x40
//  171 #define _DS1E 0x7E
//  172 #define _DS2S 0x80
//  173 #define _DS2E 0xFE
//  174 
//  175 #elif _CODE_PAGE == 949 /* Korean */
//  176 #define _DF1S 0x81
//  177 #define _DF1E 0xFE
//  178 #define _DS1S 0x41
//  179 #define _DS1E 0x5A
//  180 #define _DS2S 0x61
//  181 #define _DS2E 0x7A
//  182 #define _DS3S 0x81
//  183 #define _DS3E 0xFE
//  184 
//  185 #elif _CODE_PAGE == 950 /* Traditional Chinese Big5 */
//  186 #define _DF1S 0x81
//  187 #define _DF1E 0xFE
//  188 #define _DS1S 0x40
//  189 #define _DS1E 0x7E
//  190 #define _DS2S 0xA1
//  191 #define _DS2E 0xFE
//  192 
//  193 #elif _CODE_PAGE == 437 /* U.S. (OEM) */
//  194 #define _DF1S 0
//  195 #define _EXCVT {0x80,0x9A,0x90,0x41,0x8E,0x41,0x8F,0x80,0x45,0x45,0x45,0x49,0x49,0x49,0x8E,0x8F,0x90,0x92,0x92,0x4F,0x99,0x4F,0x55,0x55,0x59,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  196         0x41,0x49,0x4F,0x55,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0x21,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  197         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  198         0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  199 
//  200 #elif _CODE_PAGE == 720 /* Arabic (OEM) */
//  201 #define _DF1S 0
//  202 #define _EXCVT {0x80,0x81,0x45,0x41,0x84,0x41,0x86,0x43,0x45,0x45,0x45,0x49,0x49,0x8D,0x8E,0x8F,0x90,0x92,0x92,0x93,0x94,0x95,0x49,0x49,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  203         0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  204         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  205         0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  206 
//  207 #elif _CODE_PAGE == 737 /* Greek (OEM) */
//  208 #define _DF1S 0
//  209 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x92,0x92,0x93,0x94,0x95,0x96,0x97,0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87, \ 
//  210         0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0xAA,0x92,0x93,0x94,0x95,0x96,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  211         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  212         0x97,0xEA,0xEB,0xEC,0xE4,0xED,0xEE,0xE7,0xE8,0xF1,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  213 
//  214 #elif _CODE_PAGE == 775 /* Baltic (OEM) */
//  215 #define _DF1S 0
//  216 #define _EXCVT {0x80,0x9A,0x91,0xA0,0x8E,0x95,0x8F,0x80,0xAD,0xED,0x8A,0x8A,0xA1,0x8D,0x8E,0x8F,0x90,0x92,0x92,0xE2,0x99,0x95,0x96,0x97,0x97,0x99,0x9A,0x9D,0x9C,0x9D,0x9E,0x9F, \ 
//  217         0xA0,0xA1,0xE0,0xA3,0xA3,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  218         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xB5,0xB6,0xB7,0xB8,0xBD,0xBE,0xC6,0xC7,0xA5,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  219         0xE0,0xE1,0xE2,0xE3,0xE5,0xE5,0xE6,0xE3,0xE8,0xE8,0xEA,0xEA,0xEE,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  220 
//  221 #elif _CODE_PAGE == 850 /* Multilingual Latin 1 (OEM) */
//  222 #define _DF1S 0
//  223 #define _EXCVT {0x80,0x9A,0x90,0xB6,0x8E,0xB7,0x8F,0x80,0xD2,0xD3,0xD4,0xD8,0xD7,0xDE,0x8E,0x8F,0x90,0x92,0x92,0xE2,0x99,0xE3,0xEA,0xEB,0x59,0x99,0x9A,0x9D,0x9C,0x9D,0x9E,0x9F, \ 
//  224         0xB5,0xD6,0xE0,0xE9,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0x21,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  225         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC7,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  226         0xE0,0xE1,0xE2,0xE3,0xE5,0xE5,0xE6,0xE7,0xE7,0xE9,0xEA,0xEB,0xED,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  227 
//  228 #elif _CODE_PAGE == 852 /* Latin 2 (OEM) */
//  229 #define _DF1S 0
//  230 #define _EXCVT {0x80,0x9A,0x90,0xB6,0x8E,0xDE,0x8F,0x80,0x9D,0xD3,0x8A,0x8A,0xD7,0x8D,0x8E,0x8F,0x90,0x91,0x91,0xE2,0x99,0x95,0x95,0x97,0x97,0x99,0x9A,0x9B,0x9B,0x9D,0x9E,0x9F, \ 
//  231         0xB5,0xD6,0xE0,0xE9,0xA4,0xA4,0xA6,0xA6,0xA8,0xA8,0xAA,0x8D,0xAC,0xB8,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBD,0xBF, \ 
//  232         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC6,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD1,0xD1,0xD2,0xD3,0xD2,0xD5,0xD6,0xD7,0xB7,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  233         0xE0,0xE1,0xE2,0xE3,0xE3,0xD5,0xE6,0xE6,0xE8,0xE9,0xE8,0xEB,0xED,0xED,0xDD,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xEB,0xFC,0xFC,0xFE,0xFF}
//  234 
//  235 #elif _CODE_PAGE == 855 /* Cyrillic (OEM) */
//  236 #define _DF1S 0
//  237 #define _EXCVT {0x81,0x81,0x83,0x83,0x85,0x85,0x87,0x87,0x89,0x89,0x8B,0x8B,0x8D,0x8D,0x8F,0x8F,0x91,0x91,0x93,0x93,0x95,0x95,0x97,0x97,0x99,0x99,0x9B,0x9B,0x9D,0x9D,0x9F,0x9F, \ 
//  238         0xA1,0xA1,0xA3,0xA3,0xA5,0xA5,0xA7,0xA7,0xA9,0xA9,0xAB,0xAB,0xAD,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB6,0xB6,0xB8,0xB8,0xB9,0xBA,0xBB,0xBC,0xBE,0xBE,0xBF, \ 
//  239         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC7,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD1,0xD1,0xD3,0xD3,0xD5,0xD5,0xD7,0xD7,0xDD,0xD9,0xDA,0xDB,0xDC,0xDD,0xE0,0xDF, \ 
//  240         0xE0,0xE2,0xE2,0xE4,0xE4,0xE6,0xE6,0xE8,0xE8,0xEA,0xEA,0xEC,0xEC,0xEE,0xEE,0xEF,0xF0,0xF2,0xF2,0xF4,0xF4,0xF6,0xF6,0xF8,0xF8,0xFA,0xFA,0xFC,0xFC,0xFD,0xFE,0xFF}
//  241 
//  242 #elif _CODE_PAGE == 857 /* Turkish (OEM) */
//  243 #define _DF1S 0
//  244 #define _EXCVT {0x80,0x9A,0x90,0xB6,0x8E,0xB7,0x8F,0x80,0xD2,0xD3,0xD4,0xD8,0xD7,0x98,0x8E,0x8F,0x90,0x92,0x92,0xE2,0x99,0xE3,0xEA,0xEB,0x98,0x99,0x9A,0x9D,0x9C,0x9D,0x9E,0x9E, \ 
//  245         0xB5,0xD6,0xE0,0xE9,0xA5,0xA5,0xA6,0xA6,0xA8,0xA9,0xAA,0xAB,0xAC,0x21,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  246         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC7,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  247         0xE0,0xE1,0xE2,0xE3,0xE5,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xDE,0x59,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  248 
//  249 #elif _CODE_PAGE == 858 /* Multilingual Latin 1 + Euro (OEM) */
//  250 #define _DF1S 0
//  251 #define _EXCVT {0x80,0x9A,0x90,0xB6,0x8E,0xB7,0x8F,0x80,0xD2,0xD3,0xD4,0xD8,0xD7,0xDE,0x8E,0x8F,0x90,0x92,0x92,0xE2,0x99,0xE3,0xEA,0xEB,0x59,0x99,0x9A,0x9D,0x9C,0x9D,0x9E,0x9F, \ 
//  252         0xB5,0xD6,0xE0,0xE9,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0x21,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  253         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC7,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD1,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  254         0xE0,0xE1,0xE2,0xE3,0xE5,0xE5,0xE6,0xE7,0xE7,0xE9,0xEA,0xEB,0xED,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  255 
//  256 #elif _CODE_PAGE == 862 /* Hebrew (OEM) */
//  257 #define _DF1S 0
//  258 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  259         0x41,0x49,0x4F,0x55,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0x21,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  260         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  261         0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  262 
//  263 #elif _CODE_PAGE == 866 /* Russian (OEM) */
//  264 #define _DF1S 0
//  265 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  266         0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  267         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  268         0x90,0x91,0x92,0x93,0x9d,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F,0xF0,0xF0,0xF2,0xF2,0xF4,0xF4,0xF6,0xF6,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  269 
//  270 #elif _CODE_PAGE == 874 /* Thai (OEM, Windows) */
//  271 #define _DF1S 0
//  272 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  273         0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  274         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  275         0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  276 
//  277 #elif _CODE_PAGE == 1250 /* Central Europe (Windows) */
//  278 #define _DF1S 0
//  279 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x8A,0x9B,0x8C,0x8D,0x8E,0x8F, \ 
//  280         0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xA3,0xB4,0xB5,0xB6,0xB7,0xB8,0xA5,0xAA,0xBB,0xBC,0xBD,0xBC,0xAF, \ 
//  281         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  282         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xF7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xFF}
//  283 
//  284 #elif _CODE_PAGE == 1251 /* Cyrillic (Windows) */
//  285 #define _DF1S 0
//  286 #define _EXCVT {0x80,0x81,0x82,0x82,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x80,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x8A,0x9B,0x8C,0x8D,0x8E,0x8F, \ 
//  287         0xA0,0xA2,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB2,0xA5,0xB5,0xB6,0xB7,0xA8,0xB9,0xAA,0xBB,0xA3,0xBD,0xBD,0xAF, \ 
//  288         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  289         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF}
//  290 
//  291 #elif _CODE_PAGE == 1252 /* Latin 1 (Windows) */
//  292 #define _DF1S 0
//  293 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0xAd,0x9B,0x8C,0x9D,0xAE,0x9F, \ 
//  294         0xA0,0x21,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  295         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  296         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xF7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0x9F}
//  297 
//  298 #elif _CODE_PAGE == 1253 /* Greek (Windows) */
//  299 #define _DF1S 0
//  300 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  301         0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  302         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xA2,0xB8,0xB9,0xBA, \ 
//  303         0xE0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xF2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xFB,0xBC,0xFD,0xBF,0xFF}
//  304 
//  305 #elif _CODE_PAGE == 1254 /* Turkish (Windows) */
//  306 #define _DF1S 0
//  307 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x8A,0x9B,0x8C,0x9D,0x9E,0x9F, \ 
//  308         0xA0,0x21,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  309         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  310         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xF7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0x9F}
//  311 
//  312 #elif _CODE_PAGE == 1255 /* Hebrew (Windows) */
//  313 #define _DF1S 0
//  314 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  315         0xA0,0x21,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  316         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  317         0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF,0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
//  318 
//  319 #elif _CODE_PAGE == 1256 /* Arabic (Windows) */
//  320 #define _DF1S 0
//  321 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x8C,0x9D,0x9E,0x9F, \ 
//  322         0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  323         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  324         0x41,0xE1,0x41,0xE3,0xE4,0xE5,0xE6,0x43,0x45,0x45,0x45,0x45,0xEC,0xED,0x49,0x49,0xF0,0xF1,0xF2,0xF3,0x4F,0xF5,0xF6,0xF7,0xF8,0x55,0xFA,0x55,0x55,0xFD,0xFE,0xFF}
//  325 
//  326 #elif _CODE_PAGE == 1257 /* Baltic (Windows) */
//  327 #define _DF1S 0
//  328 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \ 
//  329         0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xA8,0xB9,0xAA,0xBB,0xBC,0xBD,0xBE,0xAF, \ 
//  330         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  331         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xF7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xFF}
//  332 
//  333 #elif _CODE_PAGE == 1258 /* Vietnam (OEM, Windows) */
//  334 #define _DF1S 0
//  335 #define _EXCVT {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0xAC,0x9D,0x9E,0x9F, \ 
//  336         0xA0,0x21,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF,0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \ 
//  337         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF,0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \ 
//  338         0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xEC,0xCD,0xCE,0xCF,0xD0,0xD1,0xF2,0xD3,0xD4,0xD5,0xD6,0xF7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xFE,0x9F}
//  339 
//  340 #elif _CODE_PAGE == 1 /* ASCII (for only non-LFN cfg) */
//  341 #if _USE_LFN
//  342 #error Cannot use LFN feature without valid code page.
//  343 #endif
//  344 #define _DF1S 0
//  345 
//  346 #else
//  347 #error Unknown code page
//  348 
//  349 #endif
//  350 
//  351 
//  352 /* Character code support macros */
//  353 #define IsUpper(c)  (((c)>='A')&&((c)<='Z'))
//  354 #define IsLower(c)  (((c)>='a')&&((c)<='z'))
//  355 #define IsDigit(c)  (((c)>='0')&&((c)<='9'))
//  356 
//  357 #if _DF1S   /* Code page is DBCS */
//  358 
//  359 #ifdef _DF2S  /* Two 1st byte areas */
//  360 #define IsDBCS1(c)  (((BYTE)(c) >= _DF1S && (BYTE)(c) <= _DF1E) || ((BYTE)(c) >= _DF2S && (BYTE)(c) <= _DF2E))
//  361 #else     /* One 1st byte area */
//  362 #define IsDBCS1(c)  ((BYTE)(c) >= _DF1S && (BYTE)(c) <= _DF1E)
//  363 #endif
//  364 
//  365 #ifdef _DS3S  /* Three 2nd byte areas */
//  366 #define IsDBCS2(c)  (((BYTE)(c) >= _DS1S && (BYTE)(c) <= _DS1E) || ((BYTE)(c) >= _DS2S && (BYTE)(c) <= _DS2E) || ((BYTE)(c) >= _DS3S && (BYTE)(c) <= _DS3E))
//  367 #else     /* Two 2nd byte areas */
//  368 #define IsDBCS2(c)  (((BYTE)(c) >= _DS1S && (BYTE)(c) <= _DS1E) || ((BYTE)(c) >= _DS2S && (BYTE)(c) <= _DS2E))
//  369 #endif
//  370 
//  371 #else     /* Code page is SBCS */
//  372 
//  373 #define IsDBCS1(c)  0
//  374 #define IsDBCS2(c)  0
//  375 
//  376 #endif /* _DF1S */
//  377 
//  378 
//  379 /* Name status flags */
//  380 #define NS      11    /* Index of name status byte in fn[] */
//  381 #define NS_LOSS   0x01  /* Out of 8.3 format */
//  382 #define NS_LFN    0x02  /* Force to create LFN entry */
//  383 #define NS_LAST   0x04  /* Last segment */
//  384 #define NS_BODY   0x08  /* Lower case flag (body) */
//  385 #define NS_EXT    0x10  /* Lower case flag (ext) */
//  386 #define NS_DOT    0x20  /* Dot entry */
//  387 
//  388 
//  389 /* FAT sub-type boundaries */
//  390 /* Note that the FAT spec by Microsoft says 4085 but Windows works with 4087! */
//  391 #define MIN_FAT16 4086  /* Minimum number of clusters for FAT16 */
//  392 #define MIN_FAT32 65526 /* Minimum number of clusters for FAT32 */
//  393 
//  394 
//  395 /* FatFs refers the members in the FAT structures as byte array instead of
//  396 / structure member because the structure is not binary compatible between
//  397 / different platforms */
//  398 
//  399 #define BS_jmpBoot      0 /* Jump instruction (3) */
//  400 #define BS_OEMName      3 /* OEM name (8) */
//  401 #define BPB_BytsPerSec    11  /* Sector size [byte] (2) */
//  402 #define BPB_SecPerClus    13  /* Cluster size [sector] (1) */
//  403 #define BPB_RsvdSecCnt    14  /* Size of reserved area [sector] (2) */
//  404 #define BPB_NumFATs     16  /* Number of FAT copies (1) */
//  405 #define BPB_RootEntCnt    17  /* Number of root dir entries for FAT12/16 (2) */
//  406 #define BPB_TotSec16    19  /* Volume size [sector] (2) */
//  407 #define BPB_Media     21  /* Media descriptor (1) */
//  408 #define BPB_FATSz16     22  /* FAT size [sector] (2) */
//  409 #define BPB_SecPerTrk   24  /* Track size [sector] (2) */
//  410 #define BPB_NumHeads    26  /* Number of heads (2) */
//  411 #define BPB_HiddSec     28  /* Number of special hidden sectors (4) */
//  412 #define BPB_TotSec32    32  /* Volume size [sector] (4) */
//  413 #define BS_DrvNum     36  /* Physical drive number (2) */
//  414 #define BS_BootSig      38  /* Extended boot signature (1) */
//  415 #define BS_VolID      39  /* Volume serial number (4) */
//  416 #define BS_VolLab     43  /* Volume label (8) */
//  417 #define BS_FilSysType   54  /* File system type (1) */
//  418 #define BPB_FATSz32     36  /* FAT size [sector] (4) */
//  419 #define BPB_ExtFlags    40  /* Extended flags (2) */
//  420 #define BPB_FSVer     42  /* File system version (2) */
//  421 #define BPB_RootClus    44  /* Root dir first cluster (4) */
//  422 #define BPB_FSInfo      48  /* Offset of FSInfo sector (2) */
//  423 #define BPB_BkBootSec   50  /* Offset of backup boot sectot (2) */
//  424 #define BS_DrvNum32     64  /* Physical drive number (2) */
//  425 #define BS_BootSig32    66  /* Extended boot signature (1) */
//  426 #define BS_VolID32      67  /* Volume serial number (4) */
//  427 #define BS_VolLab32     71  /* Volume label (8) */
//  428 #define BS_FilSysType32   82  /* File system type (1) */
//  429 #define FSI_LeadSig     0 /* FSI: Leading signature (4) */
//  430 #define FSI_StrucSig    484 /* FSI: Structure signature (4) */
//  431 #define FSI_Free_Count    488 /* FSI: Number of free clusters (4) */
//  432 #define FSI_Nxt_Free    492 /* FSI: Last allocated cluster (4) */
//  433 #define MBR_Table     446 /* MBR: Partition table offset (2) */
//  434 #define SZ_PTE        16  /* MBR: Size of a partition table entry */
//  435 #define BS_55AA       510 /* Boot sector signature (2) */
//  436 
//  437 #define DIR_Name      0 /* Short file name (11) */
//  438 #define DIR_Attr      11  /* Attribute (1) */
//  439 #define DIR_NTres     12  /* NT flag (1) */
//  440 #define DIR_CrtTime     14  /* Created time (2) */
//  441 #define DIR_CrtDate     16  /* Created date (2) */
//  442 #define DIR_FstClusHI   20  /* Higher 16-bit of first cluster (2) */
//  443 #define DIR_WrtTime     22  /* Modified time (2) */
//  444 #define DIR_WrtDate     24  /* Modified date (2) */
//  445 #define DIR_FstClusLO   26  /* Lower 16-bit of first cluster (2) */
//  446 #define DIR_FileSize    28  /* File size (4) */
//  447 #define LDIR_Ord      0 /* LFN entry order and LLE flag (1) */
//  448 #define LDIR_Attr     11  /* LFN attribute (1) */
//  449 #define LDIR_Type     12  /* LFN type (1) */
//  450 #define LDIR_Chksum     13  /* Sum of corresponding SFN entry */
//  451 #define LDIR_FstClusLO    26  /* Filled by zero (0) */
//  452 #define SZ_DIR        32    /* Size of a directory entry */
//  453 #define LLE         0x40  /* Last long entry flag in LDIR_Ord */
//  454 #define DDE         0xE5  /* Deleted directory enrty mark in DIR_Name[0] */
//  455 #define NDDE        0x05  /* Replacement of a character collides with DDE */
//  456 
//  457 
//  458 /*------------------------------------------------------------*/
//  459 /* Module private work area                                   */
//  460 /*------------------------------------------------------------*/
//  461 /* Note that uninitialized variables with static duration are
//  462 /  zeroed/nulled at start-up. If not, the compiler or start-up
//  463 /  routine is out of ANSI-C standard.
//  464 */
//  465 
//  466 #if _VOLUMES
//  467 static

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  468 FATFS *FatFs[_VOLUMES]; /* Pointer to the file system objects (logical drives) */
//  469 #else
//  470 #error Number of volumes must not be 0.
//  471 #endif
//  472 
//  473 static
//  474 WORD Fsid;        /* File system mount ID */
//  475 
//  476 #if _FS_RPATH
//  477 static
//  478 BYTE CurrVol;     /* Current drive */
CurrVol:
        DS8 1
        DS8 1
        DS8 2
        DS8 4
//  479 #endif
//  480 
//  481 #if _FS_SHARE
//  482 static
//  483 FILESEM Files[_FS_SHARE]; /* File lock semaphores */
//  484 #endif
//  485 
//  486 #if _USE_LFN == 0     /* No LFN feature */
//  487 #define DEF_NAMEBUF     BYTE sfn[12]
//  488 #define INIT_BUF(dobj)    (dobj).fn = sfn
//  489 #define FREE_BUF()
//  490 
//  491 #elif _USE_LFN == 1     /* LFN feature with static working buffer */
//  492 static WCHAR LfnBuf[_MAX_LFN+1];
//  493 #define DEF_NAMEBUF     BYTE sfn[12]
//  494 #define INIT_BUF(dobj)    { (dobj).fn = sfn; (dobj).lfn = LfnBuf; }
//  495 #define FREE_BUF()
//  496 
//  497 #elif _USE_LFN == 2     /* LFN feature with dynamic working buffer on the stack */
//  498 #define DEF_NAMEBUF     BYTE sfn[12]; WCHAR lbuf[_MAX_LFN+1]
//  499 #define INIT_BUF(dobj)    { (dobj).fn = sfn; (dobj).lfn = lbuf; }
//  500 #define FREE_BUF()
//  501 
//  502 #elif _USE_LFN == 3     /* LFN feature with dynamic working buffer on the heap */
//  503 #define DEF_NAMEBUF     BYTE sfn[12]; WCHAR *lfn
//  504 #define INIT_BUF(dobj)    { lfn = ff_memalloc((_MAX_LFN + 1) * 2); \ 
//  505                 if (!lfn) LEAVE_FF((dobj).fs, FR_NOT_ENOUGH_CORE); \ 
//  506                 (dobj).lfn = lfn; (dobj).fn = sfn; }
//  507 #define FREE_BUF()      ff_memfree(lfn)
//  508 
//  509 #else
//  510 #error Wrong LFN configuration.
//  511 #endif
//  512 
//  513 
//  514 
//  515 
//  516 /*--------------------------------------------------------------------------
//  517 
//  518    Module Private Functions
//  519 
//  520 ---------------------------------------------------------------------------*/
//  521 
//  522 
//  523 /*-----------------------------------------------------------------------*/
//  524 /* String functions                                                      */
//  525 /*-----------------------------------------------------------------------*/
//  526 
//  527 /* Copy memory to memory */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  528 static
//  529 void mem_cpy (void* dst, const void* src, UINT cnt) {
//  530   BYTE *d = (BYTE*)dst;
//  531   const BYTE *s = (const BYTE*)src;
mem_cpy:
        B.N      ??mem_cpy_0
//  532 
//  533 #if _WORD_ACCESS == 1
//  534   while (cnt >= sizeof(int)) {
//  535     *(int*)d = *(int*)s;
//  536     d += sizeof(int); s += sizeof(int);
//  537     cnt -= sizeof(int);
//  538   }
//  539 #endif
//  540   while (cnt--)
//  541     *d++ = *s++;
??mem_cpy_1:
        LDRB     R3,[R1], #+1
        STRB     R3,[R0], #+1
??mem_cpy_0:
        MOV      R3,R2
        SUBS     R2,R3,#+1
        CMP      R3,#+0
        BNE.N    ??mem_cpy_1
//  542 }
        BX       LR               ;; return
//  543 
//  544 /* Fill memory */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  545 static
//  546 void mem_set (void* dst, int val, UINT cnt) {
mem_set:
        MOVS     R3,R2
//  547   BYTE *d = (BYTE*)dst;
//  548 
//  549   while (cnt--)
        BEQ.N    ??mem_set_0
//  550     *d++ = (BYTE)val;
        MOV      R2,R1
        MOV      R1,R3
        B.W      __aeabi_memset
//  551 }
??mem_set_0:
        BX       LR               ;; return
//  552 
//  553 /* Compare memory to memory */
//  554 static
//  555 int mem_cmp (const void* dst, const void* src, UINT cnt) {
//  556   const BYTE *d = (const BYTE *)dst, *s = (const BYTE *)src;
//  557   int r = 0;
//  558 
//  559   while (cnt-- && (r = *d++ - *s++) == 0) ;
//  560   return r;
//  561 }
//  562 
//  563 /* Check if chr is contained in the string */
//  564 static
//  565 int chk_chr (const char* str, int chr) {
//  566   while (*str && *str != chr) str++;
//  567   return *str;
//  568 }
//  569 
//  570 
//  571 
//  572 /*-----------------------------------------------------------------------*/
//  573 /* Request/Release grant to access the volume                            */
//  574 /*-----------------------------------------------------------------------*/
//  575 #if _FS_REENTRANT
//  576 
//  577 static
//  578 int lock_fs (
//  579   FATFS *fs   /* File system object */
//  580 )
//  581 {
//  582   return ff_req_grant(fs->sobj);
//  583 }
//  584 
//  585 
//  586 static
//  587 void unlock_fs (
//  588   FATFS *fs,    /* File system object */
//  589   FRESULT res   /* Result code to be returned */
//  590 )
//  591 {
//  592   if (res != FR_NOT_ENABLED &&
//  593     res != FR_INVALID_DRIVE &&
//  594     res != FR_INVALID_OBJECT &&
//  595     res != FR_TIMEOUT) {
//  596     ff_rel_grant(fs->sobj);
//  597   }
//  598 }
//  599 #endif
//  600 
//  601 
//  602 
//  603 /*-----------------------------------------------------------------------*/
//  604 /* File shareing control functions                                       */
//  605 /*-----------------------------------------------------------------------*/
//  606 #if _FS_SHARE
//  607 
//  608 static
//  609 FRESULT chk_lock (  /* Check if the file can be accessed */
//  610   DIR* dj,    /* Directory object pointing the file to be checked */
//  611   int acc     /* Desired access (0:Read, 1:Write, 2:Delete/Rename) */
//  612 )
//  613 {
//  614   UINT i, be;
//  615 
//  616   /* Search file semaphore table */
//  617   for (i = be = 0; i < _FS_SHARE; i++) {
//  618     if (Files[i].fs) {  /* Existing entry */
//  619       if (Files[i].fs == dj->fs &&    /* Check if the file matched with an open file */
//  620         Files[i].clu == dj->sclust &&
//  621         Files[i].idx == dj->index) break;
//  622     } else {      /* Blank entry */
//  623       be++;
//  624     }
//  625   }
//  626   if (i == _FS_SHARE) /* The file is not opened */
//  627     return (be || acc == 2) ? FR_OK : FR_TOO_MANY_OPEN_FILES; /* Is there a blank entry for new file? */
//  628 
//  629   /* The file has been opened. Reject any open against writing file and all write mode open */
//  630   return (acc || Files[i].ctr == 0x100) ? FR_LOCKED : FR_OK;
//  631 }
//  632 
//  633 
//  634 static
//  635 int enq_lock (void) /* Check if an entry is available for a new file */
//  636 {
//  637   UINT i;
//  638 
//  639   for (i = 0; i < _FS_SHARE && Files[i].fs; i++) ;
//  640   return (i == _FS_SHARE) ? 0 : 1;
//  641 }
//  642 
//  643 
//  644 static
//  645 UINT inc_lock ( /* Increment file open counter and returns its index (0:int error) */
//  646   DIR* dj,  /* Directory object pointing the file to register or increment */
//  647   int acc   /* Desired access mode (0:Read, !0:Write) */
//  648 )
//  649 {
//  650   UINT i;
//  651 
//  652 
//  653   for (i = 0; i < _FS_SHARE; i++) { /* Find the file */
//  654     if (Files[i].fs == dj->fs &&
//  655       Files[i].clu == dj->sclust &&
//  656       Files[i].idx == dj->index) break;
//  657   }
//  658 
//  659   if (i == _FS_SHARE) {       /* Not opened. Register it as new. */
//  660     for (i = 0; i < _FS_SHARE && Files[i].fs; i++) ;
//  661     if (i == _FS_SHARE) return 0; /* No space to register (int err) */
//  662     Files[i].fs = dj->fs;
//  663     Files[i].clu = dj->sclust;
//  664     Files[i].idx = dj->index;
//  665     Files[i].ctr = 0;
//  666   }
//  667 
//  668   if (acc && Files[i].ctr) return 0;  /* Access violation (int err) */
//  669 
//  670   Files[i].ctr = acc ? 0x100 : Files[i].ctr + 1;  /* Set semaphore value */
//  671 
//  672   return i + 1;
//  673 }
//  674 
//  675 
//  676 static
//  677 FRESULT dec_lock (  /* Decrement file open counter */
//  678   UINT i      /* Semaphore index */
//  679 )
//  680 {
//  681   WORD n;
//  682   FRESULT res;
//  683 
//  684 
//  685   if (--i < _FS_SHARE) {
//  686     n = Files[i].ctr;
//  687     if (n == 0x100) n = 0;
//  688     if (n) n--;
//  689     Files[i].ctr = n;
//  690     if (!n) Files[i].fs = 0;
//  691     res = FR_OK;
//  692   } else {
//  693     res = FR_INT_ERR;
//  694   }
//  695   return res;
//  696 }
//  697 
//  698 
//  699 static
//  700 void clear_lock ( /* Clear lock entries of the volume */
//  701   FATFS *fs
//  702 )
//  703 {
//  704   UINT i;
//  705 
//  706   for (i = 0; i < _FS_SHARE; i++) {
//  707     if (Files[i].fs == fs) Files[i].fs = 0;
//  708   }
//  709 }
//  710 #endif
//  711 
//  712 
//  713 
//  714 /*-----------------------------------------------------------------------*/
//  715 /* Change window offset                                                  */
//  716 /*-----------------------------------------------------------------------*/
//  717 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  718 static
//  719 FRESULT move_window (
//  720   FATFS *fs,    /* File system object */
//  721   DWORD sector  /* Sector number to make appearance in the fs->win[] */
//  722 )         /* Move to zero only writes back dirty window */
//  723 {
move_window:
        PUSH     {R3-R7,LR}
        MOV      R4,R0
        MOV      R5,R1
//  724   DWORD wsect;
//  725 
//  726 
//  727   wsect = fs->winsect;
        LDR      R6,[R4, #+48]
//  728   if (wsect != sector) {  /* Changed current window */
        CMP      R6,R5
        BEQ.N    ??move_window_0
//  729 #if !_FS_READONLY
//  730     if (fs->wflag) {  /* Write back dirty window if needed */
        LDRB     R0,[R4, #+4]
        CBZ.N    R0,??move_window_1
//  731       if (disk_write(fs->drv, fs->win, wsect, 1) != RES_OK)
        BL       ?Subroutine1
??CrossCallReturnLabel_4:
        CBNZ.N   R0,??move_window_2
//  732         return FR_DISK_ERR;
//  733       fs->wflag = 0;
        STRB     R0,[R4, #+4]
//  734       if (wsect < (fs->fatbase + fs->fsize)) {  /* In FAT area */
        LDR      R0,[R4, #+36]
        LDR      R1,[R4, #+32]
        ADDS     R0,R1,R0
        CMP      R6,R0
        BCS.N    ??move_window_1
//  735         BYTE nf;
//  736         for (nf = fs->n_fats; nf > 1; nf--) { /* Reflect the change to all FAT copies */
        LDRB     R7,[R4, #+3]
        B.N      ??move_window_3
//  737           wsect += fs->fsize;
??move_window_4:
        LDR      R0,[R4, #+32]
        ADDS     R6,R0,R6
//  738           disk_write(fs->drv, fs->win, wsect, 1);
        BL       ?Subroutine1
//  739         }
??CrossCallReturnLabel_3:
        SUBS     R7,R7,#+1
??move_window_3:
        UXTB     R7,R7
        CMP      R7,#+2
        BCS.N    ??move_window_4
//  740       }
//  741     }
//  742 #endif
//  743     if (sector) {
??move_window_1:
        CBZ.N    R5,??move_window_0
//  744       if (disk_read(fs->drv, fs->win, sector, 1) != RES_OK)
        MOVS     R3,#+1
        MOV      R2,R5
        BL       ?Subroutine4
??CrossCallReturnLabel_10:
        CBZ.N    R0,??move_window_5
//  745         return FR_DISK_ERR;
??move_window_2:
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
//  746       fs->winsect = sector;
??move_window_5:
        STR      R5,[R4, #+48]
//  747     }
//  748   }
//  749 
//  750   return FR_OK;
??move_window_0:
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
//  751 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        MOVS     R3,#+1
        MOV      R2,R6
??Subroutine1_0:
        ADD      R1,R4,#+52
        LDRB     R0,[R4, #+1]
        B.W      disk_write
//  752 
//  753 
//  754 
//  755 
//  756 /*-----------------------------------------------------------------------*/
//  757 /* Clean-up cached data                                                  */
//  758 /*-----------------------------------------------------------------------*/
//  759 #if !_FS_READONLY

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  760 static
//  761 FRESULT sync (  /* FR_OK: successful, FR_DISK_ERR: failed */
//  762   FATFS *fs /* File system object */
//  763 )
//  764 {
sync:
        PUSH     {R3-R5,LR}
        MOV      R4,R0
//  765   FRESULT res;
//  766 
//  767 
//  768   res = move_window(fs, 0);
        MOVS     R1,#+0
        BL       move_window
        MOVS     R5,R0
//  769   if (res == FR_OK) {
        BNE.N    ??sync_0
//  770     /* Update FSInfo sector if needed */
//  771     if (fs->fs_type == FS_FAT32 && fs->fsi_flag) {
        LDRB     R0,[R4, #+0]
        CMP      R0,#+3
        BNE.N    ??sync_1
        LDRB     R0,[R4, #+5]
        CMP      R0,#+0
        BEQ.N    ??sync_1
//  772       fs->winsect = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
//  773       /* Create FSInfo structure */
//  774       mem_set(fs->win, 0, 512);
        MOV      R2,#+512
        MOVS     R1,#+0
        ADD      R0,R4,#+52
        BL       mem_set
//  775       ST_WORD(fs->win+BS_55AA, 0xAA55);
        MOVS     R0,#+85
        STRB     R0,[R4, #+562]
        MOVS     R0,#+170
        STRB     R0,[R4, #+563]
//  776       ST_DWORD(fs->win+FSI_LeadSig, 0x41615252);
        MOVS     R0,#+82
        STRB     R0,[R4, #+52]
        STRB     R0,[R4, #+53]
        MOVS     R0,#+97
        STRB     R0,[R4, #+54]
        MOVS     R0,#+65
        STRB     R0,[R4, #+55]
//  777       ST_DWORD(fs->win+FSI_StrucSig, 0x61417272);
        MOVS     R0,#+114
        STRB     R0,[R4, #+536]
        STRB     R0,[R4, #+537]
        MOVS     R0,#+65
        STRB     R0,[R4, #+538]
        MOVS     R0,#+97
        STRB     R0,[R4, #+539]
//  778       ST_DWORD(fs->win+FSI_Free_Count, fs->free_clust);
        LDR      R0,[R4, #+16]
        STRB     R0,[R4, #+540]
        LDR      R0,[R4, #+16]
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[R4, #+541]
        LDR      R0,[R4, #+16]
        LSRS     R0,R0,#+16
        STRB     R0,[R4, #+542]
        LDR      R0,[R4, #+16]
        LSRS     R0,R0,#+24
        STRB     R0,[R4, #+543]
//  779       ST_DWORD(fs->win+FSI_Nxt_Free, fs->last_clust);
        LDR      R0,[R4, #+12]
        STRB     R0,[R4, #+544]
        LDR      R0,[R4, #+12]
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[R4, #+545]
        LDR      R0,[R4, #+12]
        LSRS     R0,R0,#+16
        STRB     R0,[R4, #+546]
        LDR      R0,[R4, #+12]
        LSRS     R0,R0,#+24
        STRB     R0,[R4, #+547]
//  780       /* Write it into the FSInfo sector */
//  781       disk_write(fs->drv, fs->win, fs->fsi_sector, 1);
        MOVS     R3,#+1
        LDR      R2,[R4, #+20]
        BL       ??Subroutine1_0
//  782       fs->fsi_flag = 0;
??CrossCallReturnLabel_2:
        MOVS     R0,#+0
        STRB     R0,[R4, #+5]
//  783     }
//  784     /* Make sure that no pending write process in the physical drive */
//  785     if (disk_ioctl(fs->drv, CTRL_SYNC, 0) != RES_OK)
??sync_1:
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDRB     R0,[R4, #+1]
        BL       disk_ioctl
        CBZ.N    R0,??sync_0
//  786       res = FR_DISK_ERR;
        MOVS     R5,#+1
//  787   }
//  788 
//  789   return res;
??sync_0:
        MOV      R0,R5
        POP      {R1,R4,R5,PC}    ;; return
//  790 }
//  791 #endif
//  792 
//  793 
//  794 
//  795 
//  796 /*-----------------------------------------------------------------------*/
//  797 /* Get sector# from cluster#                                             */
//  798 /*-----------------------------------------------------------------------*/
//  799 
//  800 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  801 DWORD clust2sect (  /* !=0: Sector number, 0: Failed - invalid cluster# */
//  802   FATFS *fs,    /* File system object */
//  803   DWORD clst    /* Cluster# to be converted */
//  804 )
//  805 {
//  806   clst -= 2;
clust2sect:
        SUBS     R1,R1,#+2
//  807   if (clst >= (fs->n_fatent - 2)) return 0;   /* Invalid cluster# */
        LDR      R2,[R0, #+28]
        SUBS     R2,R2,#+2
        CMP      R1,R2
        BCC.N    ??clust2sect_0
        MOVS     R0,#+0
        BX       LR
//  808   return clst * fs->csize + fs->database;
??clust2sect_0:
        LDRB     R2,[R0, #+2]
        LDR      R0,[R0, #+44]
        MLA      R0,R2,R1,R0
        BX       LR               ;; return
//  809 }
//  810 
//  811 
//  812 
//  813 
//  814 /*-----------------------------------------------------------------------*/
//  815 /* FAT access - Read value of a FAT entry                                */
//  816 /*-----------------------------------------------------------------------*/
//  817 
//  818 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  819 DWORD get_fat ( /* 0xFFFFFFFF:Disk error, 1:Internal error, Else:Cluster status */
//  820   FATFS *fs,  /* File system object */
//  821   DWORD clst  /* Cluster# to get the link information */
//  822 )
//  823 {
get_fat:
        PUSH     {R3-R7,LR}
        MOV      R4,R0
        MOV      R5,R1
//  824   UINT wc, bc;
//  825   BYTE *p;
//  826 
//  827 
//  828   if (clst < 2 || clst >= fs->n_fatent) /* Chack range */
        CMP      R5,#+2
        BCC.N    ??get_fat_0
        LDR      R0,[R4, #+28]
        CMP      R5,R0
        BCC.N    ??get_fat_1
//  829     return 1;
??get_fat_0:
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
//  830 
//  831   switch (fs->fs_type) {
??get_fat_1:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BEQ.N    ??get_fat_2
        BCC.N    ??get_fat_3
        CMP      R0,#+3
        BEQ.N    ??get_fat_4
        BCC.N    ??get_fat_5
        B.N      ??get_fat_3
//  832   case FS_FAT12 :
//  833     bc = (UINT)clst; bc += bc / 2;
??get_fat_2:
        ADD      R7,R5,R5, LSR #+1
//  834     if (move_window(fs, fs->fatbase + (bc / SS(fs)))) break;
        BL       ?Subroutine11
??CrossCallReturnLabel_41:
        CMP      R0,#+0
        BNE.N    ??get_fat_3
//  835     wc = fs->win[bc % SS(fs)]; bc++;
        LSLS     R0,R7,#+23
        ADDS     R0,R4,R0, LSR #+23
        LDRB     R6,[R0, #+52]
        ADDS     R7,R7,#+1
//  836     if (move_window(fs, fs->fatbase + (bc / SS(fs)))) break;
        BL       ?Subroutine11
??CrossCallReturnLabel_40:
        CBNZ.N   R0,??get_fat_3
//  837     wc |= fs->win[bc % SS(fs)] << 8;
        LSLS     R0,R7,#+23
        ADDS     R0,R4,R0, LSR #+23
        LDRB     R0,[R0, #+52]
        ORR      R6,R6,R0, LSL #+8
//  838     return (clst & 1) ? (wc >> 4) : (wc & 0xFFF);
        LSLS     R0,R5,#+31
        BPL.N    ??get_fat_6
        LSRS     R0,R6,#+4
        POP      {R1,R4-R7,PC}
??get_fat_6:
        LSLS     R0,R6,#+20
        LSRS     R0,R0,#+20
        POP      {R1,R4-R7,PC}
//  839 
//  840   case FS_FAT16 :
//  841     if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 2)))) break;
??get_fat_5:
        LDR      R0,[R4, #+36]
        ADD      R1,R0,R5, LSR #+8
        BL       ??Subroutine11_0
??CrossCallReturnLabel_37:
        CBNZ.N   R0,??get_fat_3
//  842     p = &fs->win[clst * 2 % SS(fs)];
        LSLS     R0,R5,#+1
        LSLS     R0,R0,#+23
        ADDS     R0,R4,R0, LSR #+23
        ADDS     R0,R0,#+52
//  843     return LD_WORD(p);
        LDRB     R1,[R0, #+1]
        LDRB     R0,[R0, #+0]
        ORR      R0,R0,R1, LSL #+8
        POP      {R1,R4-R7,PC}
//  844 
//  845   case FS_FAT32 :
//  846     if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 4)))) break;
??get_fat_4:
        LDR      R0,[R4, #+36]
        ADD      R1,R0,R5, LSR #+7
        BL       ??Subroutine11_0
??CrossCallReturnLabel_36:
        CBNZ.N   R0,??get_fat_3
//  847     p = &fs->win[clst * 4 % SS(fs)];
        LSLS     R0,R5,#+2
        LSLS     R0,R0,#+23
        ADDS     R0,R4,R0, LSR #+23
        ADDS     R0,R0,#+52
//  848     return LD_DWORD(p) & 0x0FFFFFFF;
        LDRB     R1,[R0, #+3]
        LDRB     R2,[R0, #+2]
        LSLS     R2,R2,#+16
        ORR      R1,R2,R1, LSL #+24
        LDRB     R2,[R0, #+1]
        ORR      R1,R1,R2, LSL #+8
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,R1
        LSLS     R0,R0,#+4
        LSRS     R0,R0,#+4
        POP      {R1,R4-R7,PC}
//  849   }
//  850 
//  851   return 0xFFFFFFFF;  /* An error occurred at the disk I/O layer */
??get_fat_3:
        MOV      R0,#-1
        POP      {R1,R4-R7,PC}    ;; return
//  852 }
//  853 
//  854 
//  855 
//  856 
//  857 /*-----------------------------------------------------------------------*/
//  858 /* FAT access - Change value of a FAT entry                              */
//  859 /*-----------------------------------------------------------------------*/
//  860 #if !_FS_READONLY
//  861 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  862 FRESULT put_fat (
//  863   FATFS *fs,  /* File system object */
//  864   DWORD clst, /* Cluster# to be changed in range of 2 to fs->n_fatent - 1 */
//  865   DWORD val /* New value to mark the cluster */
//  866 )
//  867 {
put_fat:
        PUSH     {R3-R7,LR}
        MOV      R4,R0
        MOV      R6,R1
        MOV      R5,R2
//  868   UINT bc;
//  869   BYTE *p;
//  870   FRESULT res;
//  871 
//  872 
//  873   if (clst < 2 || clst >= fs->n_fatent) { /* Check range */
        CMP      R6,#+2
        BCC.N    ??put_fat_0
        LDR      R0,[R4, #+28]
        CMP      R6,R0
        BCC.N    ??put_fat_1
//  874     res = FR_INT_ERR;
??put_fat_0:
        MOVS     R0,#+2
        POP      {R1,R4-R7,PC}
//  875 
//  876   } else {
//  877     switch (fs->fs_type) {
??put_fat_1:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BEQ.N    ??put_fat_2
        BCC.N    ??put_fat_3
        CMP      R0,#+3
        BEQ.N    ??put_fat_4
        BCC.N    ??put_fat_5
        B.N      ??put_fat_3
//  878     case FS_FAT12 :
//  879       bc = clst; bc += bc / 2;
??put_fat_2:
        ADD      R7,R6,R6, LSR #+1
//  880       res = move_window(fs, fs->fatbase + (bc / SS(fs)));
        BL       ?Subroutine11
//  881       if (res != FR_OK) break;
??CrossCallReturnLabel_39:
        CMP      R0,#+0
        BNE.N    ??put_fat_6
//  882       p = &fs->win[bc % SS(fs)];
        LSLS     R0,R7,#+23
        ADDS     R0,R4,R0, LSR #+23
        ADD      R1,R0,#+52
//  883       *p = (clst & 1) ? ((*p & 0x0F) | ((BYTE)val << 4)) : (BYTE)val;
        ANDS     R6,R6,#0x1
        ITTTE    NE 
        LDRBNE   R0,[R1, #+0]
        ANDNE    R0,R0,#0xF
        ORRNE    R0,R0,R5, LSL #+4
        MOVEQ    R0,R5
        STRB     R0,[R1, #+0]
//  884       bc++;
        ADDS     R7,R7,#+1
//  885       fs->wflag = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+4]
//  886       res = move_window(fs, fs->fatbase + (bc / SS(fs)));
        BL       ?Subroutine11
//  887       if (res != FR_OK) break;
??CrossCallReturnLabel_38:
        CMP      R0,#+0
        BNE.N    ??put_fat_6
//  888       p = &fs->win[bc % SS(fs)];
        LSLS     R1,R7,#+23
        ADDS     R1,R4,R1, LSR #+23
        ADDS     R1,R1,#+52
//  889       *p = (clst & 1) ? (BYTE)(val >> 4) : ((*p & 0xF0) | ((BYTE)(val >> 8) & 0x0F));
        CBZ.N    R6,??put_fat_7
        LSRS     R2,R5,#+4
        B.N      ??put_fat_8
??put_fat_7:
        LDRB     R2,[R1, #+0]
        AND      R2,R2,#0xF0
        LSRS     R3,R5,#+8
        AND      R3,R3,#0xF
        ORRS     R2,R3,R2
??put_fat_8:
        STRB     R2,[R1, #+0]
//  890       break;
        B.N      ??put_fat_6
//  891 
//  892     case FS_FAT16 :
//  893       res = move_window(fs, fs->fatbase + (clst / (SS(fs) / 2)));
??put_fat_5:
        LDR      R0,[R4, #+36]
        ADD      R1,R0,R6, LSR #+8
        BL       ??Subroutine11_0
//  894       if (res != FR_OK) break;
??CrossCallReturnLabel_35:
        CBNZ.N   R0,??put_fat_6
//  895       p = &fs->win[clst * 2 % SS(fs)];
        LSLS     R1,R6,#+1
        LSLS     R1,R1,#+23
        ADDS     R1,R4,R1, LSR #+23
//  896       ST_WORD(p, (WORD)val);
        STRB     R5,[R1, #+52]!
        LSLS     R5,R5,#+16
        LSRS     R2,R5,#+24
        STRB     R2,[R1, #+1]
//  897       break;
        B.N      ??put_fat_6
//  898 
//  899     case FS_FAT32 :
//  900       res = move_window(fs, fs->fatbase + (clst / (SS(fs) / 4)));
??put_fat_4:
        LDR      R0,[R4, #+36]
        ADD      R1,R0,R6, LSR #+7
        BL       ??Subroutine11_0
//  901       if (res != FR_OK) break;
??CrossCallReturnLabel_34:
        CBNZ.N   R0,??put_fat_6
//  902       p = &fs->win[clst * 4 % SS(fs)];
        LSLS     R1,R6,#+2
        LSLS     R1,R1,#+23
        ADDS     R1,R4,R1, LSR #+23
        ADDS     R1,R1,#+52
//  903       val |= LD_DWORD(p) & 0xF0000000;
        LDRB     R2,[R1, #+3]
        LSLS     R2,R2,#+24
        AND      R2,R2,#0xF0000000
        ORRS     R5,R2,R5
//  904       ST_DWORD(p, val);
        STRB     R5,[R1, #+0]
        LSLS     R2,R5,#+16
        LSRS     R2,R2,#+24
        STRB     R2,[R1, #+1]
        LSRS     R2,R5,#+16
        STRB     R2,[R1, #+2]
        LSRS     R2,R5,#+24
        STRB     R2,[R1, #+3]
//  905       break;
        B.N      ??put_fat_6
//  906 
//  907     default :
//  908       res = FR_INT_ERR;
??put_fat_3:
        MOVS     R0,#+2
//  909     }
//  910     fs->wflag = 1;
??put_fat_6:
        MOVS     R1,#+1
        STRB     R1,[R4, #+4]
//  911   }
//  912 
//  913   return res;
        POP      {R1,R4-R7,PC}    ;; return
//  914 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine11:
        LDR      R0,[R4, #+36]
        ADD      R1,R0,R7, LSR #+9
??Subroutine11_0:
        MOV      R0,R4
        B.N      move_window
//  915 #endif /* !_FS_READONLY */
//  916 
//  917 
//  918 
//  919 
//  920 /*-----------------------------------------------------------------------*/
//  921 /* FAT handling - Remove a cluster chain                                 */
//  922 /*-----------------------------------------------------------------------*/
//  923 #if !_FS_READONLY

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  924 static
//  925 FRESULT remove_chain (
//  926   FATFS *fs,      /* File system object */
//  927   DWORD clst      /* Cluster# to remove a chain from */
//  928 )
//  929 {
remove_chain:
        PUSH     {R3-R7,LR}
        MOV      R4,R0
        MOV      R5,R1
//  930   FRESULT res;
//  931   DWORD nxt;
//  932 #if _USE_ERASE
//  933   DWORD scl = clst, ecl = clst, resion[2];
//  934 #endif
//  935 
//  936   if (clst < 2 || clst >= fs->n_fatent) { /* Check range */
        CMP      R5,#+2
        BCC.N    ??remove_chain_0
        LDR      R0,[R4, #+28]
        CMP      R5,R0
        BCS.N    ??remove_chain_0
//  937     res = FR_INT_ERR;
//  938 
//  939   } else {
//  940     res = FR_OK;
        MOVS     R6,#+0
//  941     while (clst < fs->n_fatent) {     /* Not a last link? */
//  942       nxt = get_fat(fs, clst);      /* Get cluster status */
??remove_chain_1:
        MOV      R1,R5
        MOV      R0,R4
        BL       get_fat
        MOVS     R7,R0
//  943       if (nxt == 0) break;        /* Empty cluster? */
        BEQ.N    ??remove_chain_2
//  944       if (nxt == 1) { res = FR_INT_ERR; break; }  /* Internal error? */
        CMP      R7,#+1
        BNE.N    ??remove_chain_3
??remove_chain_0:
        MOVS     R6,#+2
        B.N      ??remove_chain_2
//  945       if (nxt == 0xFFFFFFFF) { res = FR_DISK_ERR; break; }  /* Disk error? */
??remove_chain_3:
        CMN      R7,#+1
        BNE.N    ??remove_chain_4
        MOVS     R6,#+1
        B.N      ??remove_chain_2
//  946       res = put_fat(fs, clst, 0);     /* Mark the cluster "empty" */
??remove_chain_4:
        MOVS     R2,#+0
        BL       ?Subroutine16
??CrossCallReturnLabel_58:
        MOVS     R6,R0
//  947       if (res != FR_OK) break;
        BNE.N    ??remove_chain_2
//  948       if (fs->free_clust != 0xFFFFFFFF) { /* Update FSInfo */
        LDR      R0,[R4, #+16]
        CMN      R0,#+1
        BEQ.N    ??remove_chain_5
//  949         fs->free_clust++;
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+16]
//  950         fs->fsi_flag = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+5]
//  951       }
//  952 #if _USE_ERASE
//  953       if (ecl + 1 == nxt) { /* Next cluster is contiguous */
//  954         ecl = nxt;
//  955       } else {        /* End of contiguous clusters */
//  956         resion[0] = clust2sect(fs, scl);          /* Start sector */
//  957         resion[1] = clust2sect(fs, ecl) + fs->csize - 1;  /* End sector */
//  958         disk_ioctl(fs->drv, CTRL_ERASE_SECTOR, resion);   /* Erase the block */
//  959         scl = ecl = nxt;
//  960       }
//  961 #endif
//  962       clst = nxt; /* Next cluster */
??remove_chain_5:
        MOV      R5,R7
//  963     }
        LDR      R0,[R4, #+28]
        CMP      R5,R0
        BCC.N    ??remove_chain_1
//  964   }
//  965 
//  966   return res;
??remove_chain_2:
        MOV      R0,R6
        POP      {R1,R4-R7,PC}    ;; return
//  967 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine16:
        MOV      R1,R5
??Subroutine16_0:
        MOV      R0,R4
        B.N      put_fat
//  968 #endif
//  969 
//  970 
//  971 
//  972 
//  973 /*-----------------------------------------------------------------------*/
//  974 /* FAT handling - Stretch or Create a cluster chain                      */
//  975 /*-----------------------------------------------------------------------*/
//  976 #if !_FS_READONLY

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  977 static
//  978 DWORD create_chain (  /* 0:No free cluster, 1:Internal error, 0xFFFFFFFF:Disk error, >=2:New cluster# */
//  979   FATFS *fs,      /* File system object */
//  980   DWORD clst      /* Cluster# to stretch. 0 means create a new chain. */
//  981 )
//  982 {
create_chain:
        PUSH     {R3-R7,LR}
        MOV      R4,R0
        MOVS     R6,R1
//  983   DWORD cs, ncl, scl;
//  984   FRESULT res;
//  985 
//  986 
//  987   if (clst == 0) {    /* Create a new chain */
        BNE.N    ??create_chain_0
//  988     scl = fs->last_clust;     /* Get suggested start point */
        LDR      R7,[R4, #+12]
//  989     if (!scl || scl >= fs->n_fatent) scl = 1;
        CBZ.N    R7,??create_chain_1
        LDR      R0,[R4, #+28]
        CMP      R7,R0
        BCC.N    ??create_chain_2
??create_chain_1:
        MOVS     R7,#+1
        B.N      ??create_chain_2
//  990   }
//  991   else {          /* Stretch the current chain */
//  992     cs = get_fat(fs, clst);     /* Check the cluster status */
??create_chain_0:
        BL       get_fat
//  993     if (cs < 2) return 1;     /* It is an invalid cluster */
        CMP      R0,#+2
        BCS.N    ??create_chain_3
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
//  994     if (cs < fs->n_fatent) return cs; /* It is already followed by next cluster */
??create_chain_3:
        LDR      R1,[R4, #+28]
        CMP      R0,R1
        BCC.N    ??create_chain_4
//  995     scl = clst;
        MOV      R7,R6
//  996   }
//  997 
//  998   ncl = scl;        /* Start cluster */
??create_chain_2:
        MOV      R5,R7
//  999   for (;;) {
// 1000     ncl++;              /* Next cluster */
??create_chain_5:
        ADDS     R5,R5,#+1
// 1001     if (ncl >= fs->n_fatent) {    /* Wrap around */
        LDR      R0,[R4, #+28]
        CMP      R5,R0
        BCC.N    ??create_chain_6
// 1002       ncl = 2;
        MOVS     R5,#+2
// 1003       if (ncl > scl) return 0;  /* No free cluster */
        CMP      R7,#+2
        BCC.N    ??create_chain_7
// 1004     }
// 1005     cs = get_fat(fs, ncl);      /* Get the cluster status */
??create_chain_6:
        MOV      R1,R5
        MOV      R0,R4
        BL       get_fat
// 1006     if (cs == 0) break;       /* Found a free cluster */
        CBNZ.N   R0,??create_chain_8
// 1007     if (cs == 0xFFFFFFFF || cs == 1)/* An error occurred */
// 1008       return cs;
// 1009     if (ncl == scl) return 0;   /* No free cluster */
// 1010   }
// 1011 
// 1012   res = put_fat(fs, ncl, 0x0FFFFFFF); /* Mark the new cluster "last link" */
        MVN      R2,#-268435456
        BL       ?Subroutine16
// 1013   if (res == FR_OK && clst != 0) {
??CrossCallReturnLabel_57:
        CBNZ.N   R0,??CrossCallReturnLabel_56
        CBZ.N    R6,??create_chain_9
// 1014     res = put_fat(fs, clst, ncl); /* Link it to the previous one if needed */
        MOV      R2,R5
        MOV      R1,R6
        BL       ??Subroutine16_0
// 1015   }
// 1016   if (res == FR_OK) {
??CrossCallReturnLabel_56:
        CBNZ.N   R0,??create_chain_10
// 1017     fs->last_clust = ncl;     /* Update FSINFO */
??create_chain_9:
        STR      R5,[R4, #+12]
// 1018     if (fs->free_clust != 0xFFFFFFFF) {
        LDR      R0,[R4, #+16]
        CMN      R0,#+1
        BEQ.N    ??create_chain_11
// 1019       fs->free_clust--;
        SUBS     R0,R0,#+1
        STR      R0,[R4, #+16]
// 1020       fs->fsi_flag = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+5]
        B.N      ??create_chain_11
// 1021     }
// 1022   } else {
??create_chain_8:
        CMN      R0,#+1
        IT       NE 
        CMPNE    R0,#+1
        BEQ.N    ??create_chain_4
        CMP      R5,R7
        BNE.N    ??create_chain_5
??create_chain_7:
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}
// 1023     ncl = (res == FR_DISK_ERR) ? 0xFFFFFFFF : 1;
??create_chain_10:
        CMP      R0,#+1
        ITE      EQ 
        MOVEQ    R5,#-1
        MOVNE    R5,#+1
// 1024   }
// 1025 
// 1026   return ncl;   /* Return new cluster number or error code */
??create_chain_11:
        MOV      R0,R5
??create_chain_4:
        POP      {R1,R4-R7,PC}    ;; return
// 1027 }
// 1028 #endif /* !_FS_READONLY */
// 1029 
// 1030 
// 1031 
// 1032 /*-----------------------------------------------------------------------*/
// 1033 /* FAT handling - Convert offset into cluster with link map table        */
// 1034 /*-----------------------------------------------------------------------*/
// 1035 
// 1036 #if _USE_FASTSEEK
// 1037 static
// 1038 DWORD clmt_clust (  /* <2:Error, >=2:Cluster number */
// 1039   FIL* fp,    /* Pointer to the file object */
// 1040   DWORD ofs   /* File offset to be converted to cluster# */
// 1041 )
// 1042 {
// 1043   DWORD cl, ncl, *tbl;
// 1044 
// 1045 
// 1046   tbl = fp->cltbl + 1;  /* Top of CLMT */
// 1047   cl = ofs / SS(fp->fs) / fp->fs->csize;  /* Cluster order from top of the file */
// 1048   for (;;) {
// 1049     ncl = *tbl++;     /* Number of cluters in the fragment */
// 1050     if (!ncl) return 0;   /* End of table? (error) */
// 1051     if (cl < ncl) break;  /* In this fragment? */
// 1052     cl -= ncl; tbl++;   /* Next fragment */
// 1053   }
// 1054   return cl + *tbl; /* Return the cluster number */
// 1055 }
// 1056 #endif  /* _USE_FASTSEEK */
// 1057 
// 1058 
// 1059 
// 1060 /*-----------------------------------------------------------------------*/
// 1061 /* Directory handling - Set directory index                              */
// 1062 /*-----------------------------------------------------------------------*/
// 1063 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1064 static
// 1065 FRESULT dir_sdi (
// 1066   DIR *dj,    /* Pointer to directory object */
// 1067   WORD idx    /* Directory index number */
// 1068 )
// 1069 {
dir_sdi:
        PUSH     {R4-R6,LR}
        MOV      R4,R0
        MOV      R5,R1
// 1070   DWORD clst;
// 1071   WORD ic;
// 1072 
// 1073 
// 1074   dj->index = idx;
        STRH     R5,[R4, #+6]
// 1075   clst = dj->sclust;
        LDR      R1,[R4, #+8]
// 1076   if (clst == 1 || clst >= dj->fs->n_fatent)  /* Check start cluster range */
        CMP      R1,#+1
        BEQ.N    ??dir_sdi_0
        LDR      R0,[R4, #+0]
        LDR      R2,[R0, #+28]
        CMP      R1,R2
        BCS.N    ??dir_sdi_0
// 1077     return FR_INT_ERR;
// 1078   if (!clst && dj->fs->fs_type == FS_FAT32) /* Replace cluster# 0 with root cluster# if in FAT32 */
        CBNZ.N   R1,??dir_sdi_1
        LDRB     R1,[R0, #+0]
        CMP      R1,#+3
        BNE.N    ??dir_sdi_2
// 1079     clst = dj->fs->dirbase;
        LDR      R1,[R0, #+40]
// 1080 
// 1081   if (clst == 0) {  /* Static table (root-dir in FAT12/16) */
??dir_sdi_1:
        CBNZ.N   R1,??dir_sdi_3
// 1082     dj->clust = clst;
??dir_sdi_2:
        MOVS     R1,#+0
        STR      R1,[R4, #+12]
// 1083     if (idx >= dj->fs->n_rootdir)   /* Index is out of range */
        LDRH     R1,[R0, #+8]
        CMP      R5,R1
        BCS.N    ??dir_sdi_0
// 1084       return FR_INT_ERR;
// 1085     dj->sect = dj->fs->dirbase + idx / (SS(dj->fs) / SZ_DIR); /* Sector# */
        LDR      R0,[R0, #+40]
        B.N      ??dir_sdi_4
// 1086   }
// 1087   else {        /* Dynamic table (sub-dirs or root-dir in FAT32) */
// 1088     ic = SS(dj->fs) / SZ_DIR * dj->fs->csize; /* Entries per cluster */
??dir_sdi_3:
        LDRB     R0,[R0, #+2]
        LSLS     R6,R0,#+4
        B.N      ??dir_sdi_5
// 1089     while (idx >= ic) { /* Follow cluster chain */
// 1090       clst = get_fat(dj->fs, clst);       /* Get next cluster */
// 1091       if (clst == 0xFFFFFFFF) return FR_DISK_ERR; /* Disk error */
// 1092       if (clst < 2 || clst >= dj->fs->n_fatent) /* Reached to end of table or int error */
// 1093         return FR_INT_ERR;
// 1094       idx -= ic;
??dir_sdi_6:
        SUBS     R5,R5,R6
??dir_sdi_5:
        LDR      R0,[R4, #+0]
        UXTH     R5,R5
        CMP      R5,R6
        BCC.N    ??dir_sdi_7
        BL       get_fat
        MOV      R1,R0
        CMN      R1,#+1
        BNE.N    ??dir_sdi_8
        MOVS     R0,#+1
        POP      {R4-R6,PC}
??dir_sdi_8:
        CMP      R1,#+2
        BCC.N    ??dir_sdi_0
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        CMP      R1,R0
        BCC.N    ??dir_sdi_6
??dir_sdi_0:
        MOVS     R0,#+2
        POP      {R4-R6,PC}
// 1095     }
// 1096     dj->clust = clst;
??dir_sdi_7:
        STR      R1,[R4, #+12]
// 1097     dj->sect = clust2sect(dj->fs, clst) + idx / (SS(dj->fs) / SZ_DIR);  /* Sector# */
        BL       clust2sect
??dir_sdi_4:
        ADD      R0,R0,R5, LSR #+4
        STR      R0,[R4, #+16]
// 1098   }
// 1099 
// 1100   dj->dir = dj->fs->win + (idx % (SS(dj->fs) / SZ_DIR)) * SZ_DIR; /* Ptr to the entry in the sector */
        AND      R0,R5,#0xF
        LDR      R1,[R4, #+0]
        ADD      R0,R1,R0, LSL #+5
        ADDS     R0,R0,#+52
        STR      R0,[R4, #+20]
// 1101 
// 1102   return FR_OK; /* Seek succeeded */
        MOVS     R0,#+0
        POP      {R4-R6,PC}       ;; return
// 1103 }
// 1104 
// 1105 
// 1106 
// 1107 
// 1108 /*-----------------------------------------------------------------------*/
// 1109 /* Directory handling - Move directory index next                        */
// 1110 /*-----------------------------------------------------------------------*/
// 1111 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1112 static
// 1113 FRESULT dir_next (  /* FR_OK:Succeeded, FR_NO_FILE:End of table, FR_DENIED:EOT and could not stretch */
// 1114   DIR *dj,    /* Pointer to directory object */
// 1115   int stretch   /* 0: Do not stretch table, 1: Stretch table if needed */
// 1116 )
// 1117 {
dir_next:
        PUSH     {R3-R7,LR}
        MOV      R4,R0
        MOV      R7,R1
// 1118   DWORD clst;
// 1119   WORD i;
// 1120 
// 1121 
// 1122   stretch = stretch;    /* To suppress warning on read-only cfg. */
// 1123   i = dj->index + 1;
        LDRH     R0,[R4, #+6]
        ADDS     R5,R0,#+1
        UXTH     R5,R5
// 1124   if (!i || !dj->sect)  /* Report EOT when index has reached 65535 */
        CMP      R5,#+0
        ITT      NE 
        LDRNE    R0,[R4, #+16]
        CMPNE    R0,#+0
        BEQ.N    ??dir_next_0
// 1125     return FR_NO_FILE;
// 1126 
// 1127   if (!(i % (SS(dj->fs) / SZ_DIR))) { /* Sector changed? */
        TST      R5,#0xF
        BNE.N    ??dir_next_1
// 1128     dj->sect++;         /* Next sector */
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+16]
// 1129 
// 1130     if (dj->clust == 0) { /* Static table */
        LDR      R1,[R4, #+12]
        LDR      R0,[R4, #+0]
        CBNZ.N   R1,??dir_next_2
// 1131       if (i >= dj->fs->n_rootdir) /* Report EOT when end of table */
        LDRH     R0,[R0, #+8]
        CMP      R5,R0
        BLT.N    ??dir_next_1
        B.N      ??dir_next_0
// 1132         return FR_NO_FILE;
// 1133     }
// 1134     else {          /* Dynamic table */
// 1135       if (((i / (SS(dj->fs) / SZ_DIR)) & (dj->fs->csize - 1)) == 0) { /* Cluster changed? */
??dir_next_2:
        LDRB     R2,[R0, #+2]
        SUBS     R2,R2,#+1
        TST      R2,R5, LSR #+4
        BNE.N    ??dir_next_1
// 1136         clst = get_fat(dj->fs, dj->clust);        /* Get next cluster */
        BL       get_fat
        MOV      R6,R0
// 1137         if (clst <= 1) return FR_INT_ERR;
        CMP      R6,#+2
        BCC.N    ??dir_next_3
// 1138         if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
        CMN      R6,#+1
        BEQ.N    ??dir_next_4
// 1139         if (clst >= dj->fs->n_fatent) {         /* When it reached end of dynamic table */
        LDR      R0,[R4, #+0]
        LDR      R1,[R0, #+28]
        CMP      R6,R1
        BCC.N    ??dir_next_5
// 1140 #if !_FS_READONLY
// 1141           BYTE c;
// 1142           if (!stretch) return FR_NO_FILE;      /* When do not stretch, report EOT */
        CBNZ.N   R7,??dir_next_6
??dir_next_0:
        MOVS     R0,#+4
        POP      {R1,R4-R7,PC}
// 1143           clst = create_chain(dj->fs, dj->clust);   /* Stretch cluster chain */
??dir_next_6:
        LDR      R1,[R4, #+12]
        BL       create_chain
        MOVS     R6,R0
// 1144           if (clst == 0) return FR_DENIED;      /* No free cluster */
        BNE.N    ??dir_next_7
        MOVS     R0,#+7
        POP      {R1,R4-R7,PC}
// 1145           if (clst == 1) return FR_INT_ERR;
??dir_next_7:
        CMP      R6,#+1
        BNE.N    ??dir_next_8
??dir_next_3:
        MOVS     R0,#+2
        POP      {R1,R4-R7,PC}
// 1146           if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
??dir_next_8:
        CMN      R6,#+1
        BEQ.N    ??dir_next_4
// 1147           /* Clean-up stretched table */
// 1148           if (move_window(dj->fs, 0)) return FR_DISK_ERR; /* Flush active window */
        MOVS     R1,#+0
        BL       ??Subroutine12_0
??CrossCallReturnLabel_45:
        CBNZ.N   R0,??dir_next_4
// 1149           mem_set(dj->fs->win, 0, SS(dj->fs));      /* Clear window buffer */
        MOV      R2,#+512
        MOVS     R1,#+0
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+52
        BL       mem_set
// 1150           dj->fs->winsect = clust2sect(dj->fs, clst); /* Cluster start sector */
        BL       ?Subroutine18
??CrossCallReturnLabel_63:
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+48]
// 1151           for (c = 0; c < dj->fs->csize; c++) {   /* Fill the new cluster with 0 */
        MOVS     R7,#+0
        B.N      ??dir_next_9
// 1152             dj->fs->wflag = 1;
// 1153             if (move_window(dj->fs, 0)) return FR_DISK_ERR;
// 1154             dj->fs->winsect++;
??dir_next_10:
        LDR      R0,[R4, #+0]
        LDR      R1,[R0, #+48]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+48]
        ADDS     R7,R7,#+1
??dir_next_9:
        LDR      R0,[R4, #+0]
        LDRB     R1,[R0, #+2]
        UXTB     R7,R7
        CMP      R7,R1
        BCS.N    ??dir_next_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
        MOVS     R1,#+0
        BL       ??Subroutine12_0
??CrossCallReturnLabel_44:
        CMP      R0,#+0
        BEQ.N    ??dir_next_10
??dir_next_4:
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
// 1155           }
// 1156           dj->fs->winsect -= c;           /* Rewind window address */
??dir_next_11:
        LDR      R1,[R0, #+48]
        SUBS     R1,R1,R7
        STR      R1,[R0, #+48]
// 1157 #else
// 1158           return FR_NO_FILE;      /* Report EOT */
// 1159 #endif
// 1160         }
// 1161         dj->clust = clst;       /* Initialize data for new cluster */
??dir_next_5:
        STR      R6,[R4, #+12]
// 1162         dj->sect = clust2sect(dj->fs, clst);
        BL       ?Subroutine18
// 1163       }
// 1164     }
// 1165   }
??CrossCallReturnLabel_62:
        STR      R0,[R4, #+16]
// 1166 
// 1167   dj->index = i;
??dir_next_1:
        STRH     R5,[R4, #+6]
// 1168   dj->dir = dj->fs->win + (i % (SS(dj->fs) / SZ_DIR)) * SZ_DIR;
        AND      R0,R5,#0xF
        LDR      R1,[R4, #+0]
        ADD      R0,R1,R0, LSL #+5
        ADDS     R0,R0,#+52
        STR      R0,[R4, #+20]
// 1169 
// 1170   return FR_OK;
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
// 1171 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine18:
        MOV      R1,R6
??Subroutine18_0:
        LDR      R0,[R4, #+0]
        B.N      clust2sect
// 1172 
// 1173 
// 1174 
// 1175 
// 1176 /*-----------------------------------------------------------------------*/
// 1177 /* LFN handling - Test/Pick/Fit an LFN segment from/to directory entry   */
// 1178 /*-----------------------------------------------------------------------*/
// 1179 #if _USE_LFN
// 1180 static
// 1181 const BYTE LfnOfs[] = {1,3,5,7,9,14,16,18,20,22,24,28,30};  /* Offset of LFN chars in the directory entry */
// 1182 
// 1183 
// 1184 static
// 1185 int cmp_lfn (     /* 1:Matched, 0:Not matched */
// 1186   WCHAR *lfnbuf,    /* Pointer to the LFN to be compared */
// 1187   BYTE *dir     /* Pointer to the directory entry containing a part of LFN */
// 1188 )
// 1189 {
// 1190   UINT i, s;
// 1191   WCHAR wc, uc;
// 1192 
// 1193 
// 1194   i = ((dir[LDIR_Ord] & ~LLE) - 1) * 13;  /* Get offset in the LFN buffer */
// 1195   s = 0; wc = 1;
// 1196   do {
// 1197     uc = LD_WORD(dir+LfnOfs[s]);  /* Pick an LFN character from the entry */
// 1198     if (wc) { /* Last char has not been processed */
// 1199       wc = ff_wtoupper(uc);   /* Convert it to upper case */
// 1200       if (i >= _MAX_LFN || wc != ff_wtoupper(lfnbuf[i++]))  /* Compare it */
// 1201         return 0;       /* Not matched */
// 1202     } else {
// 1203       if (uc != 0xFFFF) return 0; /* Check filler */
// 1204     }
// 1205   } while (++s < 13);       /* Repeat until all chars in the entry are checked */
// 1206 
// 1207   if ((dir[LDIR_Ord] & LLE) && wc && lfnbuf[i]) /* Last segment matched but different length */
// 1208     return 0;
// 1209 
// 1210   return 1;           /* The part of LFN matched */
// 1211 }
// 1212 
// 1213 
// 1214 
// 1215 static
// 1216 int pick_lfn (      /* 1:Succeeded, 0:Buffer overflow */
// 1217   WCHAR *lfnbuf,    /* Pointer to the Unicode-LFN buffer */
// 1218   BYTE *dir     /* Pointer to the directory entry */
// 1219 )
// 1220 {
// 1221   UINT i, s;
// 1222   WCHAR wc, uc;
// 1223 
// 1224 
// 1225   i = ((dir[LDIR_Ord] & 0x3F) - 1) * 13;  /* Offset in the LFN buffer */
// 1226 
// 1227   s = 0; wc = 1;
// 1228   do {
// 1229     uc = LD_WORD(dir+LfnOfs[s]);    /* Pick an LFN character from the entry */
// 1230     if (wc) { /* Last char has not been processed */
// 1231       if (i >= _MAX_LFN) return 0;  /* Buffer overflow? */
// 1232       lfnbuf[i++] = wc = uc;      /* Store it */
// 1233     } else {
// 1234       if (uc != 0xFFFF) return 0;   /* Check filler */
// 1235     }
// 1236   } while (++s < 13);           /* Read all character in the entry */
// 1237 
// 1238   if (dir[LDIR_Ord] & LLE) {        /* Put terminator if it is the last LFN part */
// 1239     if (i >= _MAX_LFN) return 0;    /* Buffer overflow? */
// 1240     lfnbuf[i] = 0;
// 1241   }
// 1242 
// 1243   return 1;
// 1244 }
// 1245 
// 1246 
// 1247 #if !_FS_READONLY
// 1248 static
// 1249 void fit_lfn (
// 1250   const WCHAR *lfnbuf,  /* Pointer to the LFN buffer */
// 1251   BYTE *dir,        /* Pointer to the directory entry */
// 1252   BYTE ord,       /* LFN order (1-20) */
// 1253   BYTE sum        /* SFN sum */
// 1254 )
// 1255 {
// 1256   UINT i, s;
// 1257   WCHAR wc;
// 1258 
// 1259 
// 1260   dir[LDIR_Chksum] = sum;     /* Set check sum */
// 1261   dir[LDIR_Attr] = AM_LFN;    /* Set attribute. LFN entry */
// 1262   dir[LDIR_Type] = 0;
// 1263   ST_WORD(dir+LDIR_FstClusLO, 0);
// 1264 
// 1265   i = (ord - 1) * 13;       /* Get offset in the LFN buffer */
// 1266   s = wc = 0;
// 1267   do {
// 1268     if (wc != 0xFFFF) wc = lfnbuf[i++]; /* Get an effective char */
// 1269     ST_WORD(dir+LfnOfs[s], wc); /* Put it */
// 1270     if (!wc) wc = 0xFFFF;   /* Padding chars following last char */
// 1271   } while (++s < 13);
// 1272   if (wc == 0xFFFF || !lfnbuf[i]) ord |= LLE; /* Bottom LFN part is the start of LFN sequence */
// 1273   dir[LDIR_Ord] = ord;      /* Set the LFN order */
// 1274 }
// 1275 
// 1276 #endif
// 1277 #endif
// 1278 
// 1279 
// 1280 
// 1281 /*-----------------------------------------------------------------------*/
// 1282 /* Create numbered name                                                  */
// 1283 /*-----------------------------------------------------------------------*/
// 1284 #if _USE_LFN
// 1285 void gen_numname (
// 1286   BYTE *dst,      /* Pointer to generated SFN */
// 1287   const BYTE *src,  /* Pointer to source SFN to be modified */
// 1288   const WCHAR *lfn, /* Pointer to LFN */
// 1289   WORD seq      /* Sequence number */
// 1290 )
// 1291 {
// 1292   BYTE ns[8], c;
// 1293   UINT i, j;
// 1294 
// 1295 
// 1296   mem_cpy(dst, src, 11);
// 1297 
// 1298   if (seq > 5) {  /* On many collisions, generate a hash number instead of sequential number */
// 1299     do seq = (seq >> 1) + (seq << 15) + (WORD)*lfn++; while (*lfn);
// 1300   }
// 1301 
// 1302   /* itoa (hexdecimal) */
// 1303   i = 7;
// 1304   do {
// 1305     c = (seq % 16) + '0';
// 1306     if (c > '9') c += 7;
// 1307     ns[i--] = c;
// 1308     seq /= 16;
// 1309   } while (seq);
// 1310   ns[i] = '~';
// 1311 
// 1312   /* Append the number */
// 1313   for (j = 0; j < i && dst[j] != ' '; j++) {
// 1314     if (IsDBCS1(dst[j])) {
// 1315       if (j == i - 1) break;
// 1316       j++;
// 1317     }
// 1318   }
// 1319   do {
// 1320     dst[j++] = (i < 8) ? ns[i++] : ' ';
// 1321   } while (j < 8);
// 1322 }
// 1323 #endif
// 1324 
// 1325 
// 1326 
// 1327 
// 1328 /*-----------------------------------------------------------------------*/
// 1329 /* Calculate sum of an SFN                                               */
// 1330 /*-----------------------------------------------------------------------*/
// 1331 #if _USE_LFN
// 1332 static
// 1333 BYTE sum_sfn (
// 1334   const BYTE *dir   /* Ptr to directory entry */
// 1335 )
// 1336 {
// 1337   BYTE sum = 0;
// 1338   UINT n = 11;
// 1339 
// 1340   do sum = (sum >> 1) + (sum << 7) + *dir++; while (--n);
// 1341   return sum;
// 1342 }
// 1343 #endif
// 1344 
// 1345 
// 1346 
// 1347 
// 1348 /*-----------------------------------------------------------------------*/
// 1349 /* Directory handling - Find an object in the directory                  */
// 1350 /*-----------------------------------------------------------------------*/
// 1351 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1352 static
// 1353 FRESULT dir_find (
// 1354   DIR *dj     /* Pointer to the directory object linked to the file name */
// 1355 )
// 1356 {
dir_find:
        PUSH     {R4-R6,LR}
        MOV      R4,R0
// 1357   FRESULT res;
// 1358   BYTE c, *dir;
// 1359 #if _USE_LFN
// 1360   BYTE a, ord, sum;
// 1361 #endif
// 1362 
// 1363   res = dir_sdi(dj, 0);     /* Rewind directory object */
        MOVS     R1,#+0
        BL       dir_sdi
// 1364   if (res != FR_OK) return res;
        CBNZ.N   R0,??dir_find_0
// 1365 
// 1366 #if _USE_LFN
// 1367   ord = sum = 0xFF;
// 1368 #endif
// 1369   do {
// 1370     res = move_window(dj->fs, dj->sect);
??dir_find_1:
        BL       ?Subroutine12
// 1371     if (res != FR_OK) break;
??CrossCallReturnLabel_49:
        CBNZ.N   R0,??dir_find_0
// 1372     dir = dj->dir;          /* Ptr to the directory entry of current index */
        LDR      R1,[R4, #+20]
// 1373     c = dir[DIR_Name];
// 1374     if (c == 0) { res = FR_NO_FILE; break; }  /* Reached to end of table */
        LDRB     R2,[R1, #+0]
        CBNZ.N   R2,??dir_find_2
        MOVS     R0,#+4
        POP      {R4-R6,PC}
// 1375 #if _USE_LFN  /* LFN configuration */
// 1376     a = dir[DIR_Attr] & AM_MASK;
// 1377     if (c == DDE || ((a & AM_VOL) && a != AM_LFN)) {  /* An entry without valid data */
// 1378       ord = 0xFF;
// 1379     } else {
// 1380       if (a == AM_LFN) {      /* An LFN entry is found */
// 1381         if (dj->lfn) {
// 1382           if (c & LLE) {    /* Is it start of LFN sequence? */
// 1383             sum = dir[LDIR_Chksum];
// 1384             c &= ~LLE; ord = c; /* LFN start order */
// 1385             dj->lfn_idx = dj->index;
// 1386           }
// 1387           /* Check validity of the LFN entry and compare it with given name */
// 1388           ord = (c == ord && sum == dir[LDIR_Chksum] && cmp_lfn(dj->lfn, dir)) ? ord - 1 : 0xFF;
// 1389         }
// 1390       } else {          /* An SFN entry is found */
// 1391         if (!ord && sum == sum_sfn(dir)) break; /* LFN matched? */
// 1392         ord = 0xFF; dj->lfn_idx = 0xFFFF; /* Reset LFN sequence */
// 1393         if (!(dj->fn[NS] & NS_LOSS) && !mem_cmp(dir, dj->fn, 11)) break;  /* SFN matched? */
// 1394       }
// 1395     }
// 1396 #else   /* Non LFN configuration */
// 1397     if (!(dir[DIR_Attr] & AM_VOL) && !mem_cmp(dir, dj->fn, 11)) /* Is it a valid entry? */
??dir_find_2:
        LDRB     R2,[R1, #+11]
        LSLS     R2,R2,#+28
        BMI.N    ??dir_find_3
        MOVS     R2,#+11
        LDR      R3,[R4, #+24]
        MOVS     R5,#+0
??dir_find_4:
        MOV      R6,R2
        SUBS     R2,R6,#+1
        CBZ.N    R6,??dir_find_5
        LDRB     R5,[R1], #+1
        LDRB     R6,[R3], #+1
        SUBS     R5,R5,R6
        BEQ.N    ??dir_find_4
??dir_find_5:
        CBZ.N    R5,??dir_find_0
// 1398       break;
// 1399 #endif
// 1400     res = dir_next(dj, 0);    /* Next entry */
??dir_find_3:
        BL       ?Subroutine7
// 1401   } while (res == FR_OK);
??CrossCallReturnLabel_24:
        CMP      R0,#+0
        BEQ.N    ??dir_find_1
// 1402 
// 1403   return res;
??dir_find_0:
        POP      {R4-R6,PC}       ;; return
// 1404 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine12:
        LDR      R1,[R4, #+16]
??Subroutine12_0:
        LDR      R0,[R4, #+0]
        B.N      move_window
// 1405 
// 1406 
// 1407 
// 1408 
// 1409 /*-----------------------------------------------------------------------*/
// 1410 /* Read an object from the directory                                     */
// 1411 /*-----------------------------------------------------------------------*/
// 1412 #if _FS_MINIMIZE <= 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1413 static
// 1414 FRESULT dir_read (
// 1415   DIR *dj     /* Pointer to the directory object that pointing the entry to be read */
// 1416 )
// 1417 {
dir_read:
        PUSH     {R4,LR}
        MOV      R4,R0
// 1418   FRESULT res;
// 1419   BYTE c, *dir;
// 1420 #if _USE_LFN
// 1421   BYTE a, ord = 0xFF, sum = 0xFF;
// 1422 #endif
// 1423 
// 1424   res = FR_NO_FILE;
        MOVS     R0,#+4
// 1425   while (dj->sect) {
??dir_read_0:
        LDR      R1,[R4, #+16]
        CBZ.N    R1,??dir_read_1
// 1426     res = move_window(dj->fs, dj->sect);
        BL       ??Subroutine12_0
// 1427     if (res != FR_OK) break;
??CrossCallReturnLabel_43:
        CMP      R0,#+0
        BNE.N    ??dir_read_1
// 1428     dir = dj->dir;          /* Ptr to the directory entry of current index */
        LDR      R1,[R4, #+20]
// 1429     c = dir[DIR_Name];
        LDRB     R2,[R1, #+0]
// 1430     if (c == 0) { res = FR_NO_FILE; break; }  /* Reached to end of table */
        CBNZ.N   R2,??dir_read_2
        MOVS     R0,#+4
        B.N      ??dir_read_3
// 1431 #if _USE_LFN  /* LFN configuration */
// 1432     a = dir[DIR_Attr] & AM_MASK;
// 1433     if (c == DDE || (!_FS_RPATH && c == '.') || ((a & AM_VOL) && a != AM_LFN)) {  /* An entry without valid data */
// 1434       ord = 0xFF;
// 1435     } else {
// 1436       if (a == AM_LFN) {      /* An LFN entry is found */
// 1437         if (c & LLE) {      /* Is it start of LFN sequence? */
// 1438           sum = dir[LDIR_Chksum];
// 1439           c &= ~LLE; ord = c;
// 1440           dj->lfn_idx = dj->index;
// 1441         }
// 1442         /* Check LFN validity and capture it */
// 1443         ord = (c == ord && sum == dir[LDIR_Chksum] && pick_lfn(dj->lfn, dir)) ? ord - 1 : 0xFF;
// 1444       } else {          /* An SFN entry is found */
// 1445         if (ord || sum != sum_sfn(dir)) /* Is there a valid LFN? */
// 1446           dj->lfn_idx = 0xFFFF;   /* It has no LFN. */
// 1447         break;
// 1448       }
// 1449     }
// 1450 #else   /* Non LFN configuration */
// 1451     if (c != DDE && (_FS_RPATH || c != '.') && !(dir[DIR_Attr] & AM_VOL)) /* Is it a valid entry? */
??dir_read_2:
        CMP      R2,#+229
        BEQ.N    ??dir_read_4
        LDRB     R1,[R1, #+11]
        LSLS     R1,R1,#+28
        BPL.N    ??dir_read_5
// 1452       break;
// 1453 #endif
// 1454     res = dir_next(dj, 0);        /* Next entry */
??dir_read_4:
        BL       ?Subroutine7
// 1455     if (res != FR_OK) break;
??CrossCallReturnLabel_23:
        CMP      R0,#+0
        BEQ.N    ??dir_read_0
// 1456   }
// 1457 
// 1458   if (res != FR_OK) dj->sect = 0;
??dir_read_1:
        CBZ.N    R0,??dir_read_5
??dir_read_3:
        MOVS     R1,#+0
        STR      R1,[R4, #+16]
// 1459 
// 1460   return res;
??dir_read_5:
        POP      {R4,PC}          ;; return
// 1461 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine7:
        MOVS     R1,#+0
        MOV      R0,R4
        B.N      dir_next
// 1462 #endif
// 1463 
// 1464 
// 1465 
// 1466 /*-----------------------------------------------------------------------*/
// 1467 /* Register an object to the directory                                   */
// 1468 /*-----------------------------------------------------------------------*/
// 1469 #if !_FS_READONLY

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1470 static
// 1471 FRESULT dir_register (  /* FR_OK:Successful, FR_DENIED:No free entry or too many SFN collision, FR_DISK_ERR:Disk error */
// 1472   DIR *dj       /* Target directory with object name to be created */
// 1473 )
// 1474 {
dir_register:
        PUSH     {R4-R6,LR}
        MOV      R4,R0
// 1475   FRESULT res;
// 1476   BYTE c, *dir;
// 1477 #if _USE_LFN  /* LFN configuration */
// 1478   WORD n, ne, is;
// 1479   BYTE sn[12], *fn, sum;
// 1480   WCHAR *lfn;
// 1481 
// 1482 
// 1483   fn = dj->fn; lfn = dj->lfn;
// 1484   mem_cpy(sn, fn, 12);
// 1485 
// 1486   if (_FS_RPATH && (sn[NS] & NS_DOT))   /* Cannot create dot entry */
// 1487     return FR_INVALID_NAME;
// 1488 
// 1489   if (sn[NS] & NS_LOSS) {     /* When LFN is out of 8.3 format, generate a numbered name */
// 1490     fn[NS] = 0; dj->lfn = 0;      /* Find only SFN */
// 1491     for (n = 1; n < 100; n++) {
// 1492       gen_numname(fn, sn, lfn, n);  /* Generate a numbered name */
// 1493       res = dir_find(dj);       /* Check if the name collides with existing SFN */
// 1494       if (res != FR_OK) break;
// 1495     }
// 1496     if (n == 100) return FR_DENIED;   /* Abort if too many collisions */
// 1497     if (res != FR_NO_FILE) return res;  /* Abort if the result is other than 'not collided' */
// 1498     fn[NS] = sn[NS]; dj->lfn = lfn;
// 1499   }
// 1500 
// 1501   if (sn[NS] & NS_LFN) {      /* When LFN is to be created, reserve an SFN + LFN entries. */
// 1502     for (ne = 0; lfn[ne]; ne++) ;
// 1503     ne = (ne + 25) / 13;
// 1504   } else {            /* Otherwise reserve only an SFN entry. */
// 1505     ne = 1;
// 1506   }
// 1507 
// 1508   /* Reserve contiguous entries */
// 1509   res = dir_sdi(dj, 0);
// 1510   if (res != FR_OK) return res;
// 1511   n = is = 0;
// 1512   do {
// 1513     res = move_window(dj->fs, dj->sect);
// 1514     if (res != FR_OK) break;
// 1515     c = *dj->dir;       /* Check the entry status */
// 1516     if (c == DDE || c == 0) { /* Is it a blank entry? */
// 1517       if (n == 0) is = dj->index; /* First index of the contiguous entry */
// 1518       if (++n == ne) break; /* A contiguous entry that required count is found */
// 1519     } else {
// 1520       n = 0;          /* Not a blank entry. Restart to search */
// 1521     }
// 1522     res = dir_next(dj, 1);    /* Next entry with table stretch */
// 1523   } while (res == FR_OK);
// 1524 
// 1525   if (res == FR_OK && ne > 1) { /* Initialize LFN entry if needed */
// 1526     res = dir_sdi(dj, is);
// 1527     if (res == FR_OK) {
// 1528       sum = sum_sfn(dj->fn);  /* Sum of the SFN tied to the LFN */
// 1529       ne--;
// 1530       do {          /* Store LFN entries in bottom first */
// 1531         res = move_window(dj->fs, dj->sect);
// 1532         if (res != FR_OK) break;
// 1533         fit_lfn(dj->lfn, dj->dir, (BYTE)ne, sum);
// 1534         dj->fs->wflag = 1;
// 1535         res = dir_next(dj, 0);  /* Next entry */
// 1536       } while (res == FR_OK && --ne);
// 1537     }
// 1538   }
// 1539 
// 1540 #else /* Non LFN configuration */
// 1541   res = dir_sdi(dj, 0);
        MOVS     R1,#+0
        BL       dir_sdi
        MOVS     R5,R0
// 1542   if (res == FR_OK) {
        BNE.N    ??dir_register_0
// 1543     do {  /* Find a blank entry for the SFN */
// 1544       res = move_window(dj->fs, dj->sect);
??dir_register_1:
        BL       ?Subroutine12
??CrossCallReturnLabel_48:
        MOVS     R5,R0
// 1545       if (res != FR_OK) break;
        BNE.N    ??dir_register_0
// 1546       c = *dj->dir;
        LDR      R0,[R4, #+20]
        LDRB     R0,[R0, #+0]
// 1547       if (c == DDE || c == 0) break;  /* Is it a blank entry? */
        CMP      R0,#+229
        IT       NE 
        CMPNE    R0,#+0
        BEQ.N    ??dir_register_2
// 1548       res = dir_next(dj, 1);      /* Next entry with table stretch */
        MOVS     R1,#+1
        MOV      R0,R4
        BL       dir_next
        MOVS     R5,R0
// 1549     } while (res == FR_OK);
        BEQ.N    ??dir_register_1
// 1550   }
// 1551 #endif
// 1552 
// 1553   if (res == FR_OK) {   /* Initialize the SFN entry */
??dir_register_0:
        CBNZ.N   R5,??dir_register_3
// 1554     res = move_window(dj->fs, dj->sect);
??dir_register_2:
        BL       ?Subroutine12
??CrossCallReturnLabel_47:
        MOVS     R5,R0
// 1555     if (res == FR_OK) {
        BNE.N    ??dir_register_3
// 1556       dir = dj->dir;
        LDR      R6,[R4, #+20]
// 1557       mem_set(dir, 0, SZ_DIR);  /* Clean the entry */
        MOVS     R2,#+32
        BL       ??Subroutine8_0
// 1558       mem_cpy(dir, dj->fn, 11); /* Put SFN */
??CrossCallReturnLabel_25:
        MOVS     R2,#+11
        LDR      R1,[R4, #+24]
        MOV      R0,R6
        BL       mem_cpy
// 1559 #if _USE_LFN
// 1560       dir[DIR_NTres] = *(dj->fn+NS) & (NS_BODY | NS_EXT); /* Put NT flag */
// 1561 #endif
// 1562       dj->fs->wflag = 1;
        LDR      R0,[R4, #+0]
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
// 1563     }
// 1564   }
// 1565 
// 1566   return res;
??dir_register_3:
        MOV      R0,R5
        POP      {R4-R6,PC}       ;; return
// 1567 }
// 1568 #endif /* !_FS_READONLY */
// 1569 
// 1570 
// 1571 
// 1572 
// 1573 /*-----------------------------------------------------------------------*/
// 1574 /* Remove an object from the directory                                   */
// 1575 /*-----------------------------------------------------------------------*/
// 1576 #if !_FS_READONLY && !_FS_MINIMIZE

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1577 static
// 1578 FRESULT dir_remove (  /* FR_OK: Successful, FR_DISK_ERR: A disk error */
// 1579   DIR *dj       /* Directory object pointing the entry to be removed */
// 1580 )
// 1581 {
dir_remove:
        PUSH     {R4,LR}
        MOV      R4,R0
// 1582   FRESULT res;
// 1583 #if _USE_LFN  /* LFN configuration */
// 1584   WORD i;
// 1585 
// 1586   i = dj->index;  /* SFN index */
// 1587   res = dir_sdi(dj, (WORD)((dj->lfn_idx == 0xFFFF) ? i : dj->lfn_idx)); /* Goto the SFN or top of the LFN entries */
// 1588   if (res == FR_OK) {
// 1589     do {
// 1590       res = move_window(dj->fs, dj->sect);
// 1591       if (res != FR_OK) break;
// 1592       *dj->dir = DDE;     /* Mark the entry "deleted" */
// 1593       dj->fs->wflag = 1;
// 1594       if (dj->index >= i) break;  /* When reached SFN, all entries of the object has been deleted. */
// 1595       res = dir_next(dj, 0);    /* Next entry */
// 1596     } while (res == FR_OK);
// 1597     if (res == FR_NO_FILE) res = FR_INT_ERR;
// 1598   }
// 1599 
// 1600 #else     /* Non LFN configuration */
// 1601   res = dir_sdi(dj, dj->index);
        LDRH     R1,[R4, #+6]
        BL       dir_sdi
// 1602   if (res == FR_OK) {
        CBNZ.N   R0,??dir_remove_0
// 1603     res = move_window(dj->fs, dj->sect);
        BL       ?Subroutine12
// 1604     if (res == FR_OK) {
??CrossCallReturnLabel_46:
        CBNZ.N   R0,??dir_remove_0
// 1605       *dj->dir = DDE;     /* Mark the entry "deleted" */
        LDR      R1,[R4, #+20]
        MOVS     R2,#+229
        STRB     R2,[R1, #+0]
// 1606       dj->fs->wflag = 1;
        LDR      R1,[R4, #+0]
        MOVS     R2,#+1
        STRB     R2,[R1, #+4]
// 1607     }
// 1608   }
// 1609 #endif
// 1610 
// 1611   return res;
??dir_remove_0:
        POP      {R4,PC}          ;; return
// 1612 }
// 1613 #endif /* !_FS_READONLY */
// 1614 
// 1615 
// 1616 
// 1617 
// 1618 /*-----------------------------------------------------------------------*/
// 1619 /* Pick a segment and create the object name in directory form           */
// 1620 /*-----------------------------------------------------------------------*/
// 1621 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1622 static
// 1623 FRESULT create_name (
// 1624   DIR *dj,      /* Pointer to the directory object */
// 1625   const TCHAR **path  /* Pointer to pointer to the segment in the path string */
// 1626 )
// 1627 {
create_name:
        PUSH     {R3-R9,LR}
        MOV      R8,R1
// 1628 #ifdef _EXCVT
// 1629   static const BYTE excvt[] = _EXCVT; /* Upper conversion table for extended chars */
// 1630 #endif
// 1631 
// 1632 #if _USE_LFN  /* LFN configuration */
// 1633   BYTE b, cf;
// 1634   WCHAR w, *lfn;
// 1635   UINT i, ni, si, di;
// 1636   const TCHAR *p;
// 1637 
// 1638   /* Create LFN in Unicode */
// 1639   for (p = *path; *p == '/' || *p == '\\'; p++) ; /* Strip duplicated separator */
// 1640   lfn = dj->lfn;
// 1641   si = di = 0;
// 1642   for (;;) {
// 1643     w = p[si++];          /* Get a character */
// 1644     if (w < ' ' || w == '/' || w == '\\') break;  /* Break on end of segment */
// 1645     if (di >= _MAX_LFN)       /* Reject too long name */
// 1646       return FR_INVALID_NAME;
// 1647 #if !_LFN_UNICODE
// 1648     w &= 0xFF;
// 1649     if (IsDBCS1(w)) {       /* Check if it is a DBC 1st byte (always false on SBCS cfg) */
// 1650       b = (BYTE)p[si++];      /* Get 2nd byte */
// 1651       if (!IsDBCS2(b))
// 1652         return FR_INVALID_NAME; /* Reject invalid sequence */
// 1653       w = (w << 8) + b;     /* Create a DBC */
// 1654     }
// 1655     w = ff_convert(w, 1);     /* Convert ANSI/OEM to Unicode */
// 1656     if (!w) return FR_INVALID_NAME; /* Reject invalid code */
// 1657 #endif
// 1658     if (w < 0x80 && chk_chr("\"*:<>\?|\x7F", w)) /* Reject illegal chars for LFN */
// 1659       return FR_INVALID_NAME;
// 1660     lfn[di++] = w;          /* Store the Unicode char */
// 1661   }
// 1662   *path = &p[si];           /* Return pointer to the next segment */
// 1663   cf = (w < ' ') ? NS_LAST : 0;   /* Set last segment flag if end of path */
// 1664 #if _FS_RPATH
// 1665   if ((di == 1 && lfn[di-1] == '.') || /* Is this a dot entry? */
// 1666     (di == 2 && lfn[di-1] == '.' && lfn[di-2] == '.')) {
// 1667     lfn[di] = 0;
// 1668     for (i = 0; i < 11; i++)
// 1669       dj->fn[i] = (i < di) ? '.' : ' ';
// 1670     dj->fn[i] = cf | NS_DOT;    /* This is a dot entry */
// 1671     return FR_OK;
// 1672   }
// 1673 #endif
// 1674   while (di) {            /* Strip trailing spaces and dots */
// 1675     w = lfn[di-1];
// 1676     if (w != ' ' && w != '.') break;
// 1677     di--;
// 1678   }
// 1679   if (!di) return FR_INVALID_NAME;  /* Reject nul string */
// 1680 
// 1681   lfn[di] = 0;            /* LFN is created */
// 1682 
// 1683   /* Create SFN in directory form */
// 1684   mem_set(dj->fn, ' ', 11);
// 1685   for (si = 0; lfn[si] == ' ' || lfn[si] == '.'; si++) ;  /* Strip leading spaces and dots */
// 1686   if (si) cf |= NS_LOSS | NS_LFN;
// 1687   while (di && lfn[di - 1] != '.') di--;  /* Find extension (di<=si: no extension) */
// 1688 
// 1689   b = i = 0; ni = 8;
// 1690   for (;;) {
// 1691     w = lfn[si++];          /* Get an LFN char */
// 1692     if (!w) break;          /* Break on end of the LFN */
// 1693     if (w == ' ' || (w == '.' && si != di)) { /* Remove spaces and dots */
// 1694       cf |= NS_LOSS | NS_LFN; continue;
// 1695     }
// 1696 
// 1697     if (i >= ni || si == di) {    /* Extension or end of SFN */
// 1698       if (ni == 11) {       /* Long extension */
// 1699         cf |= NS_LOSS | NS_LFN; break;
// 1700       }
// 1701       if (si != di) cf |= NS_LOSS | NS_LFN; /* Out of 8.3 format */
// 1702       if (si > di) break;     /* No extension */
// 1703       si = di; i = 8; ni = 11;  /* Enter extension section */
// 1704       b <<= 2; continue;
// 1705     }
// 1706 
// 1707     if (w >= 0x80) {        /* Non ASCII char */
// 1708 #ifdef _EXCVT
// 1709       w = ff_convert(w, 0);   /* Unicode -> OEM code */
// 1710       if (w) w = excvt[w - 0x80]; /* Convert extended char to upper (SBCS) */
// 1711 #else
// 1712       w = ff_convert(ff_wtoupper(w), 0);  /* Upper converted Unicode -> OEM code */
// 1713 #endif
// 1714       cf |= NS_LFN;       /* Force create LFN entry */
// 1715     }
// 1716 
// 1717     if (_DF1S && w >= 0x100) {    /* Double byte char (always false on SBCS cfg) */
// 1718       if (i >= ni - 1) {
// 1719         cf |= NS_LOSS | NS_LFN; i = ni; continue;
// 1720       }
// 1721       dj->fn[i++] = (BYTE)(w >> 8);
// 1722     } else {            /* Single byte char */
// 1723       if (!w || chk_chr("+,;=[]", w)) { /* Replace illegal chars for SFN */
// 1724         w = '_'; cf |= NS_LOSS | NS_LFN;/* Lossy conversion */
// 1725       } else {
// 1726         if (IsUpper(w)) {   /* ASCII large capital */
// 1727           b |= 2;
// 1728         } else {
// 1729           if (IsLower(w)) { /* ASCII small capital */
// 1730             b |= 1; w -= 0x20;
// 1731           }
// 1732         }
// 1733       }
// 1734     }
// 1735     dj->fn[i++] = (BYTE)w;
// 1736   }
// 1737 
// 1738   if (dj->fn[0] == DDE) dj->fn[0] = NDDE; /* If the first char collides with deleted mark, replace it with 0x05 */
// 1739 
// 1740   if (ni == 8) b <<= 2;
// 1741   if ((b & 0x0C) == 0x0C || (b & 0x03) == 0x03) /* Create LFN entry when there are composite capitals */
// 1742     cf |= NS_LFN;
// 1743   if (!(cf & NS_LFN)) {           /* When LFN is in 8.3 format without extended char, NT flags are created */
// 1744     if ((b & 0x03) == 0x01) cf |= NS_EXT; /* NT flag (Extension has only small capital) */
// 1745     if ((b & 0x0C) == 0x04) cf |= NS_BODY;  /* NT flag (Filename has only small capital) */
// 1746   }
// 1747 
// 1748   dj->fn[NS] = cf;  /* SFN is created */
// 1749 
// 1750   return FR_OK;
// 1751 
// 1752 
// 1753 #else /* Non-LFN configuration */
// 1754   BYTE b, c, d, *sfn;
// 1755   UINT ni, si, i;
// 1756   const signed char *p;
// 1757 
// 1758   /* Create file name in directory form */
// 1759   for (p = *path; *p == '/' || *p == '\\'; p++) ; /* Strip duplicated separator */
        LDR      R6,[R8, #+0]
        B.N      ??create_name_0
??create_name_1:
        ADDS     R6,R6,#+1
??create_name_0:
        LDRSB    R1,[R6, #+0]
        CMP      R1,#+47
        IT       NE 
        CMPNE    R1,#+92
        BEQ.N    ??create_name_1
// 1760   sfn = dj->fn;
        LDR      R4,[R0, #+24]
// 1761   mem_set(sfn, ' ', 11);
        MOVS     R2,#+11
        MOVS     R1,#+32
        MOV      R0,R4
        BL       mem_set
// 1762   si = i = b = 0; ni = 8;
        MOVS     R0,#+0
        MOVS     R1,#+0
        MOV      R2,R0
        MOVS     R3,#+8
// 1763 #if _FS_RPATH
// 1764   if (p[si] == '.') { /* Is this a dot entry? */
        LDRSB    R7,[R6, R0]
        CMP      R7,#+46
        BNE.N    ??create_name_2
        B.N      ??create_name_3
// 1765     for (;;) {
// 1766       c = (BYTE)p[si++];
// 1767       if (c != '.' || si >= 3) break;
??create_name_4:
        CMP      R2,#+3
        BCS.N    ??create_name_5
// 1768       sfn[i++] = c;
        STRB     R7,[R1, R4]
        ADDS     R1,R1,#+1
??create_name_3:
        LDRSB    R7,[R2, R6]
        UXTB     R7,R7
        ADDS     R2,R2,#+1
        CMP      R7,#+46
        BEQ.N    ??create_name_4
// 1769     }
// 1770     if (c != '/' && c != '\\' && c > ' ') return FR_INVALID_NAME;
        CMP      R7,#+47
        IT       NE 
        CMPNE    R7,#+92
        BEQ.N    ??create_name_6
        CMP      R7,#+33
        BGE.N    ??create_name_5
// 1771     *path = &p[si];                 /* Return pointer to the next segment */
??create_name_6:
        ADDS     R0,R2,R6
        STR      R0,[R8, #+0]
// 1772     sfn[NS] = (c <= ' ') ? NS_LAST | NS_DOT : NS_DOT; /* Set last segment flag if end of path */
        CMP      R7,#+33
        ITE      LT 
        MOVLT    R0,#+36
        MOVGE    R0,#+32
        STRB     R0,[R4, #+11]
// 1773     return FR_OK;
        B.N      ??create_name_7
// 1774   }
// 1775 #endif
// 1776   for (;;) {
// 1777     c = (BYTE)p[si++];
// 1778     if (c <= ' ' || c == '/' || c == '\\') break; /* Break on end of segment */
// 1779     if (c == '.' || i >= ni) {
// 1780       if (ni != 8 || c != '.') return FR_INVALID_NAME;
??create_name_8:
        CMP      R3,#+8
        BNE.N    ??create_name_5
// 1781       i = 8; ni = 11;
        MOVS     R1,#+8
        MOVS     R3,#+11
// 1782       b <<= 2; continue;
        MOV      R0,R5
// 1783     }
??create_name_2:
        LDRSB    R7,[R2, R6]
        UXTB     R7,R7
        ADDS     R2,R2,#+1
        LSLS     R5,R0,#+2
        UXTB     R5,R5
        CMP      R7,#+33
        BLT.N    ??create_name_9
        CMP      R7,#+47
        IT       NE 
        CMPNE    R7,#+92
        BNE.N    ??create_name_10
// 1784     if (c >= 0x80) {        /* Extended char? */
// 1785       b |= 3;           /* Eliminate NT flag */
// 1786 #ifdef _EXCVT
// 1787       c = excvt[c-0x80];      /* Upper conversion (SBCS) */
// 1788 #else
// 1789 #if !_DF1S  /* ASCII only cfg */
// 1790       return FR_INVALID_NAME;
// 1791 #endif
// 1792 #endif
// 1793     }
// 1794     if (IsDBCS1(c)) {       /* Check if it is a DBC 1st byte (always false on SBCS cfg) */
// 1795       d = (BYTE)p[si++];      /* Get 2nd byte */
// 1796       if (!IsDBCS2(d) || i >= ni - 1) /* Reject invalid DBC */
// 1797         return FR_INVALID_NAME;
// 1798       sfn[i++] = c;
// 1799       sfn[i++] = d;
// 1800     } else {            /* Single byte code */
// 1801       if (chk_chr("\"*+,:;<=>\?[]|\x7F", c))  /* Reject illegal chrs for SFN */
// 1802         return FR_INVALID_NAME;
// 1803       if (IsUpper(c)) {     /* ASCII large capital? */
// 1804         b |= 2;
// 1805       } else {
// 1806         if (IsLower(c)) {   /* ASCII small capital? */
// 1807           b |= 1; c -= 0x20;
// 1808         }
// 1809       }
// 1810       sfn[i++] = c;
// 1811     }
// 1812   }
// 1813   *path = &p[si];           /* Return pointer to the next segment */
??create_name_9:
        ADDS     R2,R2,R6
        STR      R2,[R8, #+0]
// 1814   c = (c <= ' ') ? NS_LAST : 0;   /* Set last segment flag if end of path */
        CMP      R7,#+33
        ITE      LT 
        MOVLT    R7,#+4
        MOVGE    R7,#+0
        B.N      ??create_name_11
??create_name_10:
        CMP      R7,#+46
        BEQ.N    ??create_name_8
        CMP      R1,R3
        BCS.N    ??create_name_5
        CMP      R7,#+128
        IT       GE 
        ORRGE    R0,R0,#0x3
        ADD      R12,R1,#+1
        SUB      R5,R7,#+129
        CMP      R5,#+31
        ITT      CS 
        SUBCS    R5,R7,#+224
        CMPCS    R5,#+29
        BCS.N    ??create_name_12
        LDRSB    R5,[R2, R6]
        UXTB     LR,R5
        ADDS     R2,R2,#+1
        SUB      R5,LR,#+64
        CMP      R5,#+63
        ITTEE    CS 
        SUBCS    R5,LR,#+128
        CMPCS    R5,#+125
        SUBCC    R5,R3,#+1
        CMPCC    R1,R5
        BCS.N    ??create_name_5
        STRB     R7,[R1, R4]
        STRB     LR,[R12, R4]
        ADD      R1,R12,#+1
        B.N      ??create_name_2
??create_name_12:
        ADR.W    R5,`?<Constant "\\"*+,:;<=>?[]|\\177">`
        B.N      ??create_name_13
??create_name_14:
        ADDS     R5,R5,#+1
??create_name_13:
        LDRB     R9,[R5, #+0]
        CMP      R9,#+0
        IT       NE 
        CMPNE    R9,R7
        BNE.N    ??create_name_14
        MOVS     LR,R9
        BNE.N    ??create_name_5
        SUB      LR,R7,#+65
        CMP      LR,#+26
        BCS.N    ??create_name_15
        ORR      R0,R0,#0x2
        UXTB     R0,R0
        B.N      ??create_name_16
??create_name_15:
        SUB      LR,R7,#+97
        CMP      LR,#+26
        BCS.N    ??create_name_16
        ORR      R0,R0,#0x1
        UXTB     R0,R0
        SUBS     R7,R7,#+32
        UXTB     R7,R7
??create_name_16:
        STRB     R7,[R1, R4]
        MOV      R1,R12
        B.N      ??create_name_2
// 1815 
// 1816   if (!i) return FR_INVALID_NAME;   /* Reject nul string */
??create_name_11:
        CBNZ.N   R1,??create_name_17
??create_name_5:
        MOVS     R0,#+6
        B.N      ??create_name_18
// 1817   if (sfn[0] == DDE) sfn[0] = NDDE; /* When first char collides with DDE, replace it with 0x05 */
??create_name_17:
        LDRB     R1,[R4, #+0]
        CMP      R1,#+229
        ITT      EQ 
        MOVEQ    R1,#+5
        STRBEQ   R1,[R4, #+0]
// 1818 
// 1819   if (ni == 8) b <<= 2;
        CMP      R3,#+8
        IT       EQ 
        MOVEQ    R0,R5
// 1820   if ((b & 0x03) == 0x01) c |= NS_EXT;  /* NT flag (Name extension has only small capital) */
        AND      R1,R0,#0x3
        CMP      R1,#+1
        IT       EQ 
        ORREQ    R7,R7,#0x10
// 1821   if ((b & 0x0C) == 0x04) c |= NS_BODY; /* NT flag (Name body has only small capital) */
        AND      R0,R0,#0xC
        CMP      R0,#+4
        IT       EQ 
        ORREQ    R7,R7,#0x8
// 1822 
// 1823   sfn[NS] = c;    /* Store NT flag, File name is created */
        STRB     R7,[R4, #+11]
// 1824 
// 1825   return FR_OK;
??create_name_7:
        MOVS     R0,#+0
??create_name_18:
        POP      {R1,R4-R9,PC}    ;; return
// 1826 #endif
// 1827 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "\\"*+,:;<=>?[]|\\177">`:
        DC8 "\"*+,:;<=>?[]|\177"
        DC8 0
// 1828 
// 1829 
// 1830 
// 1831 
// 1832 /*-----------------------------------------------------------------------*/
// 1833 /* Get file information from directory entry                             */
// 1834 /*-----------------------------------------------------------------------*/
// 1835 #if _FS_MINIMIZE <= 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1836 static
// 1837 void get_fileinfo (   /* No return code */
// 1838   DIR *dj,      /* Pointer to the directory object */
// 1839   FILINFO *fno    /* Pointer to the file information to be filled */
// 1840 )
// 1841 {
get_fileinfo:
        PUSH     {R4,LR}
// 1842   UINT i;
// 1843   BYTE nt, *dir;
// 1844   TCHAR *p, c;
// 1845 
// 1846 
// 1847   p = fno->fname;
        ADDW     R2,R1,#+9
// 1848   if (dj->sect) {
        LDR      R3,[R0, #+16]
        CBZ.N    R3,??get_fileinfo_0
// 1849     dir = dj->dir;
        LDR      R0,[R0, #+20]
// 1850     nt = dir[DIR_NTres];    /* NT flag */
// 1851     for (i = 0; i < 8; i++) { /* Copy name body */
        MOVS     R3,#+0
// 1852       c = dir[i];
??get_fileinfo_1:
        LDRSB    R4,[R3, R0]
// 1853       if (c == ' ') break;
        CMP      R4,#+32
        BEQ.N    ??get_fileinfo_2
// 1854       if (c == NDDE) c = (TCHAR)DDE;
        CMP      R4,#+5
        IT       EQ 
        MVNEQ    R4,#+26
// 1855       if (_USE_LFN && (nt & NS_BODY) && IsUpper(c)) c += 0x20;
// 1856 #if _LFN_UNICODE
// 1857       if (IsDBCS1(c) && i < 7 && IsDBCS2(dir[i+1]))
// 1858         c = (c << 8) | dir[++i];
// 1859       c = ff_convert(c, 1);
// 1860       if (!c) c = '?';
// 1861 #endif
// 1862       *p++ = c;
        STRB     R4,[R2], #+1
// 1863     }
        ADDS     R3,R3,#+1
        CMP      R3,#+8
        BCC.N    ??get_fileinfo_1
// 1864     if (dir[8] != ' ') {    /* Copy name extension */
??get_fileinfo_2:
        LDRB     R3,[R0, #+8]
        CMP      R3,#+32
        BEQ.N    ??get_fileinfo_3
// 1865       *p++ = '.';
        MOVS     R3,#+46
        STRB     R3,[R2], #+1
// 1866       for (i = 8; i < 11; i++) {
        MOVS     R3,#+8
// 1867         c = dir[i];
??get_fileinfo_4:
        LDRSB    R4,[R3, R0]
// 1868         if (c == ' ') break;
        CMP      R4,#+32
        BEQ.N    ??get_fileinfo_3
// 1869         if (_USE_LFN && (nt & NS_EXT) && IsUpper(c)) c += 0x20;
// 1870 #if _LFN_UNICODE
// 1871         if (IsDBCS1(c) && i < 10 && IsDBCS2(dir[i+1]))
// 1872           c = (c << 8) | dir[++i];
// 1873         c = ff_convert(c, 1);
// 1874         if (!c) c = '?';
// 1875 #endif
// 1876         *p++ = c;
        STRB     R4,[R2], #+1
// 1877       }
        ADDS     R3,R3,#+1
        CMP      R3,#+11
        BCC.N    ??get_fileinfo_4
// 1878     }
// 1879     fno->fattrib = dir[DIR_Attr];       /* Attribute */
??get_fileinfo_3:
        LDRB     R3,[R0, #+11]
        STRB     R3,[R1, #+8]
// 1880     fno->fsize = LD_DWORD(dir+DIR_FileSize);  /* Size */
        LDRB     R3,[R0, #+31]
        LDRB     R4,[R0, #+30]
        LSLS     R4,R4,#+16
        ORR      R3,R4,R3, LSL #+24
        LDRB     R4,[R0, #+29]
        ORR      R3,R3,R4, LSL #+8
        LDRB     R4,[R0, #+28]
        ORRS     R3,R4,R3
        STR      R3,[R1, #+0]
// 1881     fno->fdate = LD_WORD(dir+DIR_WrtDate);    /* Date */
        LDRB     R3,[R0, #+25]
        LDRB     R4,[R0, #+24]
        ORR      R3,R4,R3, LSL #+8
        STRH     R3,[R1, #+4]
// 1882     fno->ftime = LD_WORD(dir+DIR_WrtTime);    /* Time */
        LDRB     R3,[R0, #+23]
        LDRB     R0,[R0, #+22]
        ORR      R0,R0,R3, LSL #+8
        STRH     R0,[R1, #+6]
// 1883   }
// 1884   *p = 0;   /* Terminate SFN str by a \0 */
??get_fileinfo_0:
        MOVS     R0,#+0
        STRB     R0,[R2, #+0]
// 1885 
// 1886 #if _USE_LFN
// 1887   if (fno->lfname && fno->lfsize) {
// 1888     TCHAR *tp = fno->lfname;
// 1889     WCHAR w, *lfn;
// 1890 
// 1891     i = 0;
// 1892     if (dj->sect && dj->lfn_idx != 0xFFFF) {/* Get LFN if available */
// 1893       lfn = dj->lfn;
// 1894       while ((w = *lfn++) != 0) {     /* Get an LFN char */
// 1895 #if !_LFN_UNICODE
// 1896         w = ff_convert(w, 0);     /* Unicode -> OEM conversion */
// 1897         if (!w) { i = 0; break; }   /* Could not convert, no LFN */
// 1898         if (_DF1S && w >= 0x100)    /* Put 1st byte if it is a DBC (always false on SBCS cfg) */
// 1899           tp[i++] = (TCHAR)(w >> 8);
// 1900 #endif
// 1901         if (i >= fno->lfsize - 1) { i = 0; break; } /* Buffer overflow, no LFN */
// 1902         tp[i++] = (TCHAR)w;
// 1903       }
// 1904     }
// 1905     tp[i] = 0;  /* Terminate the LFN str by a \0 */
// 1906   }
// 1907 #endif
// 1908 }
        POP      {R4,PC}          ;; return
// 1909 #endif /* _FS_MINIMIZE <= 1 */
// 1910 
// 1911 
// 1912 
// 1913 
// 1914 /*-----------------------------------------------------------------------*/
// 1915 /* Follow a file path                                                    */
// 1916 /*-----------------------------------------------------------------------*/
// 1917 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1918 static
// 1919 FRESULT follow_path ( /* FR_OK(0): successful, !=0: error code */
// 1920   DIR *dj,      /* Directory object to return last directory and found object */
// 1921   const TCHAR *path /* Full-path string to find a file or directory */
// 1922 )
// 1923 {
follow_path:
        PUSH     {R0,R1,R4,LR}
        MOV      R4,R0
// 1924   FRESULT res;
// 1925   BYTE *dir, ns;
// 1926 
// 1927 
// 1928 #if _FS_RPATH
// 1929   if (*path == '/' || *path == '\\') { /* There is a heading separator */
        LDRSB    R0,[R1, #+0]
        CMP      R0,#+47
        IT       NE 
        CMPNE    R0,#+92
        BNE.N    ??follow_path_0
// 1930     path++; dj->sclust = 0;   /* Strip it and start from the root dir */
        ADDS     R0,R1,#+1
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        B.N      ??follow_path_1
// 1931   } else {              /* No heading separator */
// 1932     dj->sclust = dj->fs->cdir;  /* Start from the current dir */
??follow_path_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
??follow_path_1:
        STR      R0,[R4, #+8]
// 1933   }
// 1934 #else
// 1935   if (*path == '/' || *path == '\\')  /* Strip heading separator if exist */
// 1936     path++;
// 1937   dj->sclust = 0;           /* Start from the root dir */
// 1938 #endif
// 1939 
// 1940   if ((UINT)*path < ' ') {      /* Nul path means the start directory itself */
        LDR      R0,[SP, #+4]
        LDRSB    R0,[R0, #+0]
        UXTB     R0,R0
        CMP      R0,#+32
        BCS.N    ??CrossCallReturnLabel_64
// 1941     res = dir_sdi(dj, 0);
        BL       ?Subroutine9
// 1942     dj->dir = 0;
??CrossCallReturnLabel_30:
        MOVS     R1,#+0
        STR      R1,[R4, #+20]
        POP      {R1,R2,R4,PC}
// 1943 
// 1944   } else {              /* Follow path */
// 1945     for (;;) {
// 1946       res = create_name(dj, &path); /* Get a segment */
// 1947       if (res != FR_OK) break;
// 1948       res = dir_find(dj);       /* Find it */
// 1949       ns = *(dj->fn+NS);
// 1950       if (res != FR_OK) {       /* Failed to find the object */
// 1951         if (res != FR_NO_FILE) break; /* Abort if any hard error occured */
// 1952         /* Object not found */
// 1953         if (_FS_RPATH && (ns & NS_DOT)) { /* If dot entry is not exit */
// 1954           dj->sclust = 0; dj->dir = 0;  /* It is the root dir */
// 1955           res = FR_OK;
// 1956           if (!(ns & NS_LAST)) continue;
// 1957         } else {              /* Could not find the object */
// 1958           if (!(ns & NS_LAST)) res = FR_NO_PATH;
// 1959         }
// 1960         break;
// 1961       }
// 1962       if (ns & NS_LAST) break;      /* Last segment match. Function completed. */
// 1963       dir = dj->dir;            /* There is next segment. Follow the sub directory */
// 1964       if (!(dir[DIR_Attr] & AM_DIR)) {  /* Cannot follow because it is a file */
// 1965         res = FR_NO_PATH; break;
// 1966       }
// 1967       dj->sclust = LD_CLUST(dir);
??follow_path_2:
        BL       ?Subroutine19
??CrossCallReturnLabel_64:
        ADD      R1,SP,#+4
        MOV      R0,R4
        BL       create_name
        CBNZ.N   R0,??follow_path_3
        MOV      R0,R4
        BL       dir_find
        LDR      R1,[R4, #+24]
        LDRB     R1,[R1, #+11]
        AND      R2,R1,#0x4
        CBZ.N    R0,??follow_path_4
        CMP      R0,#+4
        BNE.N    ??follow_path_3
        LSLS     R1,R1,#+26
        BPL.N    ??follow_path_5
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
        STR      R0,[R4, #+20]
        CMP      R2,#+0
        BEQ.N    ??CrossCallReturnLabel_64
        POP      {R1,R2,R4,PC}
??follow_path_5:
        CBNZ.N   R2,??follow_path_3
        B.N      ??follow_path_6
??follow_path_4:
        CBNZ.N   R2,??follow_path_3
        LDR      R0,[R4, #+20]
        LDRB     R1,[R0, #+11]
        LSLS     R1,R1,#+27
        BMI.N    ??follow_path_2
??follow_path_6:
        MOVS     R0,#+5
// 1968     }
// 1969   }
// 1970 
// 1971   return res;
??follow_path_3:
        POP      {R1,R2,R4,PC}    ;; return
// 1972 }
// 1973 
// 1974 
// 1975 
// 1976 
// 1977 /*-----------------------------------------------------------------------*/
// 1978 /* Load a sector and check if it is an FAT Volume Boot Record            */
// 1979 /*-----------------------------------------------------------------------*/
// 1980 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1981 static
// 1982 BYTE check_fs ( /* 0:FAT-VBR, 1:Valid BR but not FAT, 2:Not a BR, 3:Disk error */
// 1983   FATFS *fs,  /* File system object */
// 1984   DWORD sect  /* Sector# (lba) to check if it is an FAT boot record or not */
// 1985 )
// 1986 {
check_fs:
        PUSH     {R4,LR}
        MOV      R4,R0
// 1987   if (disk_read(fs->drv, fs->win, sect, 1) != RES_OK) /* Load boot record */
        MOVS     R3,#+1
        MOV      R2,R1
        BL       ?Subroutine4
??CrossCallReturnLabel_9:
        CBZ.N    R0,??check_fs_0
// 1988     return 3;
        MOVS     R0,#+3
        POP      {R4,PC}
// 1989   if (LD_WORD(&fs->win[BS_55AA]) != 0xAA55)   /* Check record signature (always placed at offset 510 even if the sector size is >512) */
??check_fs_0:
        LDRB     R0,[R4, #+563]
        LDRB     R1,[R4, #+562]
        ORR      R0,R1,R0, LSL #+8
        MOVW     R1,#+43605
        CMP      R0,R1
        BEQ.N    ??check_fs_1
// 1990     return 2;
        MOVS     R0,#+2
        POP      {R4,PC}
// 1991 
// 1992   if ((LD_DWORD(&fs->win[BS_FilSysType]) & 0xFFFFFF) == 0x544146) /* Check "FAT" string */
??check_fs_1:
        ADDW     R1,R4,#+106
        LDR.W    R0,??DataTable10  ;; 0x544146
        LDRB     R2,[R1, #+2]
        LDRB     R3,[R1, #+1]
        LSLS     R3,R3,#+8
        ORR      R2,R3,R2, LSL #+16
        LDRB     R3,[R4, #+106]
        ORRS     R2,R3,R2
        CMP      R2,R0
        BEQ.N    ??check_fs_2
// 1993     return 0;
// 1994   if ((LD_DWORD(&fs->win[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
        LDRB     R2,[R1, #+30]
        LDRB     R3,[R1, #+29]
        LSLS     R3,R3,#+8
        ORR      R2,R3,R2, LSL #+16
        LDRB     R1,[R1, #+28]
        ORRS     R1,R1,R2
        CMP      R1,R0
        BNE.N    ??check_fs_3
// 1995     return 0;
??check_fs_2:
        MOVS     R0,#+0
        POP      {R4,PC}
// 1996 
// 1997   return 1;
??check_fs_3:
        MOVS     R0,#+1
        POP      {R4,PC}          ;; return
// 1998 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine4:
        ADD      R1,R4,#+52
        LDRB     R0,[R4, #+1]
        B.W      disk_read
// 1999 
// 2000 
// 2001 
// 2002 
// 2003 /*-----------------------------------------------------------------------*/
// 2004 /* Check if the file system object is valid or not                       */
// 2005 /*-----------------------------------------------------------------------*/
// 2006 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2007 static
// 2008 FRESULT chk_mounted ( /* FR_OK(0): successful, !=0: any error occurred */
// 2009   const TCHAR **path, /* Pointer to pointer to the path name (drive number) */
// 2010   FATFS **rfs,    /* Pointer to pointer to the found file system object */
// 2011   BYTE chk_wp     /* !=0: Check media write protection for write access */
// 2012 )
// 2013 {
chk_mounted:
        PUSH     {R3-R7,LR}
        MOV      R6,R2
// 2014   BYTE fmt, b, pi, *tbl;
// 2015   UINT vol;
// 2016   DSTATUS stat;
// 2017   DWORD bsect, fasize, tsect, sysect, nclst, szbfat;
// 2018   WORD nrsv;
// 2019   const TCHAR *p = *path;
        LDR      R2,[R0, #+0]
// 2020   FATFS *fs;
// 2021 
// 2022   /* Get logical drive number from the path name */
// 2023   vol = p[0] - '0';         /* Is there a drive number? */
        LDRSB    R3,[R2, #+0]
        SUBS     R3,R3,#+48
// 2024   if (vol <= 9 && p[1] == ':') {    /* Found a drive number, get and strip it */
        LDR.W    R4,??DataTable10_1
        CMP      R3,#+10
        BCS.N    ??chk_mounted_0
        LDRSB    R5,[R2, #+1]
        CMP      R5,#+58
        BNE.N    ??chk_mounted_0
// 2025     p += 2; *path = p;        /* Return pointer to the path name */
        ADDS     R2,R2,#+2
        STR      R2,[R0, #+0]
        B.N      ??chk_mounted_1
// 2026   } else {              /* No drive number is given */
// 2027 #if _FS_RPATH
// 2028     vol = CurrVol;          /* Use current drive */
??chk_mounted_0:
        LDRB     R3,[R4, #+0]
// 2029 #else
// 2030     vol = 0;            /* Use drive 0 */
// 2031 #endif
// 2032   }
// 2033 
// 2034   /* Check if the file system object is valid or not */
// 2035   if (vol >= _VOLUMES)        /* Is the drive number valid? */
??chk_mounted_1:
        CBZ.N    R3,??chk_mounted_2
// 2036     return FR_INVALID_DRIVE;
        MOVS     R0,#+11
        POP      {R1,R4-R7,PC}
// 2037   *rfs = fs = FatFs[vol];       /* Return pointer to the corresponding file system object */
??chk_mounted_2:
        LDR      R5,[R4, #+4]
        STR      R5,[R1, #+0]
// 2038   if (!fs) return FR_NOT_ENABLED;   /* Is the file system object available? */
        CBNZ.N   R5,??chk_mounted_3
        MOVS     R0,#+12
        POP      {R1,R4-R7,PC}
// 2039 
// 2040   ENTER_FF(fs);           /* Lock file system */
// 2041 
// 2042   if (fs->fs_type) {          /* If the logical drive has been mounted */
??chk_mounted_3:
        LDRB     R0,[R5, #+0]
        CBZ.N    R0,??chk_mounted_4
// 2043     stat = disk_status(fs->drv);
        LDRB     R0,[R5, #+1]
        BL       disk_status
// 2044     if (!(stat & STA_NOINIT)) {   /* and the physical drive is kept initialized (has not been changed), */
        LSLS     R1,R0,#+31
        BMI.N    ??chk_mounted_4
// 2045       if (!_FS_READONLY && chk_wp && (stat & STA_PROTECT))  /* Check write protection if needed */
        CBZ.N    R6,??chk_mounted_5
        LSLS     R0,R0,#+29
        BMI.N    ??chk_mounted_6
// 2046         return FR_WRITE_PROTECTED;
// 2047       return FR_OK;       /* The file system object is valid */
??chk_mounted_5:
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}
// 2048     }
// 2049   }
// 2050 
// 2051   /* The file system object is not valid. */
// 2052   /* Following code attempts to mount the volume. (analyze BPB and initialize the fs object) */
// 2053 
// 2054   fs->fs_type = 0;          /* Clear the file system object */
??chk_mounted_4:
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
// 2055   fs->drv = LD2PD(vol);       /* Bind the logical drive and a physical drive */
        STRB     R0,[R5, #+1]
// 2056   stat = disk_initialize(fs->drv);  /* Initialize low level disk I/O layer */
        BL       disk_initialize
// 2057   if (stat & STA_NOINIT)        /* Check if the initialization succeeded */
        LSLS     R1,R0,#+31
        BPL.N    ??chk_mounted_7
// 2058     return FR_NOT_READY;      /* Failed to initialize due to no media or hard error */
        MOVS     R0,#+3
        POP      {R1,R4-R7,PC}
// 2059   if (!_FS_READONLY && chk_wp && (stat & STA_PROTECT))  /* Check disk write protection if needed */
??chk_mounted_7:
        CBZ.N    R6,??chk_mounted_8
        LSLS     R0,R0,#+29
        BPL.N    ??chk_mounted_8
// 2060     return FR_WRITE_PROTECTED;
??chk_mounted_6:
        MOVS     R0,#+10
        POP      {R1,R4-R7,PC}
// 2061 #if _MAX_SS != 512            /* Get disk sector size (variable sector size cfg only) */
// 2062   if (disk_ioctl(fs->drv, GET_SECTOR_SIZE, &fs->ssize) != RES_OK)
// 2063     return FR_DISK_ERR;
// 2064 #endif
// 2065   /* Search FAT partition on the drive. Supports only generic partitionings, FDISK and SFD. */
// 2066   fmt = check_fs(fs, bsect = 0);    /* Load sector 0 and check if it is an FAT-VBR (in SFD) */
??chk_mounted_8:
        MOVS     R6,#+0
        MOVS     R1,#+0
        MOV      R0,R5
        BL       check_fs
        MOV      R7,R0
// 2067   if (LD2PT(vol) && !fmt) fmt = 1;  /* Force non-SFD if the volume is forced partition */
// 2068   if (fmt == 1) {           /* Not an FAT-VBR, the physical drive can be partitioned */
        CMP      R7,#+1
        BNE.N    ??chk_mounted_9
// 2069     /* Check the partition listed in the partition table */
// 2070     pi = LD2PT(vol);
// 2071     if (pi) pi--;
// 2072     tbl = &fs->win[MBR_Table + pi * SZ_PTE];/* Partition table */
        ADDW     R0,R5,#+498
// 2073     if (tbl[4]) {           /* Is the partition existing? */
        LDRB     R1,[R0, #+4]
        CMP      R1,#+0
        BEQ.N    ??chk_mounted_10
// 2074       bsect = LD_DWORD(&tbl[8]);    /* Partition offset in LBA */
        LDRB     R1,[R0, #+11]
        LDRB     R2,[R0, #+10]
        LSLS     R2,R2,#+16
        ORR      R1,R2,R1, LSL #+24
        LDRB     R2,[R0, #+9]
        ORR      R1,R1,R2, LSL #+8
        LDRB     R0,[R0, #+8]
        ORR      R6,R0,R1
// 2075       fmt = check_fs(fs, bsect);    /* Check the partition */
        MOV      R1,R6
        MOV      R0,R5
        BL       check_fs
        MOV      R7,R0
// 2076     }
// 2077   }
// 2078   if (fmt == 3) return FR_DISK_ERR;
??chk_mounted_9:
        CMP      R7,#+3
        BNE.N    ??chk_mounted_11
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
// 2079   if (fmt) return FR_NO_FILESYSTEM;   /* No FAT volume is found */
??chk_mounted_11:
        CMP      R7,#+0
        ITTTT    EQ 
        LDRBEQ   R0,[R5, #+64]
        LDRBEQ   R1,[R5, #+63]
        ORREQ    R0,R1,R0, LSL #+8
        CMPEQ    R0,#+512
// 2080 
// 2081   /* An FAT volume is found. Following code initializes the file system object */
// 2082 
// 2083   if (LD_WORD(fs->win+BPB_BytsPerSec) != SS(fs))    /* (BPB_BytsPerSec must be equal to the physical sector size) */
        BNE.N    ??chk_mounted_12
// 2084     return FR_NO_FILESYSTEM;
// 2085 
// 2086   fasize = LD_WORD(fs->win+BPB_FATSz16);        /* Number of sectors per FAT */
        LDRB     R0,[R5, #+75]
        LDRB     R1,[R5, #+74]
        ORRS     R0,R1,R0, LSL #+8
// 2087   if (!fasize) fasize = LD_DWORD(fs->win+BPB_FATSz32);
        BNE.N    ??chk_mounted_13
        LDRB     R0,[R5, #+91]
        LDRB     R1,[R5, #+90]
        LSLS     R1,R1,#+16
        ORR      R0,R1,R0, LSL #+24
        LDRB     R1,[R5, #+89]
        ORR      R0,R0,R1, LSL #+8
        LDRB     R1,[R5, #+88]
        ORRS     R0,R1,R0
// 2088   fs->fsize = fasize;
??chk_mounted_13:
        STR      R0,[R5, #+32]
// 2089 
// 2090   fs->n_fats = b = fs->win[BPB_NumFATs];        /* Number of FAT copies */
        LDRB     R1,[R5, #+68]
        STRB     R1,[R5, #+3]
// 2091   if (b != 1 && b != 2) return FR_NO_FILESYSTEM;    /* (Must be 1 or 2) */
        CMP      R1,#+1
        IT       NE 
        CMPNE    R1,#+2
??chk_mounted_12:
        BNE.N    ??chk_mounted_14
// 2092   fasize *= b;                    /* Number of sectors for FAT area */
        MULS     R0,R1,R0
// 2093 
// 2094   fs->csize = b = fs->win[BPB_SecPerClus];      /* Number of sectors per cluster */
        LDRB     R1,[R5, #+65]
        STRB     R1,[R5, #+2]
// 2095   if (!b || (b & (b - 1))) return FR_NO_FILESYSTEM; /* (Must be power of 2) */
        CMP      R1,#+0
??chk_mounted_10:
        BEQ.N    ??chk_mounted_14
        SUBS     R2,R1,#+1
        TST      R1,R2
        BNE.N    ??chk_mounted_14
// 2096 
// 2097   fs->n_rootdir = LD_WORD(fs->win+BPB_RootEntCnt);  /* Number of root directory entries */
        LDRB     R1,[R5, #+70]
        LDRB     R2,[R5, #+69]
        ORR      R1,R2,R1, LSL #+8
        STRH     R1,[R5, #+8]
// 2098   if (fs->n_rootdir % (SS(fs) / SZ_DIR)) return FR_NO_FILESYSTEM; /* (BPB_RootEntCnt must be sector aligned) */
        MOVS     R2,#+15
        TST      R1,R2
        BNE.N    ??chk_mounted_14
// 2099 
// 2100   tsect = LD_WORD(fs->win+BPB_TotSec16);        /* Number of sectors on the volume */
        LDRB     R2,[R5, #+72]
        LDRB     R3,[R5, #+71]
        ORRS     R7,R3,R2, LSL #+8
// 2101   if (!tsect) tsect = LD_DWORD(fs->win+BPB_TotSec32);
        BNE.N    ??chk_mounted_15
        LDRB     R2,[R5, #+87]
        LDRB     R3,[R5, #+86]
        LSLS     R3,R3,#+16
        ORR      R2,R3,R2, LSL #+24
        LDRB     R3,[R5, #+85]
        ORR      R2,R2,R3, LSL #+8
        LDRB     R3,[R5, #+84]
        ORR      R7,R3,R2
// 2102 
// 2103   nrsv = LD_WORD(fs->win+BPB_RsvdSecCnt);       /* Number of reserved sectors */
??chk_mounted_15:
        LDRB     R2,[R5, #+67]
        LDRB     R3,[R5, #+66]
        ORRS     R2,R3,R2, LSL #+8
// 2104   if (!nrsv) return FR_NO_FILESYSTEM;         /* (BPB_RsvdSecCnt must not be 0) */
        BEQ.N    ??chk_mounted_14
// 2105 
// 2106   /* Determine the FAT sub type */
// 2107   sysect = nrsv + fasize + fs->n_rootdir / (SS(fs) / SZ_DIR); /* RSV+FAT+DIR */
        ADDS     R3,R0,R2
        ADD      R3,R3,R1, LSR #+4
// 2108   if (tsect < sysect) return FR_NO_FILESYSTEM;    /* (Invalid volume size) */
        CMP      R7,R3
        BCC.N    ??chk_mounted_14
// 2109   nclst = (tsect - sysect) / fs->csize;       /* Number of clusters */
        SUBS     R7,R7,R3
        LDRB     R12,[R5, #+2]
        UDIV     R12,R7,R12
// 2110   if (!nclst) return FR_NO_FILESYSTEM;        /* (Invalid volume size) */
        CMP      R12,#+0
        BEQ.N    ??chk_mounted_14
// 2111   fmt = FS_FAT12;
        MOVS     R7,#+1
// 2112   if (nclst >= MIN_FAT16) fmt = FS_FAT16;
        MOVW     LR,#+4086
        CMP      R12,LR
        IT       CS 
        MOVCS    R7,#+2
// 2113   if (nclst >= MIN_FAT32) fmt = FS_FAT32;
        MOVW     LR,#+65526
        CMP      R12,LR
        IT       CS 
        MOVCS    R7,#+3
// 2114 
// 2115   /* Boundaries and Limits */
// 2116   fs->n_fatent = nclst + 2;             /* Number of FAT entries */
        ADD      R12,R12,#+2
        STR      R12,[R5, #+28]
// 2117   fs->database = bsect + sysect;            /* Data start sector */
        ADDS     R3,R3,R6
        STR      R3,[R5, #+44]
// 2118   fs->fatbase = bsect + nrsv;             /* FAT start sector */
        ADDS     R2,R2,R6
        STR      R2,[R5, #+36]
// 2119   if (fmt == FS_FAT32) {
        CMP      R7,#+3
        BNE.N    ??chk_mounted_16
// 2120     if (fs->n_rootdir) return FR_NO_FILESYSTEM;   /* (BPB_RootEntCnt must be 0) */
        CBNZ.N   R1,??chk_mounted_14
// 2121     fs->dirbase = LD_DWORD(fs->win+BPB_RootClus); /* Root directory start cluster */
        LDRB     R0,[R5, #+99]
        LDRB     R1,[R5, #+98]
        LSLS     R1,R1,#+16
        ORR      R0,R1,R0, LSL #+24
        LDRB     R1,[R5, #+97]
        ORR      R0,R0,R1, LSL #+8
        LDRB     R1,[R5, #+96]
        ORRS     R0,R1,R0
// 2122     szbfat = fs->n_fatent * 4;            /* (Required FAT size) */
        LDR      R1,[R5, #+28]
        LSLS     R1,R1,#+2
        B.N      ??chk_mounted_17
// 2123   } else {
// 2124     if (!fs->n_rootdir) return FR_NO_FILESYSTEM;  /* (BPB_RootEntCnt must not be 0) */
??chk_mounted_16:
        CBZ.N    R1,??chk_mounted_14
// 2125     fs->dirbase = fs->fatbase + fasize;       /* Root directory start sector */
        ADDS     R0,R0,R2
// 2126     szbfat = (fmt == FS_FAT16) ?          /* (Required FAT size) */
// 2127       fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
        LDR      R1,[R5, #+28]
        CMP      R7,#+2
        ITEEE    EQ 
        LSLEQ    R1,R1,#+1
        ADDNE    R2,R1,R1, LSL #+1
        ANDNE    R1,R1,#0x1
        ADDNE    R1,R1,R2, LSR #+1
??chk_mounted_17:
        STR      R0,[R5, #+40]
// 2128   }
// 2129   if (fs->fsize < (szbfat + (SS(fs) - 1)) / SS(fs)) /* (BPB_FATSz must not be less than required) */
        LDR      R0,[R5, #+32]
        ADDW     R1,R1,#+511
        CMP      R0,R1, LSR #+9
        BCS.N    ??chk_mounted_18
// 2130     return FR_NO_FILESYSTEM;
??chk_mounted_14:
        MOVS     R0,#+13
        POP      {R1,R4-R7,PC}
// 2131 
// 2132 #if !_FS_READONLY
// 2133   /* Initialize cluster allocation information */
// 2134   fs->free_clust = 0xFFFFFFFF;
??chk_mounted_18:
        MOV      R0,#-1
        STR      R0,[R5, #+16]
// 2135   fs->last_clust = 0;
        MOVS     R0,#+0
        STR      R0,[R5, #+12]
// 2136 
// 2137   /* Get fsinfo if available */
// 2138   if (fmt == FS_FAT32) {
        CMP      R7,#+3
        BNE.N    ??chk_mounted_19
// 2139     fs->fsi_flag = 0;
        STRB     R0,[R5, #+5]
// 2140     fs->fsi_sector = bsect + LD_WORD(fs->win+BPB_FSInfo);
        LDRB     R0,[R5, #+101]
        LDRB     R1,[R5, #+100]
        ORR      R0,R1,R0, LSL #+8
        ADDS     R2,R0,R6
        STR      R2,[R5, #+20]
// 2141     if (disk_read(fs->drv, fs->win, fs->fsi_sector, 1) == RES_OK &&
// 2142       LD_WORD(fs->win+BS_55AA) == 0xAA55 &&
// 2143       LD_DWORD(fs->win+FSI_LeadSig) == 0x41615252 &&
// 2144       LD_DWORD(fs->win+FSI_StrucSig) == 0x61417272) {
        MOVS     R3,#+1
        ADD      R1,R5,#+52
        LDRB     R0,[R5, #+1]
        BL       disk_read
        CMP      R0,#+0
        BNE.N    ??chk_mounted_19
        LDRB     R0,[R5, #+563]
        LDRB     R1,[R5, #+562]
        ORR      R0,R1,R0, LSL #+8
        MOVW     R1,#+43605
        CMP      R0,R1
        BNE.N    ??chk_mounted_19
        LDRB     R0,[R5, #+55]
        LDRB     R1,[R5, #+54]
        LSLS     R1,R1,#+16
        ORR      R0,R1,R0, LSL #+24
        LDRB     R1,[R5, #+53]
        ORR      R0,R0,R1, LSL #+8
        LDRB     R1,[R5, #+52]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable10_2  ;; 0x41615252
        CMP      R0,R1
        BNE.N    ??chk_mounted_19
        LDRB     R0,[R5, #+539]
        LDRB     R1,[R5, #+538]
        LSLS     R1,R1,#+16
        ORR      R0,R1,R0, LSL #+24
        LDRB     R1,[R5, #+537]
        ORR      R0,R0,R1, LSL #+8
        LDRB     R1,[R5, #+536]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable10_3  ;; 0x61417272
        CMP      R0,R1
        BNE.N    ??chk_mounted_19
// 2145         fs->last_clust = LD_DWORD(fs->win+FSI_Nxt_Free);
        LDRB     R0,[R5, #+547]
        LDRB     R1,[R5, #+546]
        LSLS     R1,R1,#+16
        ORR      R0,R1,R0, LSL #+24
        LDRB     R1,[R5, #+545]
        ORR      R0,R0,R1, LSL #+8
        LDRB     R1,[R5, #+544]
        ORRS     R0,R1,R0
        STR      R0,[R5, #+12]
// 2146         fs->free_clust = LD_DWORD(fs->win+FSI_Free_Count);
        LDRB     R0,[R5, #+543]
        LDRB     R1,[R5, #+542]
        LSLS     R1,R1,#+16
        ORR      R0,R1,R0, LSL #+24
        LDRB     R1,[R5, #+541]
        ORR      R0,R0,R1, LSL #+8
        LDRB     R1,[R5, #+540]
        ORRS     R0,R1,R0
        STR      R0,[R5, #+16]
// 2147     }
// 2148   }
// 2149 #endif
// 2150   fs->fs_type = fmt;    /* FAT sub-type */
??chk_mounted_19:
        STRB     R7,[R5, #+0]
// 2151   fs->id = ++Fsid;    /* File system mount ID */
        LDRH     R0,[R4, #+2]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+2]
        STRH     R0,[R5, #+6]
// 2152   fs->winsect = 0;    /* Invalidate sector cache */
        MOVS     R0,#+0
        STR      R0,[R5, #+48]
// 2153   fs->wflag = 0;
        STRB     R0,[R5, #+4]
// 2154 #if _FS_RPATH
// 2155   fs->cdir = 0;     /* Current directory (root dir) */
        STR      R0,[R5, #+24]
// 2156 #endif
// 2157 #if _FS_SHARE       /* Clear file lock semaphores */
// 2158   clear_lock(fs);
// 2159 #endif
// 2160 
// 2161   return FR_OK;
        POP      {R1,R4-R7,PC}    ;; return
// 2162 }
// 2163 
// 2164 
// 2165 
// 2166 
// 2167 /*-----------------------------------------------------------------------*/
// 2168 /* Check if the file/dir object is valid or not                          */
// 2169 /*-----------------------------------------------------------------------*/
// 2170 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2171 static
// 2172 FRESULT validate (  /* FR_OK(0): The object is valid, !=0: Invalid */
// 2173   FATFS *fs,    /* Pointer to the file system object */
// 2174   WORD id     /* Member id of the target object to be checked */
// 2175 )
// 2176 {
validate:
        PUSH     {R7,LR}
// 2177   if (!fs || !fs->fs_type || fs->id != id)
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R2,[R0, #+0]
        CMPNE    R2,#+0
        BEQ.N    ??validate_0
        LDRH     R2,[R0, #+6]
        CMP      R2,R1
        BEQ.N    ??validate_1
// 2178     return FR_INVALID_OBJECT;
??validate_0:
        MOVS     R0,#+9
        POP      {R1,PC}
// 2179 
// 2180   ENTER_FF(fs);   /* Lock file system */
// 2181 
// 2182   if (disk_status(fs->drv) & STA_NOINIT)
??validate_1:
        LDRB     R0,[R0, #+1]
        BL       disk_status
        LSLS     R0,R0,#+31
        BPL.N    ??validate_2
// 2183     return FR_NOT_READY;
        MOVS     R0,#+3
        POP      {R1,PC}
// 2184 
// 2185   return FR_OK;
??validate_2:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
// 2186 }
// 2187 
// 2188 
// 2189 
// 2190 
// 2191 /*--------------------------------------------------------------------------
// 2192 
// 2193    Public Functions
// 2194 
// 2195 --------------------------------------------------------------------------*/
// 2196 
// 2197 
// 2198 
// 2199 /*-----------------------------------------------------------------------*/
// 2200 /* Mount/Unmount a Logical Drive                                         */
// 2201 /*-----------------------------------------------------------------------*/
// 2202 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2203 FRESULT f_mount (
// 2204   BYTE vol,   /* Logical drive number to be mounted/unmounted */
// 2205   FATFS *fs   /* Pointer to new file system object (NULL for unmount)*/
// 2206 )
// 2207 {
// 2208   FATFS *rfs;
// 2209 
// 2210 
// 2211   if (vol >= _VOLUMES)    /* Check if the drive number is valid */
f_mount:
        CBZ.N    R0,??f_mount_0
// 2212     return FR_INVALID_DRIVE;
        MOVS     R0,#+11
        BX       LR
// 2213   rfs = FatFs[vol];     /* Get current fs object */
??f_mount_0:
        LDR.W    R0,??DataTable10_1
        LDR      R2,[R0, #+4]
// 2214 
// 2215   if (rfs) {
        CBZ.N    R2,??f_mount_1
// 2216 #if _FS_SHARE
// 2217     clear_lock(rfs);
// 2218 #endif
// 2219 #if _FS_REENTRANT       /* Discard sync object of the current volume */
// 2220     if (!ff_del_syncobj(rfs->sobj)) return FR_INT_ERR;
// 2221 #endif
// 2222     rfs->fs_type = 0;   /* Clear old fs object */
        MOVS     R3,#+0
        STRB     R3,[R2, #+0]
// 2223   }
// 2224 
// 2225   if (fs) {
??f_mount_1:
        CBZ.N    R1,??f_mount_2
// 2226     fs->fs_type = 0;    /* Clear new fs object */
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
// 2227 #if _FS_REENTRANT       /* Create sync object for the new volume */
// 2228     if (!ff_cre_syncobj(vol, &fs->sobj)) return FR_INT_ERR;
// 2229 #endif
// 2230   }
// 2231   FatFs[vol] = fs;      /* Register new fs object */
??f_mount_2:
        STR      R1,[R0, #+4]
// 2232 
// 2233   return FR_OK;
        MOVS     R0,#+0
        BX       LR               ;; return
// 2234 }
// 2235 
// 2236 
// 2237 
// 2238 
// 2239 /*-----------------------------------------------------------------------*/
// 2240 /* Open or Create a File                                                 */
// 2241 /*-----------------------------------------------------------------------*/
// 2242 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2243 FRESULT f_open (
// 2244   FIL *fp,      /* Pointer to the blank file object */
// 2245   const TCHAR *path,  /* Pointer to the file name */
// 2246   BYTE mode     /* Access mode and file open mode flags */
// 2247 )
// 2248 {
f_open:
        PUSH     {R1,R4-R9,LR}
        SUB      SP,SP,#+40
        MOV      R4,R0
// 2249   FRESULT res;
// 2250   DIR dj;
// 2251   BYTE *dir;
// 2252   DEF_NAMEBUF;
// 2253 
// 2254 
// 2255   fp->fs = 0;     /* Clear file object */
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
// 2256 
// 2257 #if !_FS_READONLY
// 2258   mode &= FA_READ | FA_WRITE | FA_CREATE_ALWAYS | FA_OPEN_ALWAYS | FA_CREATE_NEW;
        AND      R5,R2,#0x1F
// 2259   res = chk_mounted(&path, &dj.fs, (BYTE)(mode & ~FA_READ));
        AND      R2,R5,#0xFE
        BL       ?Subroutine21
??CrossCallReturnLabel_70:
        MOVS     R6,R0
// 2260 #else
// 2261   mode &= FA_READ;
// 2262   res = chk_mounted(&path, &dj.fs, 0);
// 2263 #endif
// 2264   INIT_BUF(dj);
        ADD      R0,SP,#+28
        STR      R0,[SP, #+24]
// 2265   if (res == FR_OK)
        BNE.N    ??f_open_0
// 2266     res = follow_path(&dj, path); /* Follow the file path */
        BL       ??Subroutine22_0
??CrossCallReturnLabel_74:
        MOV      R6,R0
// 2267   dir = dj.dir;
??f_open_0:
        LDR      R7,[SP, #+20]
// 2268 
// 2269 #if !_FS_READONLY /* R/W configuration */
// 2270   if (res == FR_OK) {
        CMP      R6,#+0
        ITT      EQ 
        CMPEQ    R7,#+0
// 2271     if (!dir) /* Current dir itself */
        MOVEQ    R6,#+6
// 2272       res = FR_INVALID_NAME;
// 2273 #if _FS_SHARE
// 2274     else
// 2275       res = chk_lock(&dj, (mode & ~FA_READ) ? 1 : 0);
// 2276 #endif
// 2277   }
// 2278   /* Create or Open a file */
// 2279   if (mode & (FA_CREATE_ALWAYS | FA_OPEN_ALWAYS | FA_CREATE_NEW)) {
        MOVS     R0,#+28
        TST      R5,R0
        BEQ.N    ??f_open_1
// 2280     DWORD dw, cl;
// 2281 
// 2282     if (res != FR_OK) {         /* No file, create new */
        CMP      R6,#+0
        BEQ.N    ??f_open_2
// 2283       if (res == FR_NO_FILE)      /* There is no file to open, create a new entry */
        CMP      R6,#+4
        BNE.N    ??f_open_3
// 2284 #if _FS_SHARE
// 2285         res = enq_lock() ? dir_register(&dj) : FR_TOO_MANY_OPEN_FILES;
// 2286 #else
// 2287         res = dir_register(&dj);
        ADD      R0,SP,#+0
        BL       dir_register
        MOV      R6,R0
// 2288 #endif
// 2289       mode |= FA_CREATE_ALWAYS;   /* File is created */
??f_open_3:
        ORR      R5,R5,#0x8
// 2290       dir = dj.dir;         /* New entry */
        LDR      R7,[SP, #+20]
// 2291     }
// 2292     else {                /* Any object is already existing */
// 2293       if (dir[DIR_Attr] & (AM_RDO | AM_DIR)) {  /* Cannot overwrite it (R/O or DIR) */
// 2294         res = FR_DENIED;
// 2295       } else {
// 2296         if (mode & FA_CREATE_NEW) /* Cannot create as new file */
// 2297           res = FR_EXIST;
// 2298       }
// 2299     }
// 2300     if (res == FR_OK && (mode & FA_CREATE_ALWAYS)) {  /* Truncate it if overwrite mode */
        CBNZ.N   R6,??f_open_4
??f_open_5:
        LSLS     R0,R5,#+28
        BPL.N    ??f_open_6
// 2301       dw = get_fattime();         /* Created time */
        BL       get_fattime
        MOV      R1,R0
// 2302       ST_DWORD(dir+DIR_CrtTime, dw);
        STRB     R1,[R7, #+14]
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[R7, #+15]
        LSRS     R0,R1,#+16
        STRB     R0,[R7, #+16]
        LSRS     R0,R1,#+24
        STRB     R0,[R7, #+17]
// 2303       dir[DIR_Attr] = 0;          /* Reset attribute */
        MOVS     R0,#+0
        STRB     R0,[R7, #+11]
// 2304       ST_DWORD(dir+DIR_FileSize, 0);    /* size = 0 */
        STRB     R0,[R7, #+28]
        STRB     R0,[R7, #+29]
        STRB     R0,[R7, #+30]
        STRB     R0,[R7, #+31]
// 2305       cl = LD_CLUST(dir);         /* Get start cluster */
        LDRB     R0,[R7, #+21]
        LDRB     R1,[R7, #+20]
        ORR      R0,R1,R0, LSL #+8
        LDRB     R1,[R7, #+27]
        LDRB     R2,[R7, #+26]
        ORR      R1,R2,R1, LSL #+8
        ORR      R9,R1,R0, LSL #+16
// 2306       ST_CLUST(dir, 0);         /* cluster = 0 */
        MOVS     R0,#+0
        STRB     R0,[R7, #+26]
        STRB     R0,[R7, #+27]
        STRB     R0,[R7, #+20]
        STRB     R0,[R7, #+21]
// 2307       dj.fs->wflag = 1;
        LDR      R0,[SP, #+0]
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
// 2308       if (cl) {             /* Remove the cluster chain if exist */
        CMP      R9,#+0
        BEQ.N    ??f_open_7
// 2309         dw = dj.fs->winsect;
        LDR      R0,[SP, #+0]
        LDR      R8,[R0, #+48]
// 2310         res = remove_chain(dj.fs, cl);
        MOV      R1,R9
        BL       remove_chain
        MOVS     R6,R0
// 2311         if (res == FR_OK) {
        BNE.N    ??f_open_4
// 2312           dj.fs->last_clust = cl - 1; /* Reuse the cluster hole */
        LDR      R0,[SP, #+0]
        SUB      R1,R9,#+1
        STR      R1,[R0, #+12]
// 2313           res = move_window(dj.fs, dw);
        MOV      R1,R8
        LDR      R0,[SP, #+0]
        BL       move_window
        MOV      R6,R0
// 2314         }
// 2315       }
// 2316     }
// 2317   }
// 2318   else {  /* Open an existing file */
// 2319     if (res == FR_OK) {           /* Follow succeeded */
// 2320       if (dir[DIR_Attr] & AM_DIR) {   /* It is a directory */
// 2321         res = FR_NO_FILE;
// 2322       } else {
// 2323         if ((mode & FA_WRITE) && (dir[DIR_Attr] & AM_RDO)) /* R/O violation */
// 2324           res = FR_DENIED;
// 2325       }
// 2326     }
// 2327   }
// 2328   if (res == FR_OK) {
??f_open_4:
        CBNZ.N   R6,??f_open_8
// 2329     if (mode & FA_CREATE_ALWAYS)      /* Set file change flag if created or overwritten */
??f_open_7:
        LSLS     R0,R5,#+28
        IT       MI 
        ORRMI    R5,R5,#0x20
// 2330       mode |= FA__WRITTEN;
// 2331     fp->dir_sect = dj.fs->winsect;      /* Pointer to the directory entry */
??f_open_6:
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+48]
        STR      R0,[R4, #+28]
// 2332     fp->dir_ptr = dir;
        STR      R7,[R4, #+32]
// 2333 #if _FS_SHARE
// 2334     fp->lockid = inc_lock(&dj, (mode & ~FA_READ) ? 1 : 0);
// 2335     if (!fp->lockid) res = FR_INT_ERR;
// 2336 #endif
// 2337   }
// 2338 
// 2339 #else       /* R/O configuration */
// 2340   if (res == FR_OK) {         /* Follow succeeded */
// 2341     if (!dir) {           /* Current dir itself */
// 2342       res = FR_INVALID_NAME;
// 2343     } else {
// 2344       if (dir[DIR_Attr] & AM_DIR) /* It is a directory */
// 2345         res = FR_NO_FILE;
// 2346     }
// 2347   }
// 2348 #endif
// 2349   FREE_BUF();
// 2350 
// 2351   if (res == FR_OK) {
// 2352     fp->flag = mode;          /* File access mode */
        STRB     R5,[R4, #+6]
// 2353     fp->sclust = LD_CLUST(dir);     /* File start cluster */
        LDRB     R0,[R7, #+21]
        LDRB     R1,[R7, #+20]
        ORR      R0,R1,R0, LSL #+8
        LDRB     R1,[R7, #+27]
        LDRB     R2,[R7, #+26]
        ORR      R1,R2,R1, LSL #+8
        ORR      R0,R1,R0, LSL #+16
        STR      R0,[R4, #+16]
// 2354     fp->fsize = LD_DWORD(dir+DIR_FileSize); /* File size */
        LDRB     R0,[R7, #+31]
        LDRB     R1,[R7, #+30]
        LSLS     R1,R1,#+16
        ORR      R0,R1,R0, LSL #+24
        LDRB     R1,[R7, #+29]
        ORR      R0,R0,R1, LSL #+8
        LDRB     R1,[R7, #+28]
        ORRS     R0,R1,R0
        STR      R0,[R4, #+12]
// 2355     fp->fptr = 0;           /* File pointer */
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
// 2356     fp->dsect = 0;
        STR      R0,[R4, #+24]
// 2357 #if _USE_FASTSEEK
// 2358     fp->cltbl = 0;            /* Normal seek mode */
// 2359 #endif
// 2360     fp->fs = dj.fs; fp->id = dj.fs->id; /* Validate file object */
        LDR      R0,[SP, #+0]
        STR      R0,[R4, #+0]
        LDR      R0,[SP, #+0]
        LDRH     R0,[R0, #+6]
        STRH     R0,[R4, #+4]
// 2361   }
// 2362 
// 2363   LEAVE_FF(dj.fs, res);
??f_open_8:
        MOV      R0,R6
        ADD      SP,SP,#+44
        POP      {R4-R9,PC}       ;; return
??f_open_2:
        LDRB     R0,[R7, #+11]
        MOVS     R1,#+17
        TST      R0,R1
        BNE.N    ??f_open_9
        LSLS     R0,R5,#+29
        BPL.N    ??f_open_5
        MOVS     R6,#+8
        B.N      ??f_open_8
??f_open_1:
        CMP      R6,#+0
        BNE.N    ??f_open_4
        LDRB     R0,[R7, #+11]
        LSLS     R1,R0,#+27
        IT       MI 
        MOVMI    R6,#+4
        BMI.N    ??f_open_8
        LSLS     R1,R5,#+30
        BPL.N    ??f_open_7
        LSLS     R0,R0,#+31
        BPL.N    ??f_open_7
??f_open_9:
        MOVS     R6,#+7
        B.N      ??f_open_8
// 2364 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine22:
        ADD      R0,SP,#+28
        STR      R0,[SP, #+24]
??Subroutine22_0:
        LDR      R1,[SP, #+40]
??Subroutine22_1:
        ADD      R0,SP,#+0
        B.N      follow_path
// 2365 
// 2366 
// 2367 
// 2368 
// 2369 /*-----------------------------------------------------------------------*/
// 2370 /* Read File                                                             */
// 2371 /*-----------------------------------------------------------------------*/
// 2372 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2373 FRESULT f_read (
// 2374   FIL *fp,    /* Pointer to the file object */
// 2375   void *buff,   /* Pointer to data buffer */
// 2376   UINT btr,   /* Number of bytes to read */
// 2377   UINT *br    /* Pointer to number of bytes read */
// 2378 )
// 2379 {
f_read:
        PUSH     {R4-R10,LR}
        BL       ?Subroutine14
// 2380   FRESULT res;
// 2381   DWORD clst, sect, remain;
// 2382   UINT rcnt, cc;
// 2383   BYTE csect, *rbuff = buff;
// 2384 
// 2385 
// 2386   *br = 0;  /* Initialize byte counter */
// 2387 
// 2388   res = validate(fp->fs, fp->id);       /* Check validity */
// 2389   if (res != FR_OK) LEAVE_FF(fp->fs, res);
??CrossCallReturnLabel_53:
        CMP      R0,#+0
        BNE.N    ??f_read_0
// 2390   if (fp->flag & FA__ERROR)         /* Aborted file? */
        LDRB     R0,[R5, #+6]
        LSLS     R1,R0,#+24
        BMI.N    ??f_read_1
// 2391     LEAVE_FF(fp->fs, FR_INT_ERR);
// 2392   if (!(fp->flag & FA_READ))          /* Check access mode */
        LSLS     R0,R0,#+31
        IT       PL 
        MOVPL    R0,#+7
// 2393     LEAVE_FF(fp->fs, FR_DENIED);
        BPL.N    ??f_read_2
// 2394   remain = fp->fsize - fp->fptr;
        LDR      R0,[R5, #+12]
        LDR      R1,[R5, #+8]
        SUBS     R0,R0,R1
// 2395   if (btr > remain) btr = (UINT)remain;   /* Truncate btr by remaining bytes */
        CMP      R0,R6
        BHI.N    ??f_read_3
        MOV      R6,R0
        B.N      ??f_read_3
// 2396 
// 2397   for ( ;  btr;               /* Repeat until all data read */
// 2398     rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
// 2399     if ((fp->fptr % SS(fp->fs)) == 0) {   /* On the sector boundary? */
// 2400       csect = (BYTE)(fp->fptr / SS(fp->fs) & (fp->fs->csize - 1));  /* Sector offset in the cluster */
// 2401       if (!csect) {           /* On the cluster boundary? */
// 2402         if (fp->fptr == 0) {      /* On the top of the file? */
// 2403           clst = fp->sclust;      /* Follow from the origin */
// 2404         } else {            /* Middle or end of the file */
// 2405 #if _USE_FASTSEEK
// 2406           if (fp->cltbl)
// 2407             clst = clmt_clust(fp, fp->fptr);  /* Get cluster# from the CLMT */
// 2408           else
// 2409 #endif
// 2410             clst = get_fat(fp->fs, fp->clust);  /* Follow cluster chain on the FAT */
// 2411         }
// 2412         if (clst < 2) ABORT(fp->fs, FR_INT_ERR);
// 2413         if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
// 2414         fp->clust = clst;       /* Update current cluster */
// 2415       }
// 2416       sect = clust2sect(fp->fs, fp->clust); /* Get current sector */
// 2417       if (!sect) ABORT(fp->fs, FR_INT_ERR);
// 2418       sect += csect;
// 2419       cc = btr / SS(fp->fs);        /* When remaining bytes >= sector size, */
// 2420       if (cc) {             /* Read maximum contiguous sectors directly */
// 2421         if (csect + cc > fp->fs->csize) /* Clip at cluster boundary */
// 2422           cc = fp->fs->csize - csect;
// 2423         if (disk_read(fp->fs->drv, rbuff, sect, (BYTE)cc) != RES_OK)
// 2424           ABORT(fp->fs, FR_DISK_ERR);
// 2425 #if !_FS_READONLY && _FS_MINIMIZE <= 2      /* Replace one of the read sectors with cached data if it contains a dirty sector */
// 2426 #if _FS_TINY
// 2427         if (fp->fs->wflag && fp->fs->winsect - sect < cc)
// 2428           mem_cpy(rbuff + ((fp->fs->winsect - sect) * SS(fp->fs)), fp->fs->win, SS(fp->fs));
// 2429 #else
// 2430         if ((fp->flag & FA__DIRTY) && fp->dsect - sect < cc)
// 2431           mem_cpy(rbuff + ((fp->dsect - sect) * SS(fp->fs)), fp->buf, SS(fp->fs));
// 2432 #endif
// 2433 #endif
// 2434         rcnt = SS(fp->fs) * cc;     /* Number of bytes transferred */
// 2435         continue;
// 2436       }
// 2437 #if !_FS_TINY
// 2438       if (fp->dsect != sect) {      /* Load data sector if not in cache */
// 2439 #if !_FS_READONLY
// 2440         if (fp->flag & FA__DIRTY) {   /* Write-back dirty sector cache */
// 2441           if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
// 2442             ABORT(fp->fs, FR_DISK_ERR);
// 2443           fp->flag &= ~FA__DIRTY;
// 2444         }
// 2445 #endif
// 2446         if (disk_read(fp->fs->drv, fp->buf, sect, 1) != RES_OK) /* Fill sector cache */
// 2447           ABORT(fp->fs, FR_DISK_ERR);
// 2448       }
// 2449 #endif
// 2450       fp->dsect = sect;
??f_read_4:
        STR      R9,[R5, #+24]
// 2451     }
// 2452     rcnt = SS(fp->fs) - (fp->fptr % SS(fp->fs));  /* Get partial sector data from sector buffer */
??f_read_5:
        BL       ?Subroutine24
// 2453     if (rcnt > btr) rcnt = btr;
??CrossCallReturnLabel_80:
        IT       HI 
        MOVHI    R4,R1
// 2454 #if _FS_TINY
// 2455     if (move_window(fp->fs, fp->dsect))   /* Move sector window */
// 2456       ABORT(fp->fs, FR_DISK_ERR);
// 2457     mem_cpy(rbuff, &fp->fs->win[fp->fptr % SS(fp->fs)], rcnt);  /* Pick partial sector */
// 2458 #else
// 2459     mem_cpy(rbuff, &fp->buf[fp->fptr % SS(fp->fs)], rcnt);  /* Pick partial sector */
        MOV      R2,R4
        ADDS     R0,R0,R5
        ADD      R1,R0,#+36
        MOV      R0,R8
        BL       mem_cpy
??f_read_6:
        ADD      R8,R4,R8
        LDR      R0,[R5, #+8]
        ADDS     R0,R4,R0
        STR      R0,[R5, #+8]
        LDR      R0,[R10, #+0]
        ADDS     R0,R4,R0
        STR      R0,[R10, #+0]
        SUBS     R6,R6,R4
??f_read_3:
        CMP      R6,#+0
        BEQ.N    ??f_read_7
        LDR      R1,[R5, #+8]
        LSLS     R0,R1,#+23
        BNE.N    ??f_read_5
        LDR      R0,[R5, #+0]
        LDRB     R3,[R0, #+2]
        SUBS     R3,R3,#+1
        ANDS     R2,R3,R1, LSR #+9
        UXTB     R4,R2
        CBNZ.N   R4,??f_read_8
        CMP      R1,#+0
        ITEE     EQ 
        LDREQ    R0,[R5, #+16]
        LDRNE    R1,[R5, #+20]
        BLNE     get_fat
        CMP      R0,#+2
        BCC.N    ??f_read_9
        CMN      R0,#+1
        BEQ.N    ??f_read_10
        STR      R0,[R5, #+20]
??f_read_8:
        LDR      R1,[R5, #+20]
        LDR      R0,[R5, #+0]
        BL       clust2sect
        CBNZ.N   R0,??f_read_11
??f_read_9:
        LDRB     R0,[R5, #+6]
        ORR      R0,R0,#0x80
        STRB     R0,[R5, #+6]
??f_read_1:
        MOVS     R0,#+2
??f_read_0:
        B.N      ??f_read_2
??f_read_11:
        ADD      R9,R4,R0
        LSRS     R7,R6,#+9
        BEQ.N    ??f_read_12
        LDR      R0,[R5, #+0]
        LDRB     R1,[R0, #+2]
        ADDS     R2,R7,R4
        CMP      R1,R2
        IT       CC 
        SUBCC    R7,R1,R4
        UXTB     R3,R7
        MOV      R2,R9
        MOV      R1,R8
        LDRB     R0,[R0, #+1]
        BL       disk_read
        CBNZ.N   R0,??f_read_10
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+25
        BPL.N    ??f_read_13
        LDR      R0,[R5, #+24]
        SUB      R0,R0,R9
        CMP      R0,R7
        BCS.N    ??f_read_13
        MOV      R2,#+512
        ADD      R1,R5,#+36
        ADD      R0,R8,R0, LSL #+9
        BL       mem_cpy
??f_read_13:
        LSLS     R4,R7,#+9
        B.N      ??f_read_6
??f_read_12:
        LDR      R2,[R5, #+24]
        CMP      R2,R9
        BEQ.N    ??f_read_4
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+25
        BPL.N    ??f_read_14
        MOVS     R3,#+1
        BL       ?Subroutine6
??CrossCallReturnLabel_21:
        CBNZ.N   R0,??f_read_10
        LDRB     R0,[R5, #+6]
        AND      R0,R0,#0xBF
        STRB     R0,[R5, #+6]
??f_read_14:
        BL       ?Subroutine0
??CrossCallReturnLabel_1:
        CMP      R0,#+0
        BEQ.N    ??f_read_4
??f_read_10:
        LDRB     R0,[R5, #+6]
        ORR      R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_read_2
// 2460 #endif
// 2461   }
// 2462 
// 2463   LEAVE_FF(fp->fs, FR_OK);
??f_read_7:
        MOVS     R0,#+0
??f_read_2:
        POP      {R4-R10,PC}      ;; return
// 2464 }
// 2465 
// 2466 
// 2467 
// 2468 
// 2469 #if !_FS_READONLY
// 2470 /*-----------------------------------------------------------------------*/
// 2471 /* Write File                                                            */
// 2472 /*-----------------------------------------------------------------------*/
// 2473 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2474 FRESULT f_write (
// 2475   FIL *fp,      /* Pointer to the file object */
// 2476   const void *buff, /* Pointer to the data to be written */
// 2477   UINT btw,     /* Number of bytes to write */
// 2478   UINT *bw      /* Pointer to number of bytes written */
// 2479 )
// 2480 {
f_write:
        PUSH     {R4-R10,LR}
        BL       ?Subroutine14
// 2481   FRESULT res;
// 2482   DWORD clst, sect;
// 2483   UINT wcnt, cc;
// 2484   const BYTE *wbuff = buff;
// 2485   BYTE csect;
// 2486 
// 2487 
// 2488   *bw = 0;  /* Initialize byte counter */
// 2489 
// 2490   res = validate(fp->fs, fp->id);     /* Check validity */
// 2491   if (res != FR_OK) LEAVE_FF(fp->fs, res);
??CrossCallReturnLabel_52:
        CBNZ.N   R0,??f_write_0
// 2492   if (fp->flag & FA__ERROR)       /* Aborted file? */
        LDRB     R0,[R5, #+6]
        LSLS     R1,R0,#+24
        BPL.N    ??f_write_1
// 2493     LEAVE_FF(fp->fs, FR_INT_ERR);
??f_write_2:
        MOVS     R0,#+2
        B.N      ??f_write_0
// 2494   if (!(fp->flag & FA_WRITE))       /* Check access mode */
??f_write_1:
        LSLS     R0,R0,#+30
        IT       PL 
        MOVPL    R0,#+7
// 2495     LEAVE_FF(fp->fs, FR_DENIED);
        BPL.N    ??f_write_0
// 2496   if ((DWORD)(fp->fsize + btw) < fp->fsize) btw = 0;  /* File size cannot reach 4GB */
        LDR      R0,[R5, #+12]
        ADDS     R1,R6,R0
        CMP      R1,R0
        BCS.N    ??f_write_3
// 2497 
// 2498   for ( ;  btw;             /* Repeat until all data written */
// 2499     wbuff += wcnt, fp->fptr += wcnt, *bw += wcnt, btw -= wcnt) {
// 2500     if ((fp->fptr % SS(fp->fs)) == 0) { /* On the sector boundary? */
// 2501       csect = (BYTE)(fp->fptr / SS(fp->fs) & (fp->fs->csize - 1));  /* Sector offset in the cluster */
// 2502       if (!csect) {         /* On the cluster boundary? */
// 2503         if (fp->fptr == 0) {    /* On the top of the file? */
// 2504           clst = fp->sclust;    /* Follow from the origin */
// 2505           if (clst == 0)      /* When no cluster is allocated, */
// 2506             fp->sclust = clst = create_chain(fp->fs, 0);  /* Create a new cluster chain */
// 2507         } else {          /* Middle or end of the file */
// 2508 #if _USE_FASTSEEK
// 2509           if (fp->cltbl)
// 2510             clst = clmt_clust(fp, fp->fptr);  /* Get cluster# from the CLMT */
// 2511           else
// 2512 #endif
// 2513             clst = create_chain(fp->fs, fp->clust); /* Follow or stretch cluster chain on the FAT */
// 2514         }
// 2515         if (clst == 0) break;   /* Could not allocate a new cluster (disk full) */
// 2516         if (clst == 1) ABORT(fp->fs, FR_INT_ERR);
// 2517         if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
// 2518         fp->clust = clst;     /* Update current cluster */
// 2519       }
// 2520 #if _FS_TINY
// 2521       if (fp->fs->winsect == fp->dsect && move_window(fp->fs, 0)) /* Write-back sector cache */
// 2522         ABORT(fp->fs, FR_DISK_ERR);
// 2523 #else
// 2524       if (fp->flag & FA__DIRTY) {   /* Write-back sector cache */
// 2525         if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
// 2526           ABORT(fp->fs, FR_DISK_ERR);
// 2527         fp->flag &= ~FA__DIRTY;
// 2528       }
// 2529 #endif
// 2530       sect = clust2sect(fp->fs, fp->clust); /* Get current sector */
// 2531       if (!sect) ABORT(fp->fs, FR_INT_ERR);
// 2532       sect += csect;
// 2533       cc = btw / SS(fp->fs);      /* When remaining bytes >= sector size, */
// 2534       if (cc) {           /* Write maximum contiguous sectors directly */
// 2535         if (csect + cc > fp->fs->csize) /* Clip at cluster boundary */
// 2536           cc = fp->fs->csize - csect;
// 2537         if (disk_write(fp->fs->drv, wbuff, sect, (BYTE)cc) != RES_OK)
// 2538           ABORT(fp->fs, FR_DISK_ERR);
// 2539 #if _FS_TINY
// 2540         if (fp->fs->winsect - sect < cc) {  /* Refill sector cache if it gets invalidated by the direct write */
// 2541           mem_cpy(fp->fs->win, wbuff + ((fp->fs->winsect - sect) * SS(fp->fs)), SS(fp->fs));
// 2542           fp->fs->wflag = 0;
// 2543         }
// 2544 #else
// 2545         if (fp->dsect - sect < cc) { /* Refill sector cache if it gets invalidated by the direct write */
// 2546           mem_cpy(fp->buf, wbuff + ((fp->dsect - sect) * SS(fp->fs)), SS(fp->fs));
// 2547           fp->flag &= ~FA__DIRTY;
// 2548         }
// 2549 #endif
// 2550         wcnt = SS(fp->fs) * cc;   /* Number of bytes transferred */
// 2551         continue;
// 2552       }
// 2553 #if _FS_TINY
// 2554       if (fp->fptr >= fp->fsize) {  /* Avoid silly cache filling at growing edge */
// 2555         if (move_window(fp->fs, 0)) ABORT(fp->fs, FR_DISK_ERR);
// 2556         fp->fs->winsect = sect;
// 2557       }
// 2558 #else
// 2559       if (fp->dsect != sect) {    /* Fill sector cache with file data */
// 2560         if (fp->fptr < fp->fsize &&
// 2561           disk_read(fp->fs->drv, fp->buf, sect, 1) != RES_OK)
// 2562             ABORT(fp->fs, FR_DISK_ERR);
// 2563       }
// 2564 #endif
// 2565       fp->dsect = sect;
// 2566     }
// 2567     wcnt = SS(fp->fs) - (fp->fptr % SS(fp->fs));/* Put partial sector into file I/O buffer */
// 2568     if (wcnt > btw) wcnt = btw;
// 2569 #if _FS_TINY
// 2570     if (move_window(fp->fs, fp->dsect)) /* Move sector window */
// 2571       ABORT(fp->fs, FR_DISK_ERR);
// 2572     mem_cpy(&fp->fs->win[fp->fptr % SS(fp->fs)], wbuff, wcnt);  /* Fit partial sector */
// 2573     fp->fs->wflag = 1;
// 2574 #else
// 2575     mem_cpy(&fp->buf[fp->fptr % SS(fp->fs)], wbuff, wcnt);  /* Fit partial sector */
// 2576     fp->flag |= FA__DIRTY;
// 2577 #endif
// 2578   }
// 2579 
// 2580   if (fp->fptr > fp->fsize) fp->fsize = fp->fptr; /* Update file size if needed */
??f_write_4:
        LDR      R0,[R5, #+12]
        LDR      R1,[R5, #+8]
        CMP      R0,R1
        IT       CC 
        MOVCC    R0,R1
        STR      R0,[R5, #+12]
// 2581   fp->flag |= FA__WRITTEN;            /* Set file change flag */
        LDRB     R0,[R5, #+6]
        ORR      R0,R0,#0x20
        STRB     R0,[R5, #+6]
// 2582 
// 2583   LEAVE_FF(fp->fs, FR_OK);
        MOVS     R0,#+0
??f_write_0:
        POP      {R4-R10,PC}      ;; return
??f_write_5:
        STR      R9,[R5, #+24]
??f_write_6:
        BL       ?Subroutine24
??CrossCallReturnLabel_81:
        IT       HI 
        MOVHI    R4,R1
        MOV      R2,R4
        MOV      R1,R8
        ADDS     R0,R0,R5
        ADDS     R0,R0,#+36
        BL       mem_cpy
        LDRB     R0,[R5, #+6]
        ORR      R0,R0,#0x40
        STRB     R0,[R5, #+6]
??f_write_7:
        ADD      R8,R4,R8
        LDR      R0,[R5, #+8]
        ADDS     R0,R4,R0
        STR      R0,[R5, #+8]
        LDR      R0,[R10, #+0]
        ADDS     R0,R4,R0
        STR      R0,[R10, #+0]
        SUBS     R6,R6,R4
??f_write_3:
        CMP      R6,#+0
        BEQ.N    ??f_write_4
        LDR      R1,[R5, #+8]
        LSLS     R0,R1,#+23
        BNE.N    ??f_write_6
        LDR      R0,[R5, #+0]
        LDRB     R3,[R0, #+2]
        SUBS     R3,R3,#+1
        ANDS     R2,R3,R1, LSR #+9
        UXTB     R4,R2
        CBNZ.N   R4,??f_write_8
        CBNZ.N   R1,??f_write_9
        LDR      R1,[R5, #+16]
        CBNZ.N   R1,??f_write_10
        BL       create_chain
        MOV      R1,R0
        STR      R1,[R5, #+16]
        B.N      ??f_write_10
??f_write_9:
        LDR      R1,[R5, #+20]
        BL       create_chain
        MOV      R1,R0
??f_write_10:
        CMP      R1,#+0
        BEQ.N    ??f_write_4
        CMP      R1,#+1
        BEQ.N    ??f_write_11
        CMN      R1,#+1
        BEQ.N    ??f_write_12
        STR      R1,[R5, #+20]
??f_write_8:
        LDRB     R0,[R5, #+6]
        LSLS     R0,R0,#+25
        BPL.N    ??f_write_13
        MOVS     R3,#+1
        LDR      R2,[R5, #+24]
        BL       ?Subroutine6
??CrossCallReturnLabel_20:
        CMP      R0,#+0
        BNE.N    ??f_write_12
        LDRB     R0,[R5, #+6]
        AND      R0,R0,#0xBF
        STRB     R0,[R5, #+6]
??f_write_13:
        LDR      R1,[R5, #+20]
        LDR      R0,[R5, #+0]
        BL       clust2sect
        CBNZ.N   R0,??f_write_14
??f_write_11:
        LDRB     R0,[R5, #+6]
        ORR      R0,R0,#0x80
        STRB     R0,[R5, #+6]
        B.N      ??f_write_2
??f_write_14:
        ADD      R9,R4,R0
        LSRS     R7,R6,#+9
        BEQ.N    ??f_write_15
        LDR      R0,[R5, #+0]
        LDRB     R1,[R0, #+2]
        ADDS     R2,R7,R4
        CMP      R1,R2
        IT       CC 
        SUBCC    R7,R1,R4
        UXTB     R3,R7
        MOV      R2,R9
        MOV      R1,R8
        BL       ??Subroutine6_0
??CrossCallReturnLabel_19:
        CBNZ.N   R0,??f_write_12
        LDR      R0,[R5, #+24]
        SUB      R0,R0,R9
        CMP      R0,R7
        BCS.N    ??f_write_16
        MOV      R2,#+512
        ADD      R1,R8,R0, LSL #+9
        ADD      R0,R5,#+36
        BL       mem_cpy
        LDRB     R0,[R5, #+6]
        AND      R0,R0,#0xBF
        STRB     R0,[R5, #+6]
??f_write_16:
        LSLS     R4,R7,#+9
        B.N      ??f_write_7
??f_write_15:
        LDR      R0,[R5, #+24]
        CMP      R0,R9
??f_write_17:
        BEQ.N    ??f_write_5
        LDR      R0,[R5, #+8]
        LDR      R1,[R5, #+12]
        CMP      R0,R1
        BCS.N    ??f_write_5
        BL       ?Subroutine0
??CrossCallReturnLabel_0:
        CMP      R0,#+0
        BEQ.N    ??f_write_17
??f_write_12:
        LDRB     R0,[R5, #+6]
        ORR      R0,R0,#0x80
        STRB     R0,[R5, #+6]
        MOVS     R0,#+1
        B.N      ??f_write_0
// 2584 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine24:
        LDR      R0,[R5, #+8]
        LSLS     R0,R0,#+23
        LSRS     R0,R0,#+23
        RSB      R1,R0,#+512
        MOV      R4,R6
        CMP      R6,R1
        BX       LR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine14:
        MOV      R5,R0
        MOV      R6,R2
        MOV      R10,R3
        MOV      R8,R1
        MOVS     R0,#+0
        STR      R0,[R10, #+0]
        LDRH     R1,[R5, #+4]
        LDR      R0,[R5, #+0]
        B.N      validate

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        MOVS     R3,#+1
        MOV      R2,R9
        ADD      R1,R5,#+36
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+1]
        B.W      disk_read
// 2585 
// 2586 
// 2587 
// 2588 
// 2589 /*-----------------------------------------------------------------------*/
// 2590 /* Synchronize the File Object                                           */
// 2591 /*-----------------------------------------------------------------------*/
// 2592 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2593 FRESULT f_sync (
// 2594   FIL *fp   /* Pointer to the file object */
// 2595 )
// 2596 {
f_sync:
        PUSH     {R3-R5,LR}
        MOV      R4,R0
// 2597   FRESULT res;
// 2598   DWORD tim;
// 2599   BYTE *dir;
// 2600 
// 2601 
// 2602   res = validate(fp->fs, fp->id);   /* Check validity of the object */
        LDRH     R1,[R4, #+4]
        LDR      R0,[R4, #+0]
        BL       validate
// 2603   if (res == FR_OK) {
        CMP      R0,#+0
        BNE.N    ??f_sync_0
// 2604     if (fp->flag & FA__WRITTEN) { /* Has the file been written? */
        LDRB     R1,[R4, #+6]
        LSLS     R2,R1,#+26
        BPL.N    ??f_sync_0
// 2605 #if !_FS_TINY /* Write-back dirty buffer */
// 2606       if (fp->flag & FA__DIRTY) {
        LSLS     R0,R1,#+25
        BPL.N    ??f_sync_1
// 2607         if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
        MOVS     R3,#+1
        LDR      R2,[R4, #+24]
        ADD      R1,R4,#+36
        LDR      R0,[R4, #+0]
        BL       ??Subroutine6_0
??CrossCallReturnLabel_18:
        CBZ.N    R0,??f_sync_2
// 2608           LEAVE_FF(fp->fs, FR_DISK_ERR);
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}
// 2609         fp->flag &= ~FA__DIRTY;
??f_sync_2:
        LDRB     R0,[R4, #+6]
        AND      R0,R0,#0xBF
        STRB     R0,[R4, #+6]
// 2610       }
// 2611 #endif
// 2612       /* Update the directory entry */
// 2613       res = move_window(fp->fs, fp->dir_sect);
??f_sync_1:
        LDR      R1,[R4, #+28]
        BL       ??Subroutine12_0
// 2614       if (res == FR_OK) {
??CrossCallReturnLabel_42:
        CBNZ.N   R0,??f_sync_0
// 2615         dir = fp->dir_ptr;
        LDR      R5,[R4, #+32]
// 2616         dir[DIR_Attr] |= AM_ARC;          /* Set archive bit */
        LDRB     R0,[R5, #+11]
        ORR      R0,R0,#0x20
        STRB     R0,[R5, #+11]
// 2617         ST_DWORD(dir+DIR_FileSize, fp->fsize);    /* Update file size */
        LDR      R0,[R4, #+12]
        STRB     R0,[R5, #+28]
        LDR      R0,[R4, #+12]
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[R5, #+29]
        LDR      R0,[R4, #+12]
        LSRS     R0,R0,#+16
        STRB     R0,[R5, #+30]
        LDR      R0,[R4, #+12]
        LSRS     R0,R0,#+24
        STRB     R0,[R5, #+31]
// 2618         ST_CLUST(dir, fp->sclust);          /* Update start cluster */
        LDR      R0,[R4, #+16]
        STRB     R0,[R5, #+26]
        LDR      R0,[R4, #+16]
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[R5, #+27]
        LDR      R0,[R4, #+16]
        LSRS     R0,R0,#+16
        STRB     R0,[R5, #+20]
        LDR      R0,[R4, #+16]
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R5, #+21]
// 2619         tim = get_fattime();            /* Update updated time */
        BL       get_fattime
// 2620         ST_DWORD(dir+DIR_WrtTime, tim);
        STRB     R0,[R5, #+22]
        LSLS     R1,R0,#+16
        LSRS     R1,R1,#+24
        STRB     R1,[R5, #+23]
        LSRS     R1,R0,#+16
        STRB     R1,[R5, #+24]
        LSRS     R0,R0,#+24
        STRB     R0,[R5, #+25]
// 2621         fp->flag &= ~FA__WRITTEN;
        LDRB     R0,[R4, #+6]
        AND      R0,R0,#0xDF
        STRB     R0,[R4, #+6]
// 2622         fp->fs->wflag = 1;
        LDR      R0,[R4, #+0]
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
// 2623         res = sync(fp->fs);
        LDR      R0,[R4, #+0]
        POP      {R1,R4,R5,LR}
        B.W      sync
// 2624       }
// 2625     }
// 2626   }
// 2627 
// 2628   LEAVE_FF(fp->fs, res);
??f_sync_0:
        POP      {R1,R4,R5,PC}    ;; return
// 2629 }
// 2630 
// 2631 #endif /* !_FS_READONLY */
// 2632 
// 2633 
// 2634 
// 2635 
// 2636 /*-----------------------------------------------------------------------*/
// 2637 /* Close File                                                            */
// 2638 /*-----------------------------------------------------------------------*/
// 2639 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2640 FRESULT f_close (
// 2641   FIL *fp   /* Pointer to the file object to be closed */
// 2642 )
// 2643 {
f_close:
        PUSH     {R4,LR}
        MOV      R4,R0
// 2644   FRESULT res;
// 2645 
// 2646 #if _FS_READONLY
// 2647   FATFS *fs = fp->fs;
// 2648   res = validate(fs, fp->id);
// 2649   if (res == FR_OK) fp->fs = 0; /* Discard file object */
// 2650   LEAVE_FF(fs, res);
// 2651 
// 2652 #else
// 2653   res = f_sync(fp);   /* Flush cached data */
        BL       f_sync
// 2654 #if _FS_SHARE
// 2655   if (res == FR_OK) {   /* Decrement open counter */
// 2656 #if _FS_REENTRANT
// 2657     res = validate(fp->fs, fp->id);
// 2658     if (res == FR_OK) {
// 2659       res = dec_lock(fp->lockid);
// 2660       unlock_fs(fp->fs, FR_OK);
// 2661     }
// 2662 #else
// 2663     res = dec_lock(fp->lockid);
// 2664 #endif
// 2665   }
// 2666 #endif
// 2667   if (res == FR_OK) fp->fs = 0; /* Discard file object */
        CBNZ.N   R0,??f_close_0
        MOVS     R1,#+0
        STR      R1,[R4, #+0]
// 2668   return res;
??f_close_0:
        POP      {R4,PC}          ;; return
// 2669 #endif
// 2670 }
// 2671 
// 2672 
// 2673 
// 2674 
// 2675 /*-----------------------------------------------------------------------*/
// 2676 /* Current Drive/Directory Handlings                                     */
// 2677 /*-----------------------------------------------------------------------*/
// 2678 
// 2679 #if _FS_RPATH >= 1
// 2680 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2681 FRESULT f_chdrive (
// 2682   BYTE drv    /* Drive number */
// 2683 )
// 2684 {
// 2685   if (drv >= _VOLUMES) return FR_INVALID_DRIVE;
f_chdrive:
        CBZ.N    R0,??f_chdrive_0
        MOVS     R0,#+11
        BX       LR
// 2686 
// 2687   CurrVol = drv;
??f_chdrive_0:
        LDR.N    R0,??DataTable10_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 2688 
// 2689   return FR_OK;
        MOVS     R0,#+0
        BX       LR               ;; return
// 2690 }
// 2691 
// 2692 
// 2693 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2694 FRESULT f_chdir (
// 2695   const TCHAR *path /* Pointer to the directory path */
// 2696 )
// 2697 {
f_chdir:
        PUSH     {R0,LR}
        SUB      SP,SP,#+40
// 2698   FRESULT res;
// 2699   DIR dj;
// 2700   DEF_NAMEBUF;
// 2701 
// 2702 
// 2703   res = chk_mounted(&path, &dj.fs, 0);
        MOVS     R2,#+0
        BL       ?Subroutine21
// 2704   if (res == FR_OK) {
??CrossCallReturnLabel_69:
        CBNZ.N   R0,??f_chdir_0
// 2705     INIT_BUF(dj);
        BL       ?Subroutine22
// 2706     res = follow_path(&dj, path);   /* Follow the path */
// 2707     FREE_BUF();
// 2708     if (res == FR_OK) {         /* Follow completed */
??CrossCallReturnLabel_76:
        CBNZ.N   R0,??f_chdir_1
// 2709       if (!dj.dir) {
        LDR      R1,[SP, #+20]
        CBNZ.N   R1,??f_chdir_2
        LDR      R1,[SP, #+0]
        LDR      R2,[SP, #+8]
        STR      R2,[R1, #+24]
        B.N      ??f_chdir_0
// 2710         dj.fs->cdir = dj.sclust;  /* Start directory itself */
// 2711       } else {
// 2712         if (dj.dir[DIR_Attr] & AM_DIR)  /* Reached to the directory */
??f_chdir_2:
        LDRB     R2,[R1, #+11]
        LSLS     R2,R2,#+27
        BPL.N    ??f_chdir_3
// 2713           dj.fs->cdir = LD_CLUST(dj.dir);
        LDRB     R2,[R1, #+21]
        LDRB     R3,[R1, #+20]
        ORR      R2,R3,R2, LSL #+8
        LDRB     R3,[R1, #+27]
        LDRB     R1,[R1, #+26]
        ORR      R1,R1,R3, LSL #+8
        ORR      R1,R1,R2, LSL #+16
        LDR      R2,[SP, #+0]
        STR      R1,[R2, #+24]
        B.N      ??f_chdir_0
// 2714         else
// 2715           res = FR_NO_PATH;   /* Reached but a file */
// 2716       }
// 2717     }
// 2718     if (res == FR_NO_FILE) res = FR_NO_PATH;
??f_chdir_1:
        CMP      R0,#+4
        BNE.N    ??f_chdir_0
??f_chdir_3:
        MOVS     R0,#+5
// 2719   }
// 2720 
// 2721   LEAVE_FF(dj.fs, res);
??f_chdir_0:
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
// 2722 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine21:
        ADD      R1,SP,#+0
        ADD      R0,SP,#+40
        B.W      chk_mounted
// 2723 
// 2724 
// 2725 #if _FS_RPATH >= 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2726 FRESULT f_getcwd (
// 2727   TCHAR *path,  /* Pointer to the directory path */
// 2728   UINT sz_path  /* Size of path */
// 2729 )
// 2730 {
f_getcwd:
        PUSH     {R0,R4-R7,LR}
        SUB      SP,SP,#+64
        MOV      R4,R1
// 2731   FRESULT res;
// 2732   DIR dj;
// 2733   UINT i, n;
// 2734   DWORD ccl;
// 2735   TCHAR *tp;
// 2736   FILINFO fno;
// 2737   DEF_NAMEBUF;
// 2738 
// 2739 
// 2740   *path = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 2741   res = chk_mounted((const TCHAR**)&path, &dj.fs, 0); /* Get current volume */
        MOVS     R2,#+0
        ADD      R1,SP,#+0
        ADD      R0,SP,#+64
        BL       chk_mounted
        MOVS     R6,R0
// 2742   if (res == FR_OK) {
        BNE.N    ??f_getcwd_0
// 2743     INIT_BUF(dj);
        ADD      R0,SP,#+28
        STR      R0,[SP, #+24]
// 2744     i = sz_path;    /* Bottom of buffer (dir stack base) */
        MOV      R5,R4
// 2745     dj.sclust = dj.fs->cdir;      /* Start to follow upper dir from current dir */
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+8]
        B.N      ??f_getcwd_1
// 2746     while ((ccl = dj.sclust) != 0) {  /* Repeat while current dir is a sub-dir */
// 2747       res = dir_sdi(&dj, 1);      /* Get parent dir */
// 2748       if (res != FR_OK) break;
// 2749       res = dir_read(&dj);
// 2750       if (res != FR_OK) break;
// 2751       dj.sclust = LD_CLUST(dj.dir); /* Goto parent dir */
// 2752       res = dir_sdi(&dj, 0);
// 2753       if (res != FR_OK) break;
// 2754       do {              /* Find the entry links to the child dir */
// 2755         res = dir_read(&dj);
// 2756         if (res != FR_OK) break;
// 2757         if (ccl == LD_CLUST(dj.dir)) break; /* Found the entry */
// 2758         res = dir_next(&dj, 0);
// 2759       } while (res == FR_OK);
// 2760       if (res == FR_NO_FILE) res = FR_INT_ERR;/* It cannot be 'not found'. */
// 2761       if (res != FR_OK) break;
// 2762 #if _USE_LFN
// 2763       fno.lfname = path;
// 2764       fno.lfsize = i;
// 2765 #endif
// 2766       get_fileinfo(&dj, &fno);    /* Get the dir name and push it to the buffer */
// 2767       tp = fno.fname;
// 2768       if (_USE_LFN && *path) tp = path;
// 2769       for (n = 0; tp[n]; n++) ;
// 2770       if (i < n + 3) {
// 2771         res = FR_NOT_ENOUGH_CORE; break;
// 2772       }
// 2773       while (n) path[--i] = tp[--n];
??f_getcwd_2:
        SUBS     R0,R0,#+1
        ADD      R1,SP,#+40
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+9]
        LDR      R2,[SP, #+64]
        STRB     R1,[R5, R2]
??f_getcwd_3:
        SUBS     R5,R5,#+1
        CMP      R0,#+0
        BNE.N    ??f_getcwd_2
// 2774       path[--i] = '/';
        LDR      R0,[SP, #+64]
        MOVS     R1,#+47
        STRB     R1,[R5, R0]
??f_getcwd_1:
        LDR      R7,[SP, #+8]
        CMP      R7,#+0
        BEQ.N    ??f_getcwd_4
        MOVS     R1,#+1
        ADD      R0,SP,#+0
        BL       dir_sdi
        MOVS     R6,R0
        BNE.N    ??f_getcwd_4
        ADD      R0,SP,#+0
        BL       dir_read
        MOVS     R6,R0
        BNE.N    ??f_getcwd_4
        BL       ?Subroutine20
??CrossCallReturnLabel_66:
        STR      R0,[SP, #+8]
        MOVS     R1,#+0
        ADD      R0,SP,#+0
        BL       dir_sdi
        MOVS     R6,R0
        BNE.N    ??f_getcwd_4
??f_getcwd_5:
        ADD      R0,SP,#+0
        BL       dir_read
        MOVS     R6,R0
        BNE.N    ??f_getcwd_6
        BL       ?Subroutine20
??CrossCallReturnLabel_67:
        CMP      R7,R0
        BEQ.N    ??f_getcwd_7
        MOVS     R1,#+0
        ADD      R0,SP,#+0
        BL       dir_next
        MOVS     R6,R0
        BEQ.N    ??f_getcwd_5
??f_getcwd_6:
        CMP      R6,#+4
        BNE.N    ??f_getcwd_8
        MOVS     R6,#+2
        B.N      ??f_getcwd_9
??f_getcwd_8:
        CBNZ.N   R6,??f_getcwd_4
??f_getcwd_7:
        ADD      R1,SP,#+40
        ADD      R0,SP,#+0
        BL       get_fileinfo
        MOVS     R0,#+0
        B.N      ??f_getcwd_10
??f_getcwd_11:
        ADDS     R0,R0,#+1
??f_getcwd_10:
        ADD      R1,SP,#+40
        ADDS     R1,R0,R1
        LDRSB    R1,[R1, #+9]
        CMP      R1,#+0
        BNE.N    ??f_getcwd_11
        ADDS     R1,R0,#+3
        CMP      R5,R1
        BCS.N    ??f_getcwd_3
        MOVS     R6,#+17
??f_getcwd_9:
        LDR      R0,[SP, #+64]
        B.N      ??f_getcwd_12
// 2775     }
// 2776     tp = path;
??f_getcwd_4:
        LDR      R0,[SP, #+64]
// 2777     if (res == FR_OK) {
        MOVS     R1,R6
        BNE.N    ??f_getcwd_12
// 2778       *tp++ = '0' + CurrVol;      /* Put drive number */
        LDR.W    R1,??DataTable11
        LDRSB    R1,[R1, #+0]
        ADDS     R1,R1,#+48
        STRB     R1,[R0], #+1
// 2779       *tp++ = ':';
        MOVS     R1,#+58
        STRB     R1,[R0], #+1
// 2780       if (i == sz_path) {       /* Root-dir */
        CMP      R5,R4
        BNE.N    ??f_getcwd_13
// 2781         *tp++ = '/';
        MOVS     R1,#+47
        STRB     R1,[R0], #+1
        B.N      ??f_getcwd_12
// 2782       } else {            /* Sub-dir */
// 2783         do    /* Add stacked path str */
// 2784           *tp++ = path[i++];
??f_getcwd_13:
        LDR      R1,[SP, #+64]
        LDRB     R1,[R5, R1]
        STRB     R1,[R0], #+1
        ADDS     R5,R5,#+1
// 2785         while (i < sz_path);
        CMP      R5,R4
        BCC.N    ??f_getcwd_13
// 2786       }
// 2787     }
// 2788     *tp = 0;
??f_getcwd_12:
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 2789     FREE_BUF();
// 2790   }
// 2791 
// 2792   LEAVE_FF(dj.fs, res);
??f_getcwd_0:
        MOV      R0,R6
        ADD      SP,SP,#+68
        POP      {R4-R7,PC}       ;; return
// 2793 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0x544146

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     CurrVol

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     0x41615252

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     0x61417272

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine20:
        LDR      R0,[SP, #+20]
        LDRB     R1,[R0, #+21]
        LDRB     R2,[R0, #+20]
        ORR      R1,R2,R1, LSL #+8
        LDRB     R2,[R0, #+27]
        LDRB     R0,[R0, #+26]
        ORR      R0,R0,R2, LSL #+8
        ORR      R0,R0,R1, LSL #+16
        BX       LR
// 2794 #endif /* _FS_RPATH >= 2 */
// 2795 #endif /* _FS_RPATH >= 1 */
// 2796 
// 2797 
// 2798 
// 2799 #if _FS_MINIMIZE <= 2
// 2800 /*-----------------------------------------------------------------------*/
// 2801 /* Seek File R/W Pointer                                                 */
// 2802 /*-----------------------------------------------------------------------*/
// 2803 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2804 FRESULT f_lseek (
// 2805   FIL *fp,    /* Pointer to the file object */
// 2806   DWORD ofs   /* File pointer from top of file */
// 2807 )
// 2808 {
f_lseek:
        PUSH     {R4-R8,LR}
        BL       ?Subroutine3
// 2809   FRESULT res;
// 2810 
// 2811 
// 2812   res = validate(fp->fs, fp->id);   /* Check validity of the object */
??CrossCallReturnLabel_8:
        MOVS     R8,R0
// 2813   if (res != FR_OK) LEAVE_FF(fp->fs, res);
        BNE.W    ??f_lseek_0
// 2814   if (fp->flag & FA__ERROR)     /* Check abort flag */
        LDRB     R0,[R4, #+6]
        LSLS     R1,R0,#+24
        BMI.N    ??f_lseek_1
// 2815     LEAVE_FF(fp->fs, FR_INT_ERR);
// 2816 
// 2817 #if _USE_FASTSEEK
// 2818   if (fp->cltbl) {  /* Fast seek */
// 2819     DWORD cl, pcl, ncl, tcl, dsc, tlen, ulen, *tbl;
// 2820 
// 2821     if (ofs == CREATE_LINKMAP) {  /* Create CLMT */
// 2822       tbl = fp->cltbl;
// 2823       tlen = *tbl++; ulen = 2;  /* Given table size and required table size */
// 2824       cl = fp->sclust;      /* Top of the chain */
// 2825       if (cl) {
// 2826         do {
// 2827           /* Get a fragment */
// 2828           tcl = cl; ncl = 0; ulen += 2; /* Top, length and used items */
// 2829           do {
// 2830             pcl = cl; ncl++;
// 2831             cl = get_fat(fp->fs, cl);
// 2832             if (cl <= 1) ABORT(fp->fs, FR_INT_ERR);
// 2833             if (cl == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
// 2834           } while (cl == pcl + 1);
// 2835           if (ulen <= tlen) {   /* Store the length and top of the fragment */
// 2836             *tbl++ = ncl; *tbl++ = tcl;
// 2837           }
// 2838         } while (cl < fp->fs->n_fatent);  /* Repeat until end of chain */
// 2839       }
// 2840       *fp->cltbl = ulen;  /* Number of items used */
// 2841       if (ulen <= tlen)
// 2842         *tbl = 0;   /* Terminate table */
// 2843       else
// 2844         res = FR_NOT_ENOUGH_CORE; /* Given table size is smaller than required */
// 2845 
// 2846     } else {            /* Fast seek */
// 2847       if (ofs > fp->fsize)    /* Clip offset at the file size */
// 2848         ofs = fp->fsize;
// 2849       fp->fptr = ofs;       /* Set file pointer */
// 2850       if (ofs) {
// 2851         fp->clust = clmt_clust(fp, ofs - 1);
// 2852         dsc = clust2sect(fp->fs, fp->clust);
// 2853         if (!dsc) ABORT(fp->fs, FR_INT_ERR);
// 2854         dsc += (ofs - 1) / SS(fp->fs) & (fp->fs->csize - 1);
// 2855         if (fp->fptr % SS(fp->fs) && dsc != fp->dsect) {  /* Refill sector cache if needed */
// 2856 #if !_FS_TINY
// 2857 #if !_FS_READONLY
// 2858           if (fp->flag & FA__DIRTY) {   /* Write-back dirty sector cache */
// 2859             if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
// 2860               ABORT(fp->fs, FR_DISK_ERR);
// 2861             fp->flag &= ~FA__DIRTY;
// 2862           }
// 2863 #endif
// 2864           if (disk_read(fp->fs->drv, fp->buf, dsc, 1) != RES_OK)  /* Load current sector */
// 2865             ABORT(fp->fs, FR_DISK_ERR);
// 2866 #endif
// 2867           fp->dsect = dsc;
// 2868         }
// 2869       }
// 2870     }
// 2871   } else
// 2872 #endif
// 2873 
// 2874   /* Normal Seek */
// 2875   {
// 2876     DWORD clst, bcs, nsect, ifptr;
// 2877 
// 2878     if (ofs > fp->fsize         /* In read-only mode, clip offset with the file size */
// 2879 #if !_FS_READONLY
// 2880        && !(fp->flag & FA_WRITE)
// 2881 #endif
// 2882       ) ofs = fp->fsize;
        LDR      R1,[R4, #+12]
        CMP      R1,R5
        BCS.N    ??f_lseek_2
        LSLS     R0,R0,#+30
        IT       PL 
        MOVPL    R5,R1
// 2883 
// 2884     ifptr = fp->fptr;
??f_lseek_2:
        LDR      R1,[R4, #+8]
// 2885     fp->fptr = nsect = 0;
        MOVS     R7,#+0
        STR      R7,[R4, #+8]
// 2886     if (ofs) {
        CMP      R5,#+0
        BEQ.N    ??f_lseek_3
// 2887       bcs = (DWORD)fp->fs->csize * SS(fp->fs);  /* Cluster size (byte) */
        LDR      R0,[R4, #+0]
        LDRB     R2,[R0, #+2]
        LSLS     R6,R2,#+9
// 2888       if (ifptr > 0 &&
// 2889         (ofs - 1) / bcs >= (ifptr - 1) / bcs) { /* When seek to same or following cluster, */
        CBZ.N    R1,??f_lseek_4
        SUBS     R1,R1,#+1
        UDIV     R2,R1,R6
        SUBS     R3,R5,#+1
        UDIV     R3,R3,R6
        CMP      R3,R2
        BCC.N    ??f_lseek_4
// 2890         fp->fptr = (ifptr - 1) & ~(bcs - 1);  /* start from the current cluster */
        SUBS     R0,R6,#+1
        BIC      R0,R1,R0
        STR      R0,[R4, #+8]
// 2891         ofs -= fp->fptr;
        SUBS     R5,R5,R0
// 2892         clst = fp->clust;
        LDR      R1,[R4, #+20]
        B.N      ??f_lseek_5
// 2893       } else {                  /* When seek to back cluster, */
// 2894         clst = fp->sclust;            /* start from the first cluster */
??f_lseek_4:
        LDR      R1,[R4, #+16]
// 2895 #if !_FS_READONLY
// 2896         if (clst == 0) {            /* If no cluster chain, create a new chain */
        CBNZ.N   R1,??f_lseek_6
// 2897           clst = create_chain(fp->fs, 0);
        BL       create_chain
        MOV      R1,R0
// 2898           if (clst == 1) ABORT(fp->fs, FR_INT_ERR);
        CMP      R1,#+1
        BEQ.N    ??f_lseek_7
// 2899           if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
        CMN      R1,#+1
        BEQ.N    ??f_lseek_8
// 2900           fp->sclust = clst;
        STR      R1,[R4, #+16]
// 2901         }
// 2902 #endif
// 2903         fp->clust = clst;
??f_lseek_6:
        STR      R1,[R4, #+20]
// 2904       }
// 2905       if (clst != 0) {
??f_lseek_5:
        CBNZ.N   R1,??f_lseek_9
        B.N      ??f_lseek_3
// 2906         while (ofs > bcs) {           /* Cluster following loop */
// 2907 #if !_FS_READONLY
// 2908           if (fp->flag & FA_WRITE) {      /* Check if in write mode or not */
// 2909             clst = create_chain(fp->fs, clst);  /* Force stretch if in write mode */
// 2910             if (clst == 0) {        /* When disk gets full, clip file size */
// 2911               ofs = bcs; break;
// 2912             }
// 2913           } else
// 2914 #endif
// 2915             clst = get_fat(fp->fs, clst); /* Follow cluster chain if not in write mode */
??f_lseek_10:
        BL       get_fat
        MOV      R1,R0
// 2916           if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
??f_lseek_11:
        CMN      R1,#+1
        BEQ.N    ??f_lseek_8
// 2917           if (clst <= 1 || clst >= fp->fs->n_fatent) ABORT(fp->fs, FR_INT_ERR);
        CMP      R1,#+2
        BCC.N    ??f_lseek_7
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        CMP      R1,R0
        BCS.N    ??f_lseek_7
// 2918           fp->clust = clst;
        STR      R1,[R4, #+20]
// 2919           fp->fptr += bcs;
        LDR      R0,[R4, #+8]
        ADDS     R0,R6,R0
        STR      R0,[R4, #+8]
// 2920           ofs -= bcs;
        SUBS     R5,R5,R6
??f_lseek_9:
        CMP      R6,R5
        BCS.N    ??f_lseek_12
        LDR      R0,[R4, #+0]
        LDRB     R2,[R4, #+6]
        LSLS     R2,R2,#+30
        BPL.N    ??f_lseek_10
        BL       create_chain
        MOVS     R1,R0
        BNE.N    ??f_lseek_11
        MOV      R5,R6
// 2921         }
// 2922         fp->fptr += ofs;
??f_lseek_12:
        LDR      R0,[R4, #+8]
        ADDS     R0,R5,R0
        STR      R0,[R4, #+8]
// 2923         if (ofs % SS(fp->fs)) {
        LSLS     R0,R5,#+23
        BEQ.N    ??f_lseek_3
// 2924           nsect = clust2sect(fp->fs, clst); /* Current sector */
        BL       ??Subroutine18_0
??CrossCallReturnLabel_61:
        MOVS     R7,R0
// 2925           if (!nsect) ABORT(fp->fs, FR_INT_ERR);
        BNE.N    ??f_lseek_13
??f_lseek_7:
        LDRB     R0,[R4, #+6]
        ORR      R0,R0,#0x80
        STRB     R0,[R4, #+6]
??f_lseek_1:
        MOVS     R0,#+2
        B.N      ??f_lseek_14
// 2926           nsect += ofs / SS(fp->fs);
??f_lseek_13:
        ADD      R7,R0,R5, LSR #+9
// 2927         }
// 2928       }
// 2929     }
// 2930     if (fp->fptr % SS(fp->fs) && nsect != fp->dsect) {  /* Fill sector cache if needed */
??f_lseek_3:
        LDR      R0,[R4, #+8]
        LSLS     R0,R0,#+23
        ITT      NE 
        LDRNE    R2,[R4, #+24]
        CMPNE    R7,R2
        BEQ.N    ??f_lseek_15
// 2931 #if !_FS_TINY
// 2932 #if !_FS_READONLY
// 2933       if (fp->flag & FA__DIRTY) {     /* Write-back dirty sector cache */
        LDRB     R0,[R4, #+6]
        LSLS     R0,R0,#+25
        BPL.N    ??f_lseek_16
// 2934         if (disk_write(fp->fs->drv, fp->buf, fp->dsect, 1) != RES_OK)
        MOVS     R3,#+1
        ADD      R1,R4,#+36
        LDR      R0,[R4, #+0]
        BL       ??Subroutine6_0
??CrossCallReturnLabel_17:
        CBNZ.N   R0,??f_lseek_8
// 2935           ABORT(fp->fs, FR_DISK_ERR);
// 2936         fp->flag &= ~FA__DIRTY;
        LDRB     R0,[R4, #+6]
        AND      R0,R0,#0xBF
        STRB     R0,[R4, #+6]
// 2937       }
// 2938 #endif
// 2939       if (disk_read(fp->fs->drv, fp->buf, nsect, 1) != RES_OK)  /* Fill sector cache */
??f_lseek_16:
        MOVS     R3,#+1
        MOV      R2,R7
        ADD      R1,R4,#+36
        LDR      R0,[R4, #+0]
        LDRB     R0,[R0, #+1]
        BL       disk_read
        CBZ.N    R0,??f_lseek_17
// 2940         ABORT(fp->fs, FR_DISK_ERR);
??f_lseek_8:
        LDRB     R0,[R4, #+6]
        ORR      R0,R0,#0x80
        STRB     R0,[R4, #+6]
        MOVS     R0,#+1
        B.N      ??f_lseek_14
// 2941 #endif
// 2942       fp->dsect = nsect;
??f_lseek_17:
        STR      R7,[R4, #+24]
// 2943     }
// 2944 #if !_FS_READONLY
// 2945     if (fp->fptr > fp->fsize) {     /* Set file change flag if the file size is extended */
??f_lseek_15:
        LDR      R0,[R4, #+8]
        LDR      R1,[R4, #+12]
        CMP      R1,R0
        BCS.N    ??f_lseek_0
// 2946       fp->fsize = fp->fptr;
        STR      R0,[R4, #+12]
// 2947       fp->flag |= FA__WRITTEN;
        LDRB     R0,[R4, #+6]
        ORR      R0,R0,#0x20
        STRB     R0,[R4, #+6]
// 2948     }
// 2949 #endif
// 2950   }
// 2951 
// 2952   LEAVE_FF(fp->fs, res);
??f_lseek_0:
        MOV      R0,R8
??f_lseek_14:
        POP      {R4-R8,PC}       ;; return
// 2953 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine6:
        ADD      R1,R5,#+36
        LDR      R0,[R5, #+0]
??Subroutine6_0:
        LDRB     R0,[R0, #+1]
        B.W      disk_write
// 2954 
// 2955 
// 2956 
// 2957 #if _FS_MINIMIZE <= 1
// 2958 /*-----------------------------------------------------------------------*/
// 2959 /* Create a Directroy Object                                             */
// 2960 /*-----------------------------------------------------------------------*/
// 2961 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2962 FRESULT f_opendir (
// 2963   DIR *dj,      /* Pointer to directory object to create */
// 2964   const TCHAR *path /* Pointer to the directory path */
// 2965 )
// 2966 {
f_opendir:
        PUSH     {R1,R4,LR}
        SUB      SP,SP,#+12
        MOV      R4,R0
// 2967   FRESULT res;
// 2968   DEF_NAMEBUF;
// 2969 
// 2970 
// 2971   res = chk_mounted(&path, &dj->fs, 0);
        MOVS     R2,#+0
        MOV      R1,R4
        ADD      R0,SP,#+12
        BL       chk_mounted
// 2972   if (res == FR_OK) {
        CBNZ.N   R0,??f_opendir_0
// 2973     INIT_BUF(*dj);
        ADD      R0,SP,#+0
        STR      R0,[R4, #+24]
// 2974     res = follow_path(dj, path);      /* Follow the path to the directory */
        LDR      R1,[SP, #+12]
        MOV      R0,R4
        BL       follow_path
// 2975     FREE_BUF();
// 2976     if (res == FR_OK) {           /* Follow completed */
        CBNZ.N   R0,??CrossCallReturnLabel_29
// 2977       if (dj->dir) {            /* It is not the root dir */
        LDR      R0,[R4, #+20]
        CBZ.N    R0,??CrossCallReturnLabel_65
// 2978         if (dj->dir[DIR_Attr] & AM_DIR) { /* The object is a directory */
        LDRB     R1,[R0, #+11]
        LSLS     R1,R1,#+27
        BPL.N    ??f_opendir_1
// 2979           dj->sclust = LD_CLUST(dj->dir);
        BL       ?Subroutine19
// 2980         } else {            /* The object is not a directory */
// 2981           res = FR_NO_PATH;
// 2982         }
// 2983       }
// 2984       if (res == FR_OK) {
// 2985         dj->id = dj->fs->id;
??CrossCallReturnLabel_65:
        LDR      R0,[R4, #+0]
        LDRH     R0,[R0, #+6]
        STRH     R0,[R4, #+4]
// 2986         res = dir_sdi(dj, 0);     /* Rewind dir */
        BL       ?Subroutine9
// 2987       }
// 2988     }
// 2989     if (res == FR_NO_FILE) res = FR_NO_PATH;
??CrossCallReturnLabel_29:
        CMP      R0,#+4
        BNE.N    ??f_opendir_0
??f_opendir_1:
        MOVS     R0,#+5
// 2990   }
// 2991 
// 2992   LEAVE_FF(dj->fs, res);
??f_opendir_0:
        ADD      SP,SP,#+16
        POP      {R4,PC}          ;; return
// 2993 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine19:
        LDRB     R1,[R0, #+21]
        LDRB     R2,[R0, #+20]
        ORR      R1,R2,R1, LSL #+8
        LDRB     R2,[R0, #+27]
        LDRB     R0,[R0, #+26]
        ORR      R0,R0,R2, LSL #+8
        ORR      R0,R0,R1, LSL #+16
        STR      R0,[R4, #+8]
        BX       LR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine9:
        MOVS     R1,#+0
        MOV      R0,R4
        B.W      dir_sdi
// 2994 
// 2995 
// 2996 
// 2997 
// 2998 /*-----------------------------------------------------------------------*/
// 2999 /* Read Directory Entry in Sequense                                      */
// 3000 /*-----------------------------------------------------------------------*/
// 3001 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3002 FRESULT f_readdir (
// 3003   DIR *dj,      /* Pointer to the open directory object */
// 3004   FILINFO *fno    /* Pointer to file information to return */
// 3005 )
// 3006 {
f_readdir:
        PUSH     {R1-R5,LR}
        BL       ?Subroutine3
// 3007   FRESULT res;
// 3008   DEF_NAMEBUF;
// 3009 
// 3010 
// 3011   res = validate(dj->fs, dj->id);     /* Check validity of the object */
// 3012   if (res == FR_OK) {
??CrossCallReturnLabel_7:
        CBNZ.N   R0,??f_readdir_0
// 3013     if (!fno) {
        CBNZ.N   R5,??f_readdir_1
// 3014       res = dir_sdi(dj, 0);     /* Rewind the directory object */
        BL       ?Subroutine9
// 3015     } else {
??CrossCallReturnLabel_28:
        POP      {R1-R5,PC}
// 3016       INIT_BUF(*dj);
??f_readdir_1:
        ADD      R0,SP,#+0
        STR      R0,[R4, #+24]
// 3017       res = dir_read(dj);       /* Read an directory item */
        MOV      R0,R4
        BL       dir_read
// 3018       if (res == FR_NO_FILE) {    /* Reached end of dir */
        CMP      R0,#+4
        BNE.N    ??f_readdir_2
// 3019         dj->sect = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+16]
// 3020         res = FR_OK;
        B.N      ??f_readdir_3
// 3021       }
// 3022       if (res == FR_OK) {       /* A valid entry is found */
??f_readdir_2:
        CBNZ.N   R0,??f_readdir_0
// 3023         get_fileinfo(dj, fno);    /* Get the object information */
??f_readdir_3:
        MOV      R1,R5
        MOV      R0,R4
        BL       get_fileinfo
// 3024         res = dir_next(dj, 0);    /* Increment index for next */
        BL       ?Subroutine7
// 3025         if (res == FR_NO_FILE) {
??CrossCallReturnLabel_22:
        CMP      R0,#+4
        ITT      EQ 
        MOVEQ    R0,#+0
        STREQ    R0,[R4, #+16]
// 3026           dj->sect = 0;
// 3027           res = FR_OK;
// 3028         }
// 3029       }
// 3030       FREE_BUF();
// 3031     }
// 3032   }
// 3033 
// 3034   LEAVE_FF(dj->fs, res);
??f_readdir_0:
        POP      {R1-R5,PC}       ;; return
// 3035 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine3:
        MOV      R4,R0
        MOV      R5,R1
        LDRH     R1,[R4, #+4]
        LDR      R0,[R4, #+0]
        B.W      validate
// 3036 
// 3037 
// 3038 
// 3039 #if _FS_MINIMIZE == 0
// 3040 /*-----------------------------------------------------------------------*/
// 3041 /* Get File Status                                                       */
// 3042 /*-----------------------------------------------------------------------*/
// 3043 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3044 FRESULT f_stat (
// 3045   const TCHAR *path,  /* Pointer to the file path */
// 3046   FILINFO *fno    /* Pointer to file information to return */
// 3047 )
// 3048 {
f_stat:
        PUSH     {R0,R4,R5,LR}
        SUB      SP,SP,#+40
        MOV      R4,R1
// 3049   FRESULT res;
// 3050   DIR dj;
// 3051   DEF_NAMEBUF;
// 3052 
// 3053 
// 3054   res = chk_mounted(&path, &dj.fs, 0);
        MOVS     R2,#+0
        ADD      R1,SP,#+12
        ADD      R0,SP,#+40
        BL       chk_mounted
        MOVS     R5,R0
// 3055   if (res == FR_OK) {
        BNE.N    ??f_stat_0
// 3056     INIT_BUF(dj);
        ADD      R0,SP,#+0
        STR      R0,[SP, #+36]
// 3057     res = follow_path(&dj, path); /* Follow the file path */
        LDR      R1,[SP, #+40]
        ADD      R0,SP,#+12
        BL       follow_path
        MOVS     R5,R0
// 3058     if (res == FR_OK) {       /* Follow completed */
        BNE.N    ??f_stat_0
// 3059       if (dj.dir)   /* Found an object */
        LDR      R0,[SP, #+32]
        CBZ.N    R0,??f_stat_1
// 3060         get_fileinfo(&dj, fno);
        MOV      R1,R4
        ADD      R0,SP,#+12
        BL       get_fileinfo
        B.N      ??f_stat_0
// 3061       else      /* It is root dir */
// 3062         res = FR_INVALID_NAME;
??f_stat_1:
        MOVS     R5,#+6
// 3063     }
// 3064     FREE_BUF();
// 3065   }
// 3066 
// 3067   LEAVE_FF(dj.fs, res);
??f_stat_0:
        MOV      R0,R5
        ADD      SP,SP,#+44
        POP      {R4,R5,PC}       ;; return
// 3068 }
// 3069 
// 3070 
// 3071 
// 3072 #if !_FS_READONLY
// 3073 /*-----------------------------------------------------------------------*/
// 3074 /* Get Number of Free Clusters                                           */
// 3075 /*-----------------------------------------------------------------------*/
// 3076 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3077 FRESULT f_getfree (
// 3078   const TCHAR *path,  /* Pointer to the logical drive number (root dir) */
// 3079   DWORD *nclst,   /* Pointer to the variable to return number of free clusters */
// 3080   FATFS **fatfs   /* Pointer to pointer to corresponding file system object to return */
// 3081 )
// 3082 {
f_getfree:
        PUSH     {R0,R4-R10,LR}
        SUB      SP,SP,#+4
        MOV      R8,R1
        MOV      R6,R2
// 3083   FRESULT res;
// 3084   DWORD n, clst, sect, stat;
// 3085   UINT i;
// 3086   BYTE fat, *p;
// 3087 
// 3088 
// 3089   /* Get drive number */
// 3090   res = chk_mounted(&path, fatfs, 0);
        MOVS     R2,#+0
        MOV      R1,R6
        ADD      R0,SP,#+4
        BL       chk_mounted
        MOVS     R9,R0
// 3091   if (res == FR_OK) {
        BNE.N    ??f_getfree_0
// 3092     /* If free_clust is valid, return it without full cluster scan */
// 3093     if ((*fatfs)->free_clust <= (*fatfs)->n_fatent - 2) {
        LDR      R0,[R6, #+0]
        LDR      R1,[R0, #+16]
        LDR      R4,[R0, #+28]
        SUBS     R2,R4,#+2
        CMP      R2,R1
        IT       CS 
        STRCS    R1,[R8, #+0]
// 3094       *nclst = (*fatfs)->free_clust;
        BCS.N    ??f_getfree_0
// 3095     } else {
// 3096       /* Get number of free clusters */
// 3097       fat = (*fatfs)->fs_type;
        LDRB     R7,[R0, #+0]
// 3098       n = 0;
        MOVS     R5,#+0
// 3099       if (fat == FS_FAT12) {
        CMP      R7,#+1
        BNE.N    ??f_getfree_1
// 3100         clst = 2;
        MOVS     R4,#+2
// 3101         do {
// 3102           stat = get_fat(*fatfs, clst);
??f_getfree_2:
        MOV      R1,R4
        LDR      R0,[R6, #+0]
        BL       get_fat
// 3103           if (stat == 0xFFFFFFFF) { res = FR_DISK_ERR; break; }
        CMN      R0,#+1
        BNE.N    ??f_getfree_3
        MOV      R9,#+1
        B.N      ??f_getfree_4
// 3104           if (stat == 1) { res = FR_INT_ERR; break; }
??f_getfree_3:
        CMP      R0,#+1
        BNE.N    ??f_getfree_5
        MOV      R9,#+2
        B.N      ??f_getfree_4
// 3105           if (stat == 0) n++;
??f_getfree_5:
        CBNZ.N   R0,??f_getfree_6
        ADDS     R5,R5,#+1
// 3106         } while (++clst < (*fatfs)->n_fatent);
??f_getfree_6:
        ADDS     R4,R4,#+1
        LDR      R0,[R6, #+0]
        LDR      R0,[R0, #+28]
        CMP      R4,R0
        BCC.N    ??f_getfree_2
        B.N      ??f_getfree_4
// 3107       } else {
// 3108         clst = (*fatfs)->n_fatent;
// 3109         sect = (*fatfs)->fatbase;
??f_getfree_1:
        LDR      R10,[R0, #+36]
// 3110         i = 0; p = 0;
        B.N      ??f_getfree_7
// 3111         do {
// 3112           if (!i) {
??f_getfree_8:
        CBNZ.N   R1,??f_getfree_9
// 3113             res = move_window(*fatfs, sect++);
??f_getfree_7:
        MOV      R1,R10
        LDR      R0,[R6, #+0]
        BL       move_window
        MOVS     R9,R0
        ADD      R10,R10,#+1
// 3114             if (res != FR_OK) break;
        BNE.N    ??f_getfree_4
// 3115             p = (*fatfs)->win;
        LDR      R0,[R6, #+0]
        ADDS     R0,R0,#+52
// 3116             i = SS(*fatfs);
        MOV      R1,#+512
// 3117           }
// 3118           if (fat == FS_FAT16) {
??f_getfree_9:
        ADDS     R2,R5,#+1
        CMP      R7,#+2
        BNE.N    ??f_getfree_10
// 3119             if (LD_WORD(p) == 0) n++;
        LDRB     R3,[R0, #+1]
        LDRB     R12,[R0, #+0]
        ORRS     R3,R12,R3, LSL #+8
        IT       EQ 
        MOVEQ    R5,R2
// 3120             p += 2; i -= 2;
        ADDS     R0,R0,#+2
        SUBS     R1,R1,#+2
        B.N      ??f_getfree_11
// 3121           } else {
// 3122             if ((LD_DWORD(p) & 0x0FFFFFFF) == 0) n++;
??f_getfree_10:
        LDRB     R3,[R0, #+3]
        LDRB     R12,[R0, #+2]
        LSL      R12,R12,#+16
        ORR      R3,R12,R3, LSL #+24
        LDRB     R12,[R0, #+1]
        ORR      R3,R3,R12, LSL #+8
        LDRB     R12,[R0, #+0]
        ORR      R3,R12,R3
        LSLS     R3,R3,#+4
        IT       EQ 
        MOVEQ    R5,R2
// 3123             p += 4; i -= 4;
        ADDS     R0,R0,#+4
        SUBS     R1,R1,#+4
// 3124           }
// 3125         } while (--clst);
??f_getfree_11:
        SUBS     R4,R4,#+1
        BNE.N    ??f_getfree_8
// 3126       }
// 3127       (*fatfs)->free_clust = n;
??f_getfree_4:
        LDR      R0,[R6, #+0]
        STR      R5,[R0, #+16]
// 3128       if (fat == FS_FAT32) (*fatfs)->fsi_flag = 1;
        CMP      R7,#+3
        ITT      EQ 
        MOVEQ    R1,#+1
        STRBEQ   R1,[R0, #+5]
// 3129       *nclst = n;
        STR      R5,[R8, #+0]
// 3130     }
// 3131   }
// 3132   LEAVE_FF(*fatfs, res);
??f_getfree_0:
        MOV      R0,R9
        POP      {R1,R2,R4-R10,PC}  ;; return
// 3133 }
// 3134 
// 3135 
// 3136 
// 3137 
// 3138 /*-----------------------------------------------------------------------*/
// 3139 /* Truncate File                                                         */
// 3140 /*-----------------------------------------------------------------------*/
// 3141 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3142 FRESULT f_truncate (
// 3143   FIL *fp   /* Pointer to the file object */
// 3144 )
// 3145 {
f_truncate:
        PUSH     {R4-R6,LR}
        MOV      R5,R0
// 3146   FRESULT res;
// 3147   DWORD ncl;
// 3148 
// 3149 
// 3150   res = validate(fp->fs, fp->id);   /* Check validity of the object */
        LDRH     R1,[R5, #+4]
        LDR      R0,[R5, #+0]
        BL       validate
        MOVS     R4,R0
// 3151   if (res == FR_OK) {
        BNE.N    ??f_truncate_0
// 3152     if (fp->flag & FA__ERROR) {     /* Check abort flag */
        LDRB     R0,[R5, #+6]
        LSLS     R1,R0,#+24
        IT       MI 
        MOVMI    R4,#+2
// 3153       res = FR_INT_ERR;
        BMI.N    ??f_truncate_0
// 3154     } else {
// 3155       if (!(fp->flag & FA_WRITE))   /* Check access mode */
        LSLS     R1,R0,#+30
        IT       PL 
        MOVPL    R4,#+7
// 3156         res = FR_DENIED;
        BPL.N    ??f_truncate_0
// 3157     }
// 3158   }
// 3159   if (res == FR_OK) {
// 3160     if (fp->fsize > fp->fptr) {
        LDR      R1,[R5, #+8]
        LDR      R2,[R5, #+12]
        CMP      R1,R2
        BCS.N    ??f_truncate_0
// 3161       fp->fsize = fp->fptr; /* Set file size to current R/W point */
        STR      R1,[R5, #+12]
// 3162       fp->flag |= FA__WRITTEN;
        ORR      R0,R0,#0x20
        STRB     R0,[R5, #+6]
// 3163       if (fp->fptr == 0) {  /* When set file size to zero, remove entire cluster chain */
        LDR      R0,[R5, #+0]
        CBNZ.N   R1,??f_truncate_1
// 3164         res = remove_chain(fp->fs, fp->sclust);
        LDR      R1,[R5, #+16]
        BL       remove_chain
        MOV      R4,R0
// 3165         fp->sclust = 0;
        MOVS     R0,#+0
        STR      R0,[R5, #+16]
        B.N      ??f_truncate_2
// 3166       } else {        /* When truncate a part of the file, remove remaining clusters */
// 3167         ncl = get_fat(fp->fs, fp->clust);
??f_truncate_1:
        LDR      R1,[R5, #+20]
        BL       get_fat
        MOV      R6,R0
// 3168         res = FR_OK;
// 3169         if (ncl == 0xFFFFFFFF) res = FR_DISK_ERR;
        CMN      R6,#+1
        IT       EQ 
        MOVEQ    R4,#+1
        BEQ.N    ??f_truncate_3
// 3170         if (ncl == 1) res = FR_INT_ERR;
        CMP      R6,#+1
        IT       EQ 
        MOVEQ    R4,#+2
        BEQ.N    ??f_truncate_3
// 3171         if (res == FR_OK && ncl < fp->fs->n_fatent) {
        LDR      R0,[R5, #+0]
        LDR      R1,[R0, #+28]
        CMP      R6,R1
        BCS.N    ??f_truncate_0
// 3172           res = put_fat(fp->fs, fp->clust, 0x0FFFFFFF);
        MVN      R2,#-268435456
        LDR      R1,[R5, #+20]
        BL       put_fat
        MOVS     R4,R0
// 3173           if (res == FR_OK) res = remove_chain(fp->fs, ncl);
        BNE.N    ??f_truncate_2
        MOV      R1,R6
        LDR      R0,[R5, #+0]
        BL       remove_chain
        MOV      R4,R0
// 3174         }
// 3175       }
// 3176     }
// 3177     if (res != FR_OK) fp->flag |= FA__ERROR;
??f_truncate_2:
        CBZ.N    R4,??f_truncate_0
??f_truncate_3:
        LDRB     R0,[R5, #+6]
        ORR      R0,R0,#0x80
        STRB     R0,[R5, #+6]
// 3178   }
// 3179 
// 3180   LEAVE_FF(fp->fs, res);
??f_truncate_0:
        MOV      R0,R4
        POP      {R4-R6,PC}       ;; return
// 3181 }
// 3182 
// 3183 
// 3184 
// 3185 
// 3186 /*-----------------------------------------------------------------------*/
// 3187 /* Delete a File or Directory                                            */
// 3188 /*-----------------------------------------------------------------------*/
// 3189 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3190 FRESULT f_unlink (
// 3191   const TCHAR *path   /* Pointer to the file or directory path */
// 3192 )
// 3193 {
f_unlink:
        PUSH     {R0,R4,LR}
        SUB      SP,SP,#+68
// 3194   FRESULT res;
// 3195   DIR dj, sdj;
// 3196   BYTE *dir;
// 3197   DWORD dclst;
// 3198   DEF_NAMEBUF;
// 3199 
// 3200 
// 3201   res = chk_mounted(&path, &dj.fs, 1);
        MOVS     R2,#+1
        ADD      R1,SP,#+0
        ADD      R0,SP,#+68
        BL       chk_mounted
// 3202   if (res == FR_OK) {
        CMP      R0,#+0
        BNE.N    ??f_unlink_0
// 3203     INIT_BUF(dj);
        ADD      R0,SP,#+28
        STR      R0,[SP, #+24]
// 3204     res = follow_path(&dj, path);   /* Follow the file path */
        LDR      R1,[SP, #+68]
        BL       ??Subroutine22_1
// 3205     if (_FS_RPATH && res == FR_OK && (dj.fn[NS] & NS_DOT))
??CrossCallReturnLabel_73:
        CMP      R0,#+0
        BNE.N    ??f_unlink_0
        LDR      R1,[SP, #+24]
        LDRB     R1,[R1, #+11]
        LSLS     R1,R1,#+26
        IT       MI 
        MOVMI    R0,#+6
// 3206       res = FR_INVALID_NAME;      /* Cannot remove dot entry */
        BMI.N    ??f_unlink_0
// 3207 #if _FS_SHARE
// 3208     if (res == FR_OK) res = chk_lock(&dj, 2); /* Cannot remove open file */
// 3209 #endif
// 3210     if (res == FR_OK) {         /* The object is accessible */
// 3211       dir = dj.dir;
        LDR      R1,[SP, #+20]
// 3212       if (!dir) {
        CBNZ.N   R1,??f_unlink_1
// 3213         res = FR_INVALID_NAME;    /* Cannot remove the start directory */
        MOVS     R0,#+6
        B.N      ??f_unlink_2
// 3214       } else {
// 3215         if (dir[DIR_Attr] & AM_RDO)
??f_unlink_1:
        LDRB     R2,[R1, #+11]
        LSLS     R2,R2,#+31
        IT       MI 
        MOVMI    R0,#+7
// 3216           res = FR_DENIED;    /* Cannot remove R/O object */
// 3217       }
// 3218       dclst = LD_CLUST(dir);
??f_unlink_2:
        LDRB     R2,[R1, #+21]
        LDRB     R3,[R1, #+20]
        ORR      R2,R3,R2, LSL #+8
        LDRB     R3,[R1, #+27]
        LDRB     R4,[R1, #+26]
        ORR      R3,R4,R3, LSL #+8
        ORR      R4,R3,R2, LSL #+16
// 3219       if (res == FR_OK && (dir[DIR_Attr] & AM_DIR)) { /* Is it a sub-dir? */
        CBNZ.N   R0,??f_unlink_3
        LDRB     R0,[R1, #+11]
        LSLS     R0,R0,#+27
        BPL.N    ??f_unlink_4
// 3220         if (dclst < 2) {
        CMP      R4,#+2
        IT       CC 
        MOVCC    R0,#+2
// 3221           res = FR_INT_ERR;
        BCC.N    ??f_unlink_0
// 3222         } else {
// 3223           mem_cpy(&sdj, &dj, sizeof(DIR));  /* Check if the sub-dir is empty or not */
        MOVS     R2,#+28
        ADD      R1,SP,#+0
        ADD      R0,SP,#+40
        BL       mem_cpy
// 3224           sdj.sclust = dclst;
        STR      R4,[SP, #+48]
// 3225           res = dir_sdi(&sdj, 2);   /* Exclude dot entries */
        MOVS     R1,#+2
        ADD      R0,SP,#+40
        BL       dir_sdi
// 3226           if (res == FR_OK) {
        CBNZ.N   R0,??f_unlink_3
// 3227             res = dir_read(&sdj);
        ADD      R0,SP,#+40
        BL       dir_read
// 3228             if (res == FR_OK      /* Not empty dir */
// 3229 #if _FS_RPATH
// 3230             || dclst == sdj.fs->cdir  /* Current dir */
// 3231 #endif
// 3232             ) res = FR_DENIED;
        CMP      R0,#+0
        ITTTE    NE 
        LDRNE    R1,[SP, #+40]
        LDRNE    R1,[R1, #+24]
        CMPNE    R4,R1
        MOVEQ    R0,#+7
        BEQ.N    ??f_unlink_0
// 3233             if (res == FR_NO_FILE) res = FR_OK; /* Empty */
        CMP      R0,#+4
        BNE.N    ??f_unlink_0
        B.N      ??f_unlink_4
// 3234           }
// 3235         }
// 3236       }
// 3237       if (res == FR_OK) {
??f_unlink_3:
        CBNZ.N   R0,??f_unlink_0
// 3238         res = dir_remove(&dj);    /* Remove the directory entry */
??f_unlink_4:
        ADD      R0,SP,#+0
        BL       dir_remove
// 3239         if (res == FR_OK) {
        CBNZ.N   R0,??f_unlink_0
// 3240           if (dclst)        /* Remove the cluster chain if exist */
        CBZ.N    R4,??f_unlink_5
// 3241             res = remove_chain(dj.fs, dclst);
        MOV      R1,R4
        LDR      R0,[SP, #+0]
        BL       remove_chain
// 3242           if (res == FR_OK) res = sync(dj.fs);
        CBNZ.N   R0,??f_unlink_0
??f_unlink_5:
        LDR      R0,[SP, #+0]
        BL       sync
// 3243         }
// 3244       }
// 3245     }
// 3246     FREE_BUF();
// 3247   }
// 3248   LEAVE_FF(dj.fs, res);
??f_unlink_0:
        ADD      SP,SP,#+72
        POP      {R4,PC}          ;; return
// 3249 }
// 3250 
// 3251 
// 3252 
// 3253 
// 3254 /*-----------------------------------------------------------------------*/
// 3255 /* Create a Directory                                                    */
// 3256 /*-----------------------------------------------------------------------*/
// 3257 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3258 FRESULT f_mkdir (
// 3259   const TCHAR *path   /* Pointer to the directory path */
// 3260 )
// 3261 {
f_mkdir:
        PUSH     {R0,R4-R11,LR}
        SUB      SP,SP,#+48
// 3262   FRESULT res;
// 3263   DIR dj;
// 3264   BYTE *dir, n;
// 3265   DWORD dsc, dcl, pcl, tim = get_fattime();
        BL       get_fattime
        MOV      R4,R0
// 3266   DEF_NAMEBUF;
// 3267 
// 3268 
// 3269   res = chk_mounted(&path, &dj.fs, 1);
        MOVS     R2,#+1
        ADD      R1,SP,#+4
        ADD      R0,SP,#+48
        BL       chk_mounted
        MOVS     R7,R0
// 3270   if (res == FR_OK) {
        BNE.N    ??f_mkdir_0
// 3271     INIT_BUF(dj);
        ADD      R0,SP,#+32
        STR      R0,[SP, #+28]
// 3272     res = follow_path(&dj, path);     /* Follow the file path */
        LDR      R1,[SP, #+48]
        ADD      R0,SP,#+4
        BL       follow_path
        MOVS     R7,R0
// 3273     if (res == FR_OK) res = FR_EXIST;   /* Any object with same name is already existing */
        IT       EQ 
        MOVEQ    R7,#+8
        BEQ.W    ??f_mkdir_1
// 3274     if (_FS_RPATH && res == FR_NO_FILE && (dj.fn[NS] & NS_DOT))
        CMP      R7,#+4
??f_mkdir_0:
        BNE.W    ??f_mkdir_1
        LDR      R0,[SP, #+28]
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+26
        IT       MI 
        MOVMI    R7,#+6
// 3275       res = FR_INVALID_NAME;
        BMI.W    ??f_mkdir_1
// 3276     if (res == FR_NO_FILE) {        /* Can create a new directory */
// 3277       dcl = create_chain(dj.fs, 0);   /* Allocate a cluster for the new directory table */
        MOVS     R1,#+0
        LDR      R0,[SP, #+4]
        BL       create_chain
        MOVS     R5,R0
// 3278       res = FR_OK;
// 3279       if (dcl == 0) res = FR_DENIED;    /* No space to allocate a new cluster */
        IT       EQ 
        MOVEQ    R7,#+7
        BEQ.N    ??f_mkdir_2
// 3280       if (dcl == 1) res = FR_INT_ERR;
        CMP      R5,#+1
        IT       EQ 
        MOVEQ    R7,#+2
        BEQ.N    ??f_mkdir_2
// 3281       if (dcl == 0xFFFFFFFF) res = FR_DISK_ERR;
        CMN      R5,#+1
        IT       EQ 
        MOVEQ    R7,#+1
??f_mkdir_2:
        BEQ.N    ??f_mkdir_3
// 3282       if (res == FR_OK)         /* Flush FAT */
// 3283         res = move_window(dj.fs, 0);
        MOVS     R1,#+0
        LDR      R0,[SP, #+4]
        BL       move_window
        MOV      R7,R0
// 3284       if (res == FR_OK) {         /* Initialize the new directory table */
        LSR      R10,R5,#+16
        LSR      R0,R10,#+8
        STRB     R0,[SP, #+2]
        LSLS     R0,R5,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[SP, #+1]
        LSLS     R0,R4,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[SP, #+0]
        LSR      R8,R4,#+16
        CMP      R7,#+0
        BNE.N    ??f_mkdir_4
// 3285         dsc = clust2sect(dj.fs, dcl);
        MOV      R1,R5
        LDR      R0,[SP, #+4]
        BL       clust2sect
        MOV      R9,R0
// 3286         dir = dj.fs->win;
        LDR      R0,[SP, #+4]
        ADD      R6,R0,#+52
// 3287         mem_set(dir, 0, SS(dj.fs));
        BL       ?Subroutine8
// 3288         mem_set(dir+DIR_Name, ' ', 8+3);  /* Create "." entry */
??CrossCallReturnLabel_27:
        MOVS     R2,#+11
        MOVS     R1,#+32
        MOV      R0,R6
        BL       mem_set
// 3289         dir[DIR_Name] = '.';
        MOVS     R0,#+46
        STRB     R0,[R6, #+0]
// 3290         dir[DIR_Attr] = AM_DIR;
        MOVS     R0,#+16
        STRB     R0,[R6, #+11]
// 3291         ST_DWORD(dir+DIR_WrtTime, tim);
        STRB     R4,[R6, #+22]
        LDRB     R0,[SP, #+0]
        STRB     R0,[R6, #+23]
        STRB     R8,[R6, #+24]
        LSRS     R0,R4,#+24
        STRB     R0,[R6, #+25]
// 3292         ST_CLUST(dir, dcl);
        STRB     R5,[R6, #+26]
        LDRB     R0,[SP, #+1]
        STRB     R0,[R6, #+27]
        STRB     R10,[R6, #+20]
        LDRB     R0,[SP, #+2]
        STRB     R0,[R6, #+21]
// 3293         mem_cpy(dir+SZ_DIR, dir, SZ_DIR);   /* Create ".." entry */
        MOVS     R2,#+32
        MOV      R1,R6
        ADD      R0,R6,#+32
        BL       mem_cpy
// 3294         dir[33] = '.'; pcl = dj.sclust;
        MOVS     R0,#+46
        STRB     R0,[R6, #+33]
        LDR      R0,[SP, #+12]
// 3295         if (dj.fs->fs_type == FS_FAT32 && pcl == dj.fs->dirbase)
        LDR      R1,[SP, #+4]
        LDRB     R1,[R1, #+0]
        CMP      R1,#+3
        ITTTT    EQ 
        LDREQ    R1,[SP, #+4]
        LDREQ    R1,[R1, #+40]
        CMPEQ    R0,R1
        MOVEQ    R0,#+0
// 3296           pcl = 0;
// 3297         ST_CLUST(dir+SZ_DIR, pcl);
        STRB     R0,[R6, #+58]
        LSLS     R1,R0,#+16
        LSRS     R1,R1,#+24
        STRB     R1,[R6, #+59]
        LSRS     R0,R0,#+16
        STRB     R0,[R6, #+52]
        LSRS     R0,R0,#+8
        STRB     R0,[R6, #+53]
// 3298         for (n = dj.fs->csize; n; n--) {  /* Write dot entries and clear following sectors */
        LDR      R0,[SP, #+4]
        LDRB     R11,[R0, #+2]
        B.N      ??f_mkdir_5
// 3299           dj.fs->winsect = dsc++;
// 3300           dj.fs->wflag = 1;
// 3301           res = move_window(dj.fs, 0);
// 3302           if (res != FR_OK) break;
// 3303           mem_set(dir, 0, SS(dj.fs));
??f_mkdir_6:
        BL       ?Subroutine8
??CrossCallReturnLabel_26:
        SUB      R11,R11,#+1
??f_mkdir_5:
        UXTB     R11,R11
        CMP      R11,#+0
        BEQ.N    ??f_mkdir_7
        LDR      R0,[SP, #+4]
        STR      R9,[R0, #+48]
        ADD      R9,R9,#+1
        LDR      R0,[SP, #+4]
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
        MOVS     R1,#+0
        LDR      R0,[SP, #+4]
        BL       move_window
        MOVS     R7,R0
        BEQ.N    ??f_mkdir_6
// 3304         }
// 3305       }
// 3306       if (res == FR_OK) res = dir_register(&dj);  /* Register the object to the directoy */
??f_mkdir_4:
        CBNZ.N   R7,??f_mkdir_8
??f_mkdir_7:
        ADD      R0,SP,#+4
        BL       dir_register
        MOV      R7,R0
// 3307       if (res != FR_OK) {
??f_mkdir_8:
        CBZ.N    R7,??f_mkdir_9
// 3308         remove_chain(dj.fs, dcl);     /* Could not register, remove cluster chain */
??f_mkdir_3:
        MOV      R1,R5
        LDR      R0,[SP, #+4]
        BL       remove_chain
        B.N      ??f_mkdir_1
// 3309       } else {
// 3310         dir = dj.dir;
??f_mkdir_9:
        LDR      R1,[SP, #+24]
// 3311         dir[DIR_Attr] = AM_DIR;       /* Attribute */
        MOVS     R0,#+16
        STRB     R0,[R1, #+11]
// 3312         ST_DWORD(dir+DIR_WrtTime, tim);   /* Created time */
        STRB     R4,[R1, #+22]
        LDRB     R0,[SP, #+0]
        STRB     R0,[R1, #+23]
        STRB     R8,[R1, #+24]
        LSRS     R0,R4,#+24
        STRB     R0,[R1, #+25]
// 3313         ST_CLUST(dir, dcl);         /* Table start cluster */
        STRB     R5,[R1, #+26]
        LDRB     R0,[SP, #+1]
        STRB     R0,[R1, #+27]
        STRB     R10,[R1, #+20]
        LDRB     R0,[SP, #+2]
        STRB     R0,[R1, #+21]
// 3314         dj.fs->wflag = 1;
        LDR      R0,[SP, #+4]
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
// 3315         res = sync(dj.fs);
        LDR      R0,[SP, #+4]
        BL       sync
        MOV      R7,R0
// 3316       }
// 3317     }
// 3318     FREE_BUF();
// 3319   }
// 3320 
// 3321   LEAVE_FF(dj.fs, res);
??f_mkdir_1:
        MOV      R0,R7
        ADD      SP,SP,#+52
        POP      {R4-R11,PC}      ;; return
// 3322 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine8:
        MOV      R2,#+512
??Subroutine8_0:
        MOVS     R1,#+0
        MOV      R0,R6
        B.W      mem_set
// 3323 
// 3324 
// 3325 
// 3326 
// 3327 /*-----------------------------------------------------------------------*/
// 3328 /* Change Attribute                                                      */
// 3329 /*-----------------------------------------------------------------------*/
// 3330 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3331 FRESULT f_chmod (
// 3332   const TCHAR *path,  /* Pointer to the file path */
// 3333   BYTE value,     /* Attribute bits */
// 3334   BYTE mask     /* Attribute mask to change */
// 3335 )
// 3336 {
f_chmod:
        PUSH     {R0,R4,R5,LR}
        SUB      SP,SP,#+40
        MOV      R5,R1
        MOV      R4,R2
// 3337   FRESULT res;
// 3338   DIR dj;
// 3339   BYTE *dir;
// 3340   DEF_NAMEBUF;
// 3341 
// 3342 
// 3343   res = chk_mounted(&path, &dj.fs, 1);
        MOVS     R2,#+1
        BL       ?Subroutine21
// 3344   if (res == FR_OK) {
??CrossCallReturnLabel_68:
        CBNZ.N   R0,??CrossCallReturnLabel_60
// 3345     INIT_BUF(dj);
        BL       ?Subroutine22
// 3346     res = follow_path(&dj, path);   /* Follow the file path */
// 3347     FREE_BUF();
// 3348     if (_FS_RPATH && res == FR_OK && (dj.fn[NS] & NS_DOT))
??CrossCallReturnLabel_75:
        CBNZ.N   R0,??CrossCallReturnLabel_60
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+26
        BMI.N    ??f_chmod_0
// 3349       res = FR_INVALID_NAME;
// 3350     if (res == FR_OK) {
// 3351       dir = dj.dir;
        LDR      R0,[SP, #+20]
// 3352       if (!dir) {           /* Is it a root directory? */
        CBNZ.N   R0,??f_chmod_1
// 3353         res = FR_INVALID_NAME;
??f_chmod_0:
        MOVS     R0,#+6
        B.N      ??CrossCallReturnLabel_60
// 3354       } else {            /* File or sub directory */
// 3355         mask &= AM_RDO|AM_HID|AM_SYS|AM_ARC;  /* Valid attribute mask */
??f_chmod_1:
        AND      R4,R4,#0x27
// 3356         dir[DIR_Attr] = (value & mask) | (dir[DIR_Attr] & (BYTE)~mask); /* Apply attribute change */
        AND      R1,R4,R5
        LDRB     R2,[R0, #+11]
        BICS     R2,R2,R4
        ORRS     R1,R2,R1
        STRB     R1,[R0, #+11]
// 3357         dj.fs->wflag = 1;
        BL       ?Subroutine17
// 3358         res = sync(dj.fs);
// 3359       }
// 3360     }
// 3361   }
// 3362 
// 3363   LEAVE_FF(dj.fs, res);
??CrossCallReturnLabel_60:
        ADD      SP,SP,#+44
        POP      {R4,R5,PC}       ;; return
// 3364 }
// 3365 
// 3366 
// 3367 
// 3368 
// 3369 /*-----------------------------------------------------------------------*/
// 3370 /* Change Timestamp                                                      */
// 3371 /*-----------------------------------------------------------------------*/
// 3372 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3373 FRESULT f_utime (
// 3374   const TCHAR *path,  /* Pointer to the file/directory name */
// 3375   const FILINFO *fno  /* Pointer to the time stamp to be set */
// 3376 )
// 3377 {
f_utime:
        PUSH     {R0,R4,LR}
        SUB      SP,SP,#+44
        MOV      R4,R1
// 3378   FRESULT res;
// 3379   DIR dj;
// 3380   BYTE *dir;
// 3381   DEF_NAMEBUF;
// 3382 
// 3383 
// 3384   res = chk_mounted(&path, &dj.fs, 1);
        MOVS     R2,#+1
        ADD      R1,SP,#+0
        ADD      R0,SP,#+44
        BL       chk_mounted
// 3385   if (res == FR_OK) {
        CBNZ.N   R0,??CrossCallReturnLabel_59
// 3386     INIT_BUF(dj);
        ADD      R0,SP,#+28
        STR      R0,[SP, #+24]
// 3387     res = follow_path(&dj, path); /* Follow the file path */
        LDR      R1,[SP, #+44]
        BL       ??Subroutine22_1
// 3388     FREE_BUF();
// 3389     if (_FS_RPATH && res == FR_OK && (dj.fn[NS] & NS_DOT))
??CrossCallReturnLabel_72:
        CBNZ.N   R0,??CrossCallReturnLabel_59
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+26
        BMI.N    ??f_utime_0
// 3390       res = FR_INVALID_NAME;
// 3391     if (res == FR_OK) {
// 3392       dir = dj.dir;
        LDR      R0,[SP, #+20]
// 3393       if (!dir) {         /* Root directory */
        CBNZ.N   R0,??f_utime_1
// 3394         res = FR_INVALID_NAME;
??f_utime_0:
        MOVS     R0,#+6
        B.N      ??CrossCallReturnLabel_59
// 3395       } else {          /* File or sub-directory */
// 3396         ST_WORD(dir+DIR_WrtTime, fno->ftime);
??f_utime_1:
        LDRH     R1,[R4, #+6]
        STRB     R1,[R0, #+22]
        LDRH     R1,[R4, #+6]
        LSRS     R1,R1,#+8
        STRB     R1,[R0, #+23]
// 3397         ST_WORD(dir+DIR_WrtDate, fno->fdate);
        LDRH     R1,[R4, #+4]
        STRB     R1,[R0, #+24]
        LDRH     R1,[R4, #+4]
        LSRS     R1,R1,#+8
        STRB     R1,[R0, #+25]
// 3398         dj.fs->wflag = 1;
        BL       ?Subroutine17
// 3399         res = sync(dj.fs);
// 3400       }
// 3401     }
// 3402   }
// 3403 
// 3404   LEAVE_FF(dj.fs, res);
??CrossCallReturnLabel_59:
        ADD      SP,SP,#+48
        POP      {R4,PC}          ;; return
// 3405 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine17:
        LDR      R0,[SP, #+0]
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
        LDR      R0,[SP, #+0]
        B.W      sync
// 3406 
// 3407 
// 3408 
// 3409 
// 3410 /*-----------------------------------------------------------------------*/
// 3411 /* Rename File/Directory                                                 */
// 3412 /*-----------------------------------------------------------------------*/
// 3413 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3414 FRESULT f_rename (
// 3415   const TCHAR *path_old,  /* Pointer to the old name */
// 3416   const TCHAR *path_new /* Pointer to the new name */
// 3417 )
// 3418 {
f_rename:
        PUSH     {R0,R4,LR}
        SUB      SP,SP,#+92
        MOV      R4,R1
// 3419   FRESULT res;
// 3420   DIR djo, djn;
// 3421   BYTE buf[21], *dir;
// 3422   DWORD dw;
// 3423   DEF_NAMEBUF;
// 3424 
// 3425 
// 3426   res = chk_mounted(&path_old, &djo.fs, 1);
        MOVS     R2,#+1
        ADD      R1,SP,#+28
        ADD      R0,SP,#+92
        BL       chk_mounted
// 3427   if (res == FR_OK) {
        CMP      R0,#+0
        BNE.N    ??f_rename_0
// 3428     djn.fs = djo.fs;
        LDR      R0,[SP, #+28]
        STR      R0,[SP, #+0]
// 3429     INIT_BUF(djo);
        ADD      R0,SP,#+56
        STR      R0,[SP, #+52]
// 3430     res = follow_path(&djo, path_old);    /* Check old object */
        LDR      R1,[SP, #+92]
        ADD      R0,SP,#+28
        BL       follow_path
// 3431     if (_FS_RPATH && res == FR_OK && (djo.fn[NS] & NS_DOT))
        CMP      R0,#+0
        BNE.N    ??f_rename_0
        LDR      R0,[SP, #+52]
        LDRB     R0,[R0, #+11]
        LSLS     R0,R0,#+26
        IT       MI 
        MOVMI    R0,#+6
// 3432       res = FR_INVALID_NAME;
        BMI.N    ??f_rename_0
// 3433 #if _FS_SHARE
// 3434     if (res == FR_OK) res = chk_lock(&djo, 2);
// 3435 #endif
// 3436     if (res == FR_OK) {           /* Old object is found */
// 3437       if (!djo.dir) {           /* Is root dir? */
        LDR      R0,[SP, #+48]
        CBNZ.N   R0,??f_rename_1
// 3438         res = FR_NO_FILE;
        MOVS     R0,#+4
        B.N      ??f_rename_0
// 3439       } else {
// 3440         mem_cpy(buf, djo.dir+DIR_Attr, 21);   /* Save the object information except for name */
??f_rename_1:
        MOVS     R2,#+21
        ADD      R1,R0,#+11
        ADD      R0,SP,#+68
        BL       mem_cpy
// 3441         mem_cpy(&djn, &djo, sizeof(DIR));   /* Check new object */
        MOVS     R2,#+28
        ADD      R1,SP,#+28
        ADD      R0,SP,#+0
        BL       mem_cpy
// 3442         res = follow_path(&djn, path_new);
        MOV      R1,R4
        BL       ??Subroutine22_1
// 3443         if (res == FR_OK) res = FR_EXIST;   /* The new object name is already existing */
??CrossCallReturnLabel_71:
        CBNZ.N   R0,??f_rename_2
        MOVS     R0,#+8
        B.N      ??f_rename_0
// 3444         if (res == FR_NO_FILE) {        /* Is it a valid path and no name collision? */
??f_rename_2:
        CMP      R0,#+4
        BNE.N    ??f_rename_0
// 3445 /* Start critical section that any interruption or error can cause cross-link */
// 3446           res = dir_register(&djn);     /* Register the new entry */
        ADD      R0,SP,#+0
        BL       dir_register
// 3447           if (res == FR_OK) {
        CMP      R0,#+0
        BNE.N    ??f_rename_0
// 3448             dir = djn.dir;          /* Copy object information except for name */
        LDR      R4,[SP, #+20]
// 3449             mem_cpy(dir+13, buf+2, 19);
        MOVS     R2,#+19
        ADD      R1,SP,#+70
        ADD      R0,R4,#+13
        BL       mem_cpy
// 3450             dir[DIR_Attr] = buf[0] | AM_ARC;
        LDRB     R0,[SP, #+68]
        ORR      R0,R0,#0x20
        STRB     R0,[R4, #+11]
// 3451             djo.fs->wflag = 1;
        LDR      R0,[SP, #+28]
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
// 3452             if (djo.sclust != djn.sclust && (dir[DIR_Attr] & AM_DIR)) {   /* Update .. entry in the directory if needed */
        LDR      R0,[SP, #+36]
        LDR      R1,[SP, #+8]
        CMP      R0,R1
        BEQ.N    ??f_rename_3
        LDRB     R0,[R4, #+11]
        LSLS     R0,R0,#+27
        BPL.N    ??f_rename_3
// 3453               dw = clust2sect(djn.fs, LD_CLUST(dir));
        LDRB     R0,[R4, #+21]
        LDRB     R1,[R4, #+20]
        ORR      R0,R1,R0, LSL #+8
        LDRB     R1,[R4, #+27]
        LDRB     R2,[R4, #+26]
        ORR      R1,R2,R1, LSL #+8
        ORR      R1,R1,R0, LSL #+16
        LDR      R0,[SP, #+0]
        BL       clust2sect
        MOVS     R1,R0
// 3454               if (!dw) {
        IT       EQ 
        MOVEQ    R0,#+2
// 3455                 res = FR_INT_ERR;
        BEQ.N    ??f_rename_0
// 3456               } else {
// 3457                 res = move_window(djn.fs, dw);
        LDR      R0,[SP, #+0]
        BL       move_window
// 3458                 dir = djn.fs->win+SZ_DIR; /* .. entry */
        LDR      R1,[SP, #+0]
        ADD      R4,R1,#+84
// 3459                 if (res == FR_OK && dir[1] == '.') {
        CBNZ.N   R0,??f_rename_0
        LDRB     R0,[R4, #+1]
        CMP      R0,#+46
        BNE.N    ??f_rename_3
// 3460                   dw = (djn.fs->fs_type == FS_FAT32 && djn.sclust == djn.fs->dirbase) ? 0 : djn.sclust;
        LDR      R1,[SP, #+8]
        LDR      R0,[SP, #+0]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        ITTTT    EQ 
        LDREQ    R0,[SP, #+0]
        LDREQ    R0,[R0, #+40]
        CMPEQ    R1,R0
        MOVEQ    R1,#+0
// 3461                   ST_CLUST(dir, dw);
        STRB     R1,[R4, #+26]
        LSLS     R0,R1,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[R4, #+27]
        LSRS     R0,R1,#+16
        STRB     R0,[R4, #+20]
        LSRS     R0,R0,#+8
        STRB     R0,[R4, #+21]
// 3462                   djn.fs->wflag = 1;
        LDR      R0,[SP, #+0]
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
// 3463                 }
// 3464               }
// 3465             }
// 3466             if (res == FR_OK) {
// 3467               res = dir_remove(&djo);   /* Remove old entry */
??f_rename_3:
        ADD      R0,SP,#+28
        BL       dir_remove
// 3468               if (res == FR_OK)
        CBNZ.N   R0,??f_rename_0
// 3469                 res = sync(djo.fs);
        LDR      R0,[SP, #+28]
        BL       sync
// 3470             }
// 3471           }
// 3472 /* End critical section */
// 3473         }
// 3474       }
// 3475     }
// 3476     FREE_BUF();
// 3477   }
// 3478   LEAVE_FF(djo.fs, res);
??f_rename_0:
        ADD      SP,SP,#+96
        POP      {R4,PC}          ;; return
// 3479 }
// 3480 
// 3481 #endif /* !_FS_READONLY */
// 3482 #endif /* _FS_MINIMIZE == 0 */
// 3483 #endif /* _FS_MINIMIZE <= 1 */
// 3484 #endif /* _FS_MINIMIZE <= 2 */
// 3485 
// 3486 
// 3487 
// 3488 /*-----------------------------------------------------------------------*/
// 3489 /* Forward data to the stream directly (available on only tiny cfg)      */
// 3490 /*-----------------------------------------------------------------------*/
// 3491 #if _USE_FORWARD && _FS_TINY
// 3492 
// 3493 FRESULT f_forward (
// 3494   FIL *fp,            /* Pointer to the file object */
// 3495   UINT (*func)(const BYTE*,UINT), /* Pointer to the streaming function */
// 3496   UINT btr,           /* Number of bytes to forward */
// 3497   UINT *bf            /* Pointer to number of bytes forwarded */
// 3498 )
// 3499 {
// 3500   FRESULT res;
// 3501   DWORD remain, clst, sect;
// 3502   UINT rcnt;
// 3503   BYTE csect;
// 3504 
// 3505 
// 3506   *bf = 0;  /* Initialize byte counter */
// 3507 
// 3508   res = validate(fp->fs, fp->id);         /* Check validity of the object */
// 3509   if (res != FR_OK) LEAVE_FF(fp->fs, res);
// 3510   if (fp->flag & FA__ERROR)           /* Check error flag */
// 3511     LEAVE_FF(fp->fs, FR_INT_ERR);
// 3512   if (!(fp->flag & FA_READ))            /* Check access mode */
// 3513     LEAVE_FF(fp->fs, FR_DENIED);
// 3514 
// 3515   remain = fp->fsize - fp->fptr;
// 3516   if (btr > remain) btr = (UINT)remain;     /* Truncate btr by remaining bytes */
// 3517 
// 3518   for ( ;  btr && (*func)(0, 0);          /* Repeat until all data transferred or stream becomes busy */
// 3519     fp->fptr += rcnt, *bf += rcnt, btr -= rcnt) {
// 3520     csect = (BYTE)(fp->fptr / SS(fp->fs) & (fp->fs->csize - 1));  /* Sector offset in the cluster */
// 3521     if ((fp->fptr % SS(fp->fs)) == 0) {     /* On the sector boundary? */
// 3522       if (!csect) {             /* On the cluster boundary? */
// 3523         clst = (fp->fptr == 0) ?      /* On the top of the file? */
// 3524           fp->sclust : get_fat(fp->fs, fp->clust);
// 3525         if (clst <= 1) ABORT(fp->fs, FR_INT_ERR);
// 3526         if (clst == 0xFFFFFFFF) ABORT(fp->fs, FR_DISK_ERR);
// 3527         fp->clust = clst;         /* Update current cluster */
// 3528       }
// 3529     }
// 3530     sect = clust2sect(fp->fs, fp->clust);   /* Get current data sector */
// 3531     if (!sect) ABORT(fp->fs, FR_INT_ERR);
// 3532     sect += csect;
// 3533     if (move_window(fp->fs, sect))        /* Move sector window */
// 3534       ABORT(fp->fs, FR_DISK_ERR);
// 3535     fp->dsect = sect;
// 3536     rcnt = SS(fp->fs) - (WORD)(fp->fptr % SS(fp->fs));  /* Forward data from sector window */
// 3537     if (rcnt > btr) rcnt = btr;
// 3538     rcnt = (*func)(&fp->fs->win[(WORD)fp->fptr % SS(fp->fs)], rcnt);
// 3539     if (!rcnt) ABORT(fp->fs, FR_INT_ERR);
// 3540   }
// 3541 
// 3542   LEAVE_FF(fp->fs, FR_OK);
// 3543 }
// 3544 #endif /* _USE_FORWARD */
// 3545 
// 3546 
// 3547 
// 3548 #if _USE_MKFS && !_FS_READONLY
// 3549 /*-----------------------------------------------------------------------*/
// 3550 /* Create File System on the Drive                                       */
// 3551 /*-----------------------------------------------------------------------*/
// 3552 #define N_ROOTDIR 512   /* Number of root dir entries for FAT12/16 */
// 3553 #define N_FATS    1   /* Number of FAT copies (1 or 2) */
// 3554 
// 3555 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3556 FRESULT f_mkfs (
// 3557   BYTE drv,   /* Logical drive number */
// 3558   BYTE sfd,   /* Partitioning rule 0:FDISK, 1:SFD */
// 3559   UINT au     /* Allocation unit size [bytes] */
// 3560 )
// 3561 {
f_mkfs:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+28
        MOV      R7,R1
        MOV      R4,R2
// 3562   static const WORD vst[] = { 1024,   512,  256,  128,   64,    32,   16,    8,    4,    2,   0};
// 3563   static const WORD cst[] = {32768, 16384, 8192, 4096, 2048, 16384, 8192, 4096, 2048, 1024, 512};
// 3564   BYTE fmt, md, sys, *tbl, pdrv, part;
// 3565   DWORD n_clst, vs, n, wsect;
// 3566   UINT i;
// 3567   DWORD b_vol, b_fat, b_dir, b_data;  /* LBA */
// 3568   DWORD n_vol, n_rsv, n_fat, n_dir; /* Size */
// 3569   FATFS *fs;
// 3570   DSTATUS stat;
// 3571 
// 3572 
// 3573   /* Check mounted drive and clear work area */
// 3574   if (drv >= _VOLUMES) return FR_INVALID_DRIVE;
        CBZ.N    R0,??f_mkfs_0
        MOVS     R0,#+11
        B.N      ??f_mkfs_1
// 3575   if (sfd > 1) return FR_INVALID_PARAMETER;
??f_mkfs_0:
        CMP      R7,#+2
        BCS.N    ??f_mkfs_2
// 3576   if (au & (au - 1)) return FR_INVALID_PARAMETER;
        SUBS     R0,R4,#+1
        TST      R4,R0
        BEQ.N    ??f_mkfs_3
??f_mkfs_2:
        MOVS     R0,#+19
        B.N      ??f_mkfs_1
// 3577   fs = FatFs[drv];
??f_mkfs_3:
        LDR.W    R0,??DataTable11
        LDR      R0,[R0, #+4]
        STR      R0,[SP, #+12]
// 3578   if (!fs) return FR_NOT_ENABLED;
        CBNZ.N   R0,??f_mkfs_4
        MOVS     R0,#+12
??f_mkfs_5:
        B.N      ??f_mkfs_1
// 3579   fs->fs_type = 0;
??f_mkfs_4:
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 3580   pdrv = LD2PD(drv);  /* Physical drive */
// 3581   part = LD2PT(drv);  /* Partition (0:auto detect, 1-4:get from partition table)*/
// 3582 
// 3583   /* Get disk statics */
// 3584   stat = disk_initialize(pdrv);
        MOVS     R0,#+0
        BL       disk_initialize
// 3585   if (stat & STA_NOINIT) return FR_NOT_READY;
        LSLS     R1,R0,#+31
        IT       MI 
        MOVMI    R0,#+3
        BMI.N    ??f_mkfs_5
// 3586   if (stat & STA_PROTECT) return FR_WRITE_PROTECTED;
        LSLS     R0,R0,#+29
        IT       MI 
        MOVMI    R0,#+10
        BMI.N    ??f_mkfs_5
// 3587 #if _MAX_SS != 512          /* Get disk sector size */
// 3588   if (disk_ioctl(pdrv, GET_SECTOR_SIZE, &SS(fs)) != RES_OK || SS(fs) > _MAX_SS)
// 3589     return FR_DISK_ERR;
// 3590 #endif
// 3591   if (_MULTI_PARTITION && part) {
// 3592     /* Get partition information from partition table in the MBR */
// 3593     if (disk_read(pdrv, fs->win, 0, 1) != RES_OK) return FR_DISK_ERR;
// 3594     if (LD_WORD(fs->win+BS_55AA) != 0xAA55) return FR_MKFS_ABORTED;
// 3595     tbl = &fs->win[MBR_Table + (part - 1) * SZ_PTE];
// 3596     if (!tbl[4]) return FR_MKFS_ABORTED;  /* No partition? */
// 3597     b_vol = LD_DWORD(tbl+8);  /* Volume start sector */
// 3598     n_vol = LD_DWORD(tbl+12); /* Volume size */
// 3599   } else {
// 3600     /* Create a partition in this function */
// 3601     if (disk_ioctl(pdrv, GET_SECTOR_COUNT, &n_vol) != RES_OK || n_vol < 128)
        ADD      R2,SP,#+4
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       disk_ioctl
        CMP      R0,#+0
        BNE.W    ??f_mkfs_6
        LDR      R0,[SP, #+4]
        CMP      R0,#+128
        BCC.W    ??f_mkfs_6
// 3602       return FR_DISK_ERR;
// 3603     b_vol = (sfd) ? 0 : 63;   /* Volume start sector */
        CMP      R7,#+0
        ITE      NE 
        MOVNE    R0,#+0
        MOVEQ    R0,#+63
        STR      R0,[SP, #+8]
// 3604     n_vol -= b_vol;       /* Volume size */
        LDR      R0,[SP, #+4]
        LDR      R1,[SP, #+8]
        SUBS     R0,R0,R1
        STR      R0,[SP, #+4]
// 3605   }
// 3606 
// 3607   if (!au) {        /* AU auto selection */
        CBNZ.N   R4,??f_mkfs_7
// 3608     vs = n_vol / (2000 / (SS(fs) / 512));
        MOV      R1,#+2000
        UDIV     R0,R0,R1
// 3609     for (i = 0; vs < vst[i]; i++) ;
        MOV      R10,#+0
        ADR.W    R1,??vst
        B.N      ??f_mkfs_8
??f_mkfs_9:
        ADD      R10,R10,#+1
??f_mkfs_8:
        LDRH     R2,[R1, R10, LSL #+1]
        CMP      R0,R2
        BCC.N    ??f_mkfs_9
// 3610     au = cst[i];
        ADR.W    R0,??cst
        LDRH     R4,[R0, R10, LSL #+1]
// 3611   }
// 3612   au /= SS(fs);   /* Number of sectors per cluster */
??f_mkfs_7:
        LSRS     R4,R4,#+9
// 3613   if (au == 0) au = 1;
        IT       EQ 
        MOVEQ    R4,#+1
        BEQ.N    ??f_mkfs_10
// 3614   if (au > 128) au = 128;
        CMP      R4,#+129
        IT       CS 
        MOVCS    R4,#+128
// 3615 
// 3616   /* Pre-compute number of clusters and FAT syb-type */
// 3617   n_clst = n_vol / au;
??f_mkfs_10:
        LDR      R0,[SP, #+4]
        UDIV     R8,R0,R4
// 3618   fmt = FS_FAT12;
        MOVS     R5,#+1
        MOVW     R0,#+4086
        CMP      R8,R0
        IT       CS 
        MOVCS    R5,#+2
// 3619   if (n_clst >= MIN_FAT16) fmt = FS_FAT16;
// 3620   if (n_clst >= MIN_FAT32) fmt = FS_FAT32;
        MOVW     R6,#+65526
        CMP      R8,R6
        IT       CS 
        MOVCS    R5,#+3
        BCS.N    ??f_mkfs_11
// 3621 
// 3622   /* Determine offset and size of FAT structure */
// 3623   if (fmt == FS_FAT32) {
        CMP      R5,#+3
        BNE.N    ??f_mkfs_12
// 3624     n_fat = ((n_clst * 4) + 8 + SS(fs) - 1) / SS(fs);
??f_mkfs_11:
        LSL      R0,R8,#+2
        ADDW     R0,R0,#+519
        LSR      R9,R0,#+9
// 3625     n_rsv = 32;
        MOV      R11,#+32
// 3626     n_dir = 0;
        MOVS     R0,#+0
        B.N      ??f_mkfs_13
// 3627   } else {
// 3628     n_fat = (fmt == FS_FAT12) ? (n_clst * 3 + 1) / 2 + 3 : (n_clst * 2) + 4;
??f_mkfs_12:
        CMP      R5,#+1
        BNE.N    ??f_mkfs_14
        ADD      R0,R8,R8, LSL #+1
        ADDS     R0,R0,#+1
        LSRS     R0,R0,#+1
        ADDS     R0,R0,#+3
        B.N      ??f_mkfs_15
??f_mkfs_14:
        LSL      R0,R8,#+1
        ADDS     R0,R0,#+4
// 3629     n_fat = (n_fat + SS(fs) - 1) / SS(fs);
??f_mkfs_15:
        ADDW     R0,R0,#+511
        LSR      R9,R0,#+9
// 3630     n_rsv = 1;
        MOV      R11,#+1
// 3631     n_dir = (DWORD)N_ROOTDIR * SZ_DIR / SS(fs);
        MOVS     R0,#+32
??f_mkfs_13:
        STR      R0,[SP, #+20]
// 3632   }
// 3633   b_fat = b_vol + n_rsv;        /* FAT area start sector */
        LDR      R0,[SP, #+8]
        ADD      R0,R11,R0
        STR      R0,[SP, #+16]
// 3634   b_dir = b_fat + n_fat * N_FATS;   /* Directory area start sector */
// 3635   b_data = b_dir + n_dir;       /* Data area start sector */
        ADD      R0,R9,R0
        LDR      R1,[SP, #+20]
        ADD      R8,R1,R0
// 3636   if (n_vol < b_data + au - b_vol) return FR_MKFS_ABORTED;  /* Too small volume */
        LDR      R0,[SP, #+4]
        ADD      R1,R4,R8
        LDR      R2,[SP, #+8]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BCC.N    ??f_mkfs_16
// 3637 
// 3638   /* Align data start sector to erase block boundary (for flash memory media) */
// 3639   if (disk_ioctl(pdrv, GET_BLOCK_SIZE, &n) != RES_OK || !n || n > 32768) n = 1;
        ADD      R2,SP,#+0
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       disk_ioctl
        CBNZ.N   R0,??f_mkfs_17
        LDR      R0,[SP, #+0]
        CBZ.N    R0,??f_mkfs_17
        CMP      R0,#+32768
        BLS.N    ??f_mkfs_18
??f_mkfs_17:
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
// 3640   n = (b_data + n - 1) & ~(n - 1);  /* Next nearest erase block from current data start */
// 3641   n = (n - b_data) / N_FATS;
??f_mkfs_18:
        LDR      R0,[SP, #+0]
        ADD      R0,R0,R8
        SUBS     R0,R0,#+1
        LDR      R1,[SP, #+0]
        SUBS     R1,R1,#+1
        BICS     R0,R0,R1
        SUB      R0,R0,R8
        STR      R0,[SP, #+0]
// 3642   if (fmt == FS_FAT32) {    /* FAT32: Move FAT offset */
        CMP      R5,#+3
        BNE.N    ??f_mkfs_19
// 3643     n_rsv += n;
        ADD      R11,R0,R11
// 3644     b_fat += n;
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+0]
        ADDS     R0,R1,R0
        STR      R0,[SP, #+16]
        B.N      ??f_mkfs_20
// 3645   } else {          /* FAT12/16: Expand FAT size */
// 3646     n_fat += n;
??f_mkfs_19:
        ADD      R9,R0,R9
// 3647   }
// 3648 
// 3649   /* Determine number of clusters and final check of validity of the FAT sub-type */
// 3650   n_clst = (n_vol - n_rsv - n_fat * N_FATS - n_dir) / au;
??f_mkfs_20:
        LDR      R0,[SP, #+4]
        SUB      R0,R0,R11
        SUB      R0,R0,R9
        LDR      R1,[SP, #+20]
        SUBS     R0,R0,R1
        UDIV     R8,R0,R4
// 3651   if (   (fmt == FS_FAT16 && n_clst < MIN_FAT16)
// 3652     || (fmt == FS_FAT32 && n_clst < MIN_FAT32))
        CMP      R5,#+2
        BNE.N    ??f_mkfs_21
        MOVW     R0,#+4086
        CMP      R8,R0
        BCC.N    ??f_mkfs_16
??f_mkfs_21:
        CMP      R5,#+3
        BNE.N    ??f_mkfs_22
        CMP      R8,R6
        BCS.N    ??f_mkfs_22
// 3653     return FR_MKFS_ABORTED;
??f_mkfs_16:
        MOVS     R0,#+14
        B.N      ??f_mkfs_1
// 3654 
// 3655   switch (fmt) {  /* Determine system ID for partition table */
??f_mkfs_22:
        CMP      R5,#+1
        BEQ.N    ??f_mkfs_23
        CMP      R5,#+2
        BEQ.N    ??f_mkfs_24
        B.N      ??f_mkfs_25
// 3656   case FS_FAT12:  sys = 0x01; break;
??f_mkfs_23:
        MOVS     R6,#+1
        B.N      ??f_mkfs_26
// 3657   case FS_FAT16:  sys = (n_vol < 0x10000) ? 0x04 : 0x06; break;
??f_mkfs_24:
        LDR      R0,[SP, #+4]
        CMP      R0,#+65536
        ITE      CS 
        MOVCS    R6,#+6
        MOVCC    R6,#+4
        B.N      ??f_mkfs_26
// 3658   default:    sys = 0x0C;
??f_mkfs_25:
        MOVS     R6,#+12
??f_mkfs_26:
        CBZ.N    R7,??f_mkfs_27
// 3659   }
// 3660 
// 3661   if (_MULTI_PARTITION && part) {
// 3662     /* Update system ID in the partition table */
// 3663     tbl = &fs->win[MBR_Table + (part - 1) * SZ_PTE];
// 3664     tbl[4] = sys;
// 3665     if (disk_write(pdrv, fs->win, 0, 1) != RES_OK) return FR_DISK_ERR;
// 3666     md = 0xF8;
// 3667   } else {
// 3668     if (sfd) {  /* No patition table (SFD) */
// 3669       md = 0xF0;
        MOVS     R6,#+240
        B.N      ??f_mkfs_28
// 3670     } else {  /* Create partition table (FDISK) */
// 3671       mem_set(fs->win, 0, SS(fs));
??f_mkfs_27:
        MOV      R2,#+512
        MOVS     R1,#+0
        LDR      R0,[SP, #+12]
        ADDS     R0,R0,#+52
        BL       mem_set
// 3672       tbl = fs->win+MBR_Table;  /* Create partiton table for single partition in the drive */
        LDR      R0,[SP, #+12]
        ADDW     R7,R0,#+498
// 3673       tbl[1] = 1;           /* Partition start head */
        MOVS     R0,#+1
        STRB     R0,[R7, #+1]
// 3674       tbl[2] = 1;           /* Partition start sector */
        STRB     R0,[R7, #+2]
// 3675       tbl[3] = 0;           /* Partition start cylinder */
        MOVS     R0,#+0
        STRB     R0,[R7, #+3]
// 3676       tbl[4] = sys;         /* System type */
        STRB     R6,[R7, #+4]
// 3677       tbl[5] = 254;         /* Partition end head */
        MOVS     R0,#+254
        STRB     R0,[R7, #+5]
// 3678       n = (b_vol + n_vol) / 63 / 255;
        LDR      R0,[SP, #+8]
        LDR      R1,[SP, #+4]
        ADDS     R0,R1,R0
        MOVS     R1,#+63
        UDIV     R0,R0,R1
        MOVS     R1,#+255
        UDIV     R0,R0,R1
        STR      R0,[SP, #+0]
// 3679       tbl[6] = (BYTE)((n >> 2) | 63); /* Partiiton end sector */
        LSRS     R0,R0,#+2
        ORR      R0,R0,#0x3F
        STRB     R0,[R7, #+6]
// 3680       tbl[7] = (BYTE)n;       /* End cylinder */
        LDR      R0,[SP, #+0]
        STRB     R0,[R7, #+7]
// 3681       ST_DWORD(tbl+8, 63);      /* Partition start in LBA */
        MOVS     R0,#+63
        STRB     R0,[R7, #+8]
        MOVS     R0,#+0
        STRB     R0,[R7, #+9]
        STRB     R0,[R7, #+10]
        STRB     R0,[R7, #+11]
// 3682       ST_DWORD(tbl+12, n_vol);    /* Partition size in LBA */
        LDR      R0,[SP, #+4]
        STRB     R0,[R7, #+12]
        LDR      R0,[SP, #+4]
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[R7, #+13]
        LDR      R0,[SP, #+4]
        LSRS     R0,R0,#+16
        STRB     R0,[R7, #+14]
        LDR      R0,[SP, #+4]
        LSRS     R0,R0,#+24
        STRB     R0,[R7, #+15]
// 3683       ST_WORD(fs->win+BS_55AA, 0xAA55); /* MBR signature */
        LDR      R0,[SP, #+12]
        MOVS     R1,#+85
        STRB     R1,[R0, #+562]
        LDR      R0,[SP, #+12]
        MOVS     R1,#+170
        STRB     R1,[R0, #+563]
// 3684       if (disk_write(pdrv, fs->win, 0, 1) != RES_OK)  /* Write it to the MBR sector */
        MOVS     R3,#+1
        MOVS     R2,#+0
        LDR      R0,[SP, #+12]
        ADD      R1,R0,#+52
        BL       ??Subroutine5_0
??CrossCallReturnLabel_11:
        CMP      R0,#+0
        BNE.W    ??f_mkfs_6
// 3685         return FR_DISK_ERR;
// 3686       md = 0xF8;
        MOVS     R6,#+248
// 3687     }
// 3688   }
// 3689 
// 3690   /* Create BPB in the VBR */
// 3691   tbl = fs->win;              /* Clear sector */
??f_mkfs_28:
        LDR      R0,[SP, #+12]
        ADD      R7,R0,#+52
// 3692   mem_set(tbl, 0, SS(fs));
        BL       ?Subroutine10
// 3693   mem_cpy(tbl, "\xEB\xFE\x90" "MSDOS5.0", 11);/* Boot jump code, OEM name */
??CrossCallReturnLabel_33:
        MOVS     R2,#+11
        ADR.W    R1,`?<Constant "\\353\\376\\220MSDOS5.0">`
        MOV      R0,R7
        BL       mem_cpy
// 3694   i = SS(fs);               /* Sector size */
        MOV      R10,#+512
// 3695   ST_WORD(tbl+BPB_BytsPerSec, i);
        MOVS     R0,#+0
        STRB     R0,[R7, #+11]
        MOVS     R0,#+2
        STRB     R0,[R7, #+12]
// 3696   tbl[BPB_SecPerClus] = (BYTE)au;     /* Sectors per cluster */
        STRB     R4,[R7, #+13]
// 3697   ST_WORD(tbl+BPB_RsvdSecCnt, n_rsv);   /* Reserved sectors */
        STRB     R11,[R7, #+14]
        LSL      R1,R11,#+16
        LSRS     R0,R1,#+24
        STRB     R0,[R7, #+15]
// 3698   tbl[BPB_NumFATs] = N_FATS;        /* Number of FATs */
        MOVS     R0,#+1
        STRB     R0,[R7, #+16]
// 3699   i = (fmt == FS_FAT32) ? 0 : N_ROOTDIR;  /* Number of rootdir entries */
        CMP      R5,#+3
        IT       EQ 
        MOVEQ    R10,#+0
// 3700   ST_WORD(tbl+BPB_RootEntCnt, i);
        MOVS     R0,#+0
        STRB     R0,[R7, #+17]
        LSR      R0,R10,#+8
        STRB     R0,[R7, #+18]
// 3701   if (n_vol < 0x10000) {          /* Number of total sectors */
        LDR      R0,[SP, #+4]
        CMP      R0,#+65536
        BCS.N    ??f_mkfs_29
// 3702     ST_WORD(tbl+BPB_TotSec16, n_vol);
        STRB     R0,[R7, #+19]
        LDR      R0,[SP, #+4]
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[R7, #+20]
        B.N      ??f_mkfs_30
// 3703   } else {
// 3704     ST_DWORD(tbl+BPB_TotSec32, n_vol);
??f_mkfs_29:
        STRB     R0,[R7, #+32]
        LDR      R0,[SP, #+4]
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[R7, #+33]
        LDR      R0,[SP, #+4]
        LSRS     R0,R0,#+16
        STRB     R0,[R7, #+34]
        LDR      R0,[SP, #+4]
        LSRS     R0,R0,#+24
        STRB     R0,[R7, #+35]
// 3705   }
// 3706   tbl[BPB_Media] = md;          /* Media descriptor */
??f_mkfs_30:
        STRB     R6,[R7, #+21]
// 3707   ST_WORD(tbl+BPB_SecPerTrk, 63);     /* Number of sectors per track */
        MOVS     R0,#+63
        STRB     R0,[R7, #+24]
        MOVS     R0,#+0
        STRB     R0,[R7, #+25]
// 3708   ST_WORD(tbl+BPB_NumHeads, 255);     /* Number of heads */
        MOVS     R0,#+255
        STRB     R0,[R7, #+26]
        MOVS     R0,#+0
        STRB     R0,[R7, #+27]
// 3709   ST_DWORD(tbl+BPB_HiddSec, b_vol);   /* Hidden sectors */
        LDR      R0,[SP, #+8]
        STRB     R0,[R7, #+28]
        MOVS     R0,#+0
        STRB     R0,[R7, #+29]
        STRB     R0,[R7, #+30]
        STRB     R0,[R7, #+31]
// 3710   n = get_fattime();            /* Use current time as VSN */
        BL       get_fattime
        STR      R0,[SP, #+0]
// 3711   if (fmt == FS_FAT32) {
        LSL      R0,R9,#+16
        LSRS     R0,R0,#+24
        CMP      R5,#+3
        LDR      R1,[SP, #+0]
        BNE.N    ??f_mkfs_31
// 3712     ST_DWORD(tbl+BS_VolID32, n);    /* VSN */
        STRB     R1,[R7, #+67]
        LDR      R1,[SP, #+0]
        LSLS     R1,R1,#+16
        LSRS     R1,R1,#+24
        STRB     R1,[R7, #+68]
        LDR      R1,[SP, #+0]
        LSRS     R1,R1,#+16
        STRB     R1,[R7, #+69]
        LDR      R1,[SP, #+0]
        LSRS     R1,R1,#+24
        STRB     R1,[R7, #+70]
// 3713     ST_DWORD(tbl+BPB_FATSz32, n_fat); /* Number of sectors per FAT */
        STRB     R9,[R7, #+36]
        STRB     R0,[R7, #+37]
        LSR      R0,R9,#+16
        STRB     R0,[R7, #+38]
        LSR      R0,R9,#+24
        STRB     R0,[R7, #+39]
// 3714     ST_DWORD(tbl+BPB_RootClus, 2);    /* Root directory start cluster (2) */
        MOVS     R0,#+2
        STRB     R0,[R7, #+44]
        MOVS     R0,#+0
        STRB     R0,[R7, #+45]
        STRB     R0,[R7, #+46]
        STRB     R0,[R7, #+47]
// 3715     ST_WORD(tbl+BPB_FSInfo, 1);     /* FSInfo record offset (VBR+1) */
        MOVS     R0,#+1
        STRB     R0,[R7, #+48]
        MOVS     R0,#+0
        STRB     R0,[R7, #+49]
// 3716     ST_WORD(tbl+BPB_BkBootSec, 6);    /* Backup boot record offset (VBR+6) */
        MOVS     R0,#+6
        STRB     R0,[R7, #+50]
        MOVS     R0,#+0
        STRB     R0,[R7, #+51]
// 3717     tbl[BS_DrvNum32] = 0x80;      /* Drive number */
        MOVS     R0,#+128
        STRB     R0,[R7, #+64]
// 3718     tbl[BS_BootSig32] = 0x29;     /* Extended boot signature */
        MOVS     R0,#+41
        STRB     R0,[R7, #+66]
// 3719     mem_cpy(tbl+BS_VolLab32, "NO NAME    " "FAT32   ", 19); /* Volume label, FAT signature */
        MOVS     R2,#+19
        ADR.W    R1,`?<Constant "NO NAME    FAT32   ">`
        ADD      R0,R7,#+71
        B.N      ??f_mkfs_32
// 3720   } else {
// 3721     ST_DWORD(tbl+BS_VolID, n);      /* VSN */
??f_mkfs_31:
        STRB     R1,[R7, #+39]
        LDR      R1,[SP, #+0]
        LSLS     R1,R1,#+16
        LSRS     R1,R1,#+24
        STRB     R1,[R7, #+40]
        LDR      R1,[SP, #+0]
        LSRS     R1,R1,#+16
        STRB     R1,[R7, #+41]
        LDR      R1,[SP, #+0]
        LSRS     R1,R1,#+24
        STRB     R1,[R7, #+42]
// 3722     ST_WORD(tbl+BPB_FATSz16, n_fat);  /* Number of sectors per FAT */
        STRB     R9,[R7, #+22]
        STRB     R0,[R7, #+23]
// 3723     tbl[BS_DrvNum] = 0x80;        /* Drive number */
        MOVS     R0,#+128
        STRB     R0,[R7, #+36]
// 3724     tbl[BS_BootSig] = 0x29;       /* Extended boot signature */
        MOVS     R0,#+41
        STRB     R0,[R7, #+38]
// 3725     mem_cpy(tbl+BS_VolLab, "NO NAME    " "FAT     ", 19); /* Volume label, FAT signature */
        MOVS     R2,#+19
        ADR.W    R1,`?<Constant "NO NAME    FAT     ">`
        ADD      R0,R7,#+43
??f_mkfs_32:
        BL       mem_cpy
// 3726   }
// 3727   ST_WORD(tbl+BS_55AA, 0xAA55);     /* Signature (Offset is fixed here regardless of sector size) */
        BL       ?Subroutine15
// 3728   if (disk_write(pdrv, tbl, b_vol, 1) != RES_OK)  /* Write it to the VBR sector */
??CrossCallReturnLabel_54:
        LDR      R2,[SP, #+8]
        BL       ?Subroutine5
??CrossCallReturnLabel_16:
        CMP      R0,#+0
        BNE.N    ??f_mkfs_33
// 3729     return FR_DISK_ERR;
// 3730   if (fmt == FS_FAT32)              /* Write backup VBR if needed (VBR+6) */
        CMP      R5,#+3
        BNE.N    ??CrossCallReturnLabel_15
// 3731     disk_write(pdrv, tbl, b_vol + 6, 1);
        MOVS     R3,#+1
        LDR      R0,[SP, #+8]
        ADDS     R2,R0,#+6
        BL       ?Subroutine5
// 3732 
// 3733   /* Initialize FAT area */
// 3734   wsect = b_fat;
??CrossCallReturnLabel_15:
        LDR      R10,[SP, #+16]
// 3735   for (i = 0; i < N_FATS; i++) {    /* Initialize each FAT copy */
// 3736     mem_set(tbl, 0, SS(fs));      /* 1st sector of the FAT  */
        BL       ?Subroutine10
// 3737     n = md;               /* Media descriptor byte */
// 3738     if (fmt != FS_FAT32) {
??CrossCallReturnLabel_32:
        CMP      R5,#+3
        BEQ.N    ??f_mkfs_34
// 3739       n |= (fmt == FS_FAT12) ? 0x00FFFF00 : 0xFFFFFF00;
        CMP      R5,#+1
        ITE      EQ 
        LDREQ.N  R0,??DataTable11_1  ;; 0xffff00
        MVNNE    R0,#+255
        ORRS     R0,R0,R6
        BL       ?Subroutine13
// 3740       ST_DWORD(tbl+0, n);       /* Reserve cluster #0-1 (FAT12/16) */
// 3741     } else {
??CrossCallReturnLabel_50:
        B.N      ??f_mkfs_35
// 3742       n |= 0xFFFFFF00;
??f_mkfs_34:
        ORN      R0,R6,#+255
        BL       ?Subroutine13
// 3743       ST_DWORD(tbl+0, n);       /* Reserve cluster #0-1 (FAT32) */
// 3744       ST_DWORD(tbl+4, 0xFFFFFFFF);
??CrossCallReturnLabel_51:
        MOVS     R0,#+255
        STRB     R0,[R7, #+4]
        STRB     R0,[R7, #+5]
        STRB     R0,[R7, #+6]
        STRB     R0,[R7, #+7]
// 3745       ST_DWORD(tbl+8, 0x0FFFFFFF);  /* Reserve cluster #2 for root dir */
        STRB     R0,[R7, #+8]
        STRB     R0,[R7, #+9]
        STRB     R0,[R7, #+10]
        MOVS     R0,#+15
        STRB     R0,[R7, #+11]
// 3746     }
// 3747     if (disk_write(pdrv, tbl, wsect++, 1) != RES_OK)
??f_mkfs_35:
        MOVS     R3,#+1
        MOV      R2,R10
        BL       ?Subroutine5
??CrossCallReturnLabel_14:
        ADD      R6,R10,#+1
        CMP      R0,#+0
??f_mkfs_33:
        BNE.N    ??f_mkfs_6
// 3748       return FR_DISK_ERR;
// 3749     mem_set(tbl, 0, SS(fs));      /* Fill following FAT entries with zero */
        BL       ?Subroutine10
// 3750     for (n = 1; n < n_fat; n++) {   /* This loop may take a time on FAT32 volume due to many single sector writes */
??CrossCallReturnLabel_31:
        MOVS     R0,#+1
        B.N      ??f_mkfs_36
// 3751       if (disk_write(pdrv, tbl, wsect++, 1) != RES_OK)
??f_mkfs_37:
        BL       ?Subroutine2
// 3752         return FR_DISK_ERR;
// 3753     }
??CrossCallReturnLabel_6:
        ADDS     R6,R6,#+1
        CMP      R0,#+0
        BNE.N    ??f_mkfs_6
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
??f_mkfs_36:
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,R9
        BCC.N    ??f_mkfs_37
// 3754   }
// 3755 
// 3756   /* Initialize root directory */
// 3757   i = (fmt == FS_FAT32) ? au : n_dir;
        CMP      R5,#+3
        ITE      EQ 
        MOVEQ    R10,R4
        LDRNE    R10,[SP, #+20]
// 3758   do {
// 3759     if (disk_write(pdrv, tbl, wsect++, 1) != RES_OK)
??f_mkfs_38:
        BL       ?Subroutine2
// 3760       return FR_DISK_ERR;
// 3761   } while (--i);
??CrossCallReturnLabel_5:
        ADDS     R6,R6,#+1
        CMP      R0,#+0
        BNE.N    ??f_mkfs_6
        SUBS     R10,R10,#+1
        BNE.N    ??f_mkfs_38
// 3762 
// 3763 #if _USE_ERASE  /* Erase data area if needed */
// 3764   {
// 3765     DWORD eb[2];
// 3766 
// 3767     eb[0] = wsect; eb[1] = wsect + (n_clst - ((fmt == FS_FAT32) ? 1 : 0)) * au - 1;
// 3768     disk_ioctl(pdrv, CTRL_ERASE_SECTOR, eb);
// 3769   }
// 3770 #endif
// 3771 
// 3772   /* Create FSInfo if needed */
// 3773   if (fmt == FS_FAT32) {
        CMP      R5,#+3
        BNE.N    ??CrossCallReturnLabel_12
// 3774     ST_DWORD(tbl+FSI_LeadSig, 0x41615252);
        MOVS     R0,#+82
        STRB     R0,[R7, #+0]
        STRB     R0,[R7, #+1]
        MOVS     R0,#+97
        STRB     R0,[R7, #+2]
        MOVS     R0,#+65
        STRB     R0,[R7, #+3]
// 3775     ST_DWORD(tbl+FSI_StrucSig, 0x61417272);
        MOVS     R0,#+114
        STRB     R0,[R7, #+484]
        STRB     R0,[R7, #+485]
        MOVS     R0,#+65
        STRB     R0,[R7, #+486]
        MOVS     R0,#+97
        STRB     R0,[R7, #+487]
// 3776     ST_DWORD(tbl+FSI_Free_Count, n_clst - 1); /* Number of free clusters */
        SUB      R0,R8,#+1
        STRB     R0,[R7, #+488]
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[R7, #+489]
        SUB      R0,R8,#+1
        LSRS     R1,R0,#+16
        STRB     R1,[R7, #+490]
        LSRS     R0,R0,#+24
        STRB     R0,[R7, #+491]
// 3777     ST_DWORD(tbl+FSI_Nxt_Free, 2);        /* Last allocated cluster# */
        MOVS     R0,#+2
        STRB     R0,[R7, #+492]
        MOVS     R0,#+0
        STRB     R0,[R7, #+493]
        STRB     R0,[R7, #+494]
        STRB     R0,[R7, #+495]
// 3778     ST_WORD(tbl+BS_55AA, 0xAA55);
        BL       ?Subroutine15
// 3779     disk_write(pdrv, tbl, b_vol + 1, 1);  /* Write original (VBR+1) */
??CrossCallReturnLabel_55:
        LDR      R0,[SP, #+8]
        ADDS     R2,R0,#+1
        BL       ?Subroutine5
// 3780     disk_write(pdrv, tbl, b_vol + 7, 1);  /* Write backup (VBR+7) */
??CrossCallReturnLabel_13:
        MOVS     R3,#+1
        LDR      R0,[SP, #+8]
        ADDS     R2,R0,#+7
        BL       ?Subroutine5
// 3781   }
// 3782 
// 3783   return (disk_ioctl(pdrv, CTRL_SYNC, 0) == RES_OK) ? FR_OK : FR_DISK_ERR;
??CrossCallReturnLabel_12:
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOV      R0,R1
        BL       disk_ioctl
        CBZ.N    R0,??f_mkfs_1
??f_mkfs_6:
        MOVS     R0,#+1
??f_mkfs_1:
        ADD      SP,SP,#+28
        POP      {R4-R11,PC}      ;; return
// 3784 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     CurrVol

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0xffff00

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine15:
        MOVS     R0,#+85
        STRB     R0,[R7, #+510]
        MOVS     R0,#+170
        STRB     R0,[R7, #+511]
        MOVS     R3,#+1
        BX       LR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine13:
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        STRB     R0,[R7, #+0]
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+16
        LSRS     R0,R0,#+24
        STRB     R0,[R7, #+1]
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+16
        STRB     R0,[R7, #+2]
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+24
        STRB     R0,[R7, #+3]
        BX       LR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine10:
        MOV      R2,#+512
        MOVS     R1,#+0
        MOV      R0,R7
        B.W      mem_set

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine5:
        MOV      R1,R7
??Subroutine5_0:
        MOVS     R0,#+0
        B.W      disk_write

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        MOVS     R3,#+1
        MOV      R2,R6
        MOV      R1,R7
        MOVS     R0,#+0
        B.W      disk_write
// 3785 
// 3786 
// 3787 #if _MULTI_PARTITION == 2
// 3788 /*-----------------------------------------------------------------------*/
// 3789 /* Divide Physical Drive                                                 */
// 3790 /*-----------------------------------------------------------------------*/
// 3791 
// 3792 FRESULT f_fdisk (
// 3793   BYTE pdrv,      /* Physical drive number */
// 3794   const DWORD szt[],  /* Pointer to the size table for each partitions */
// 3795   void* work      /* Pointer to the working buffer */
// 3796 )
// 3797 {
// 3798   UINT i, n, sz_cyl, tot_cyl, b_cyl, e_cyl, p_cyl;
// 3799   BYTE s_hd, e_hd, *p, *buf = (BYTE*)work;
// 3800   DSTATUS stat;
// 3801   DWORD sz_disk, sz_part, s_part;
// 3802 
// 3803 
// 3804   stat = disk_initialize(pdrv);
// 3805   if (stat & STA_NOINIT) return FR_NOT_READY;
// 3806   if (stat & STA_PROTECT) return FR_WRITE_PROTECTED;
// 3807   if (disk_ioctl(pdrv, GET_SECTOR_COUNT, &sz_disk)) return FR_DISK_ERR;
// 3808 
// 3809   /* Determine CHS in the table regardless of the drive geometry */
// 3810   for (n = 16; n < 256 && sz_disk / n / 63 > 1024; n *= 2) ;
// 3811   if (n == 256) n--;
// 3812   e_hd = n - 1;
// 3813   sz_cyl = 63 * n;
// 3814   tot_cyl = sz_disk / sz_cyl;
// 3815 
// 3816   /* Create partition table */
// 3817   mem_set(buf, 0, _MAX_SS);
// 3818   p = buf + MBR_Table; b_cyl = 0;
// 3819   for (i = 0; i < 4; i++, p += SZ_PTE) {
// 3820     p_cyl = (szt[i] <= 100) ? (DWORD)tot_cyl * szt[i] / 100 : szt[i] / sz_cyl;
// 3821     if (!p_cyl) continue;
// 3822     s_part = (DWORD)sz_cyl * b_cyl;
// 3823     sz_part = (DWORD)sz_cyl * p_cyl;
// 3824     if (i == 0) { /* Exclude first track of cylinder 0 */
// 3825       s_hd = 1;
// 3826       s_part += 63; sz_part -= 63;
// 3827     } else {
// 3828       s_hd = 0;
// 3829     }
// 3830     e_cyl = b_cyl + p_cyl - 1;
// 3831     if (e_cyl >= tot_cyl) return FR_INVALID_PARAMETER;
// 3832 
// 3833     /* Set partition table */
// 3834     p[1] = s_hd;            /* Start head */
// 3835     p[2] = (BYTE)((b_cyl >> 2) + 1);  /* Start sector */
// 3836     p[3] = (BYTE)b_cyl;         /* Start cylinder */
// 3837     p[4] = 0x06;            /* System type (temporary setting) */
// 3838     p[5] = e_hd;            /* End head */
// 3839     p[6] = (BYTE)((e_cyl >> 2) + 63); /* End sector */
// 3840     p[7] = (BYTE)e_cyl;         /* End cylinder */
// 3841     ST_DWORD(p + 8, s_part);      /* Start sector in LBA */
// 3842     ST_DWORD(p + 12, sz_part);      /* Partition size */
// 3843 
// 3844     /* Next partition */
// 3845     b_cyl += p_cyl;
// 3846   }
// 3847   ST_WORD(p, 0xAA55);
// 3848 
// 3849   /* Write it to the MBR */
// 3850   return (disk_write(pdrv, buf, 0, 1) || disk_ioctl(pdrv, CTRL_SYNC, 0)) ? FR_DISK_ERR : FR_OK;
// 3851 }
// 3852 
// 3853 
// 3854 #endif /* _MULTI_PARTITION == 2 */
// 3855 #endif /* _USE_MKFS && !_FS_READONLY */
// 3856 
// 3857 
// 3858 
// 3859 
// 3860 #if _USE_STRFUNC
// 3861 /*-----------------------------------------------------------------------*/
// 3862 /* Get a string from the file                                            */
// 3863 /*-----------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3864 TCHAR* f_gets (
// 3865   TCHAR* buff,  /* Pointer to the string buffer to read */
// 3866   int len,    /* Size of string buffer (characters) */
// 3867   FIL* fil    /* Pointer to the file object */
// 3868 )
// 3869 {
f_gets:
        PUSH     {R2-R8,LR}
        MOV      R4,R0
        MOV      R7,R1
        MOV      R8,R2
// 3870   int n = 0;
        MOVS     R5,#+0
// 3871   TCHAR c, *p = buff;
        MOV      R6,R4
// 3872   BYTE s[2];
// 3873   UINT rc;
// 3874 
// 3875 
// 3876   while (n < len - 1) {     /* Read bytes until buffer gets filled */
??f_gets_0:
        SUBS     R0,R7,#+1
        CMP      R5,R0
        BGE.N    ??f_gets_1
// 3877     f_read(fil, s, 1, &rc);
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        ADD      R1,SP,#+4
        MOV      R0,R8
        BL       f_read
// 3878     if (rc != 1) break;     /* Break on EOF or error */
        LDR      R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??f_gets_1
// 3879     c = s[0];
        LDRSB    R0,[SP, #+4]
// 3880 #if _LFN_UNICODE          /* Read a character in UTF-8 encoding */
// 3881     if (c >= 0x80) {
// 3882       if (c < 0xC0) continue; /* Skip stray trailer */
// 3883       if (c < 0xE0) {     /* Two-byte sequense */
// 3884         f_read(fil, s, 1, &rc);
// 3885         if (rc != 1) break;
// 3886         c = ((c & 0x1F) << 6) | (s[0] & 0x3F);
// 3887         if (c < 0x80) c = '?';
// 3888       } else {
// 3889         if (c < 0xF0) {   /* Three-byte sequense */
// 3890           f_read(fil, s, 2, &rc);
// 3891           if (rc != 2) break;
// 3892           c = (c << 12) | ((s[0] & 0x3F) << 6) | (s[1] & 0x3F);
// 3893           if (c < 0x800) c = '?';
// 3894         } else {      /* Reject four-byte sequense */
// 3895           c = '?';
// 3896         }
// 3897       }
// 3898     }
// 3899 #endif
// 3900 #if _USE_STRFUNC >= 2
// 3901     if (c == '\r') continue;  /* Strip '\r' */
// 3902 #endif
// 3903     *p++ = c;
        STRB     R0,[R6], #+1
// 3904     n++;
        ADDS     R5,R5,#+1
// 3905     if (c == '\n') break;   /* Break on EOL */
        CMP      R0,#+10
        BNE.N    ??f_gets_0
// 3906   }
// 3907   *p = 0;
??f_gets_1:
        MOVS     R0,#+0
        STRB     R0,[R6, #+0]
// 3908   return n ? buff : 0;      /* When no data read (eof or error), return with error. */
        CBNZ.N   R5,??f_gets_2
        MOVS     R4,#+0
??f_gets_2:
        MOV      R0,R4
        POP      {R1,R2,R4-R8,PC}  ;; return
// 3909 }
// 3910 
// 3911 
// 3912 
// 3913 #if !_FS_READONLY
// 3914 #include <stdarg.h>
// 3915 /*-----------------------------------------------------------------------*/
// 3916 /* Put a character to the file                                           */
// 3917 /*-----------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3918 int f_putc (
// 3919   TCHAR c,  /* A character to be output */
// 3920   FIL* fil  /* Pointer to the file object */
// 3921 )
// 3922 {
f_putc:
        PUSH     {LR}
        SUB      SP,SP,#+12
        MOV      R2,R0
        MOV      R0,R1
// 3923   UINT bw, btw;
// 3924   BYTE s[3];
// 3925 
// 3926 
// 3927 #if _USE_STRFUNC >= 2
// 3928   if (c == '\n') f_putc ('\r', fil);  /* LF -> CRLF conversion */
// 3929 #endif
// 3930 
// 3931 #if _LFN_UNICODE  /* Write the character in UTF-8 encoding */
// 3932   if (c < 0x80) {     /* 7-bit */
// 3933     s[0] = (BYTE)c;
// 3934     btw = 1;
// 3935   } else {
// 3936     if (c < 0x800) {  /* 11-bit */
// 3937       s[0] = (BYTE)(0xC0 | (c >> 6));
// 3938       s[1] = (BYTE)(0x80 | (c & 0x3F));
// 3939       btw = 2;
// 3940     } else {      /* 16-bit */
// 3941       s[0] = (BYTE)(0xE0 | (c >> 12));
// 3942       s[1] = (BYTE)(0x80 | ((c >> 6) & 0x3F));
// 3943       s[2] = (BYTE)(0x80 | (c & 0x3F));
// 3944       btw = 3;
// 3945     }
// 3946   }
// 3947 #else       /* Write the character without conversion */
// 3948   s[0] = (BYTE)c;
        STRB     R2,[SP, #+0]
// 3949   btw = 1;
// 3950 #endif
// 3951   f_write(fil, s, btw, &bw);    /* Write the char to the file */
        ADD      R3,SP,#+4
        MOVS     R2,#+1
        ADD      R1,SP,#+0
        BL       f_write
// 3952   return (bw == btw) ? 1 : EOF; /* Return the result */
        LDR      R0,[SP, #+4]
        CMP      R0,#+1
        IT       NE 
        MOVNE    R0,#-1
        POP      {R1-R3,PC}       ;; return
// 3953 }
// 3954 
// 3955 
// 3956 
// 3957 
// 3958 /*-----------------------------------------------------------------------*/
// 3959 /* Put a string to the file                                              */
// 3960 /*-----------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3961 int f_puts (
// 3962   const TCHAR* str, /* Pointer to the string to be output */
// 3963   FIL* fil      /* Pointer to the file object */
// 3964 )
// 3965 {
f_puts:
        PUSH     {R4-R6,LR}
        MOV      R4,R0
        MOV      R5,R1
// 3966   int n;
// 3967 
// 3968 
// 3969   for (n = 0; *str; str++, n++) {
        MOVS     R6,#+0
        B.N      ??f_puts_0
??f_puts_1:
        ADDS     R6,R6,#+1
??f_puts_0:
        LDRSB    R0,[R4, #+0]
        CBZ.N    R0,??f_puts_2
// 3970     if (f_putc(*str, fil) == EOF) return EOF;
        MOV      R1,R5
        LDRSB    R0,[R4], #+1
        BL       f_putc
        CMN      R0,#+1
        BNE.N    ??f_puts_1
        MOV      R0,#-1
        POP      {R4-R6,PC}
// 3971   }
// 3972   return n;
??f_puts_2:
        MOV      R0,R6
        POP      {R4-R6,PC}       ;; return
// 3973 }
// 3974 
// 3975 
// 3976 
// 3977 
// 3978 /*-----------------------------------------------------------------------*/
// 3979 /* Put a formatted string to the file                                    */
// 3980 /*-----------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3981 int f_printf (
// 3982   FIL* fil,     /* Pointer to the file object */
// 3983   const TCHAR* str, /* Pointer to the format string */
// 3984   ...         /* Optional arguments... */
// 3985 )
// 3986 {
f_printf:
        PUSH     {R2,R3}
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
        MOV      R9,R0
        MOV      R10,R1
// 3987   va_list arp;
// 3988   BYTE f, r;
// 3989   UINT i, j, w;
// 3990   ULONG v;
// 3991   TCHAR c, d, s[16], *p;
// 3992   int res, chc, cc;
// 3993 
// 3994 
// 3995   va_start(arp, str);
        ADD      R11,SP,#+56
// 3996 
// 3997   for (cc = res = 0; cc != EOF; res += cc) {
        MOVS     R4,#+0
        B.N      ??f_printf_0
// 3998     c = *str++;
// 3999     if (c == 0) break;      /* End of string */
// 4000     if (c != '%') {       /* Non escape character */
// 4001       cc = f_putc(c, fil);
// 4002       if (cc != EOF) cc = 1;
??f_printf_1:
        MOV      R1,R9
        BL       f_putc
        CMN      R0,#+1
        BEQ.N    ??f_printf_2
        ADDS     R4,R4,#+1
// 4003       continue;
// 4004     }
??f_printf_0:
        LDRSB    R0,[R10], #+1
        CMP      R0,#+0
        BEQ.N    ??f_printf_3
        CMP      R0,#+37
        BNE.N    ??f_printf_1
// 4005     w = f = 0;
        MOVS     R1,#+0
        MOV      R8,R1
// 4006     c = *str++;
        LDRSB    R0,[R10], #+1
// 4007     if (c == '0') {       /* Flag: '0' padding */
        CMP      R0,#+48
        IT       EQ 
        MOVEQ    R1,#+1
// 4008       f = 1; c = *str++;
        BEQ.N    ??f_printf_4
// 4009     } else {
// 4010       if (c == '-') {     /* Flag: left justified */
        CMP      R0,#+45
        BNE.N    ??f_printf_5
// 4011         f = 2; c = *str++;
        MOVS     R1,#+2
        B.N      ??f_printf_4
// 4012       }
// 4013     }
// 4014     while (IsDigit(c)) {    /* Precision */
// 4015       w = w * 10 + c - '0';
??f_printf_6:
        MOVS     R2,#+10
        MLA      R0,R2,R8,R0
        SUB      R8,R0,#+48
// 4016       c = *str++;
??f_printf_4:
        LDRSB    R0,[R10], #+1
// 4017     }
??f_printf_5:
        SUB      R2,R0,#+48
        CMP      R2,#+10
        BCC.N    ??f_printf_6
// 4018     if (c == 'l' || c == 'L') { /* Prefix: Size is long int */
        CMP      R0,#+108
        ITEE     NE 
        CMPNE    R0,#+76
        ORREQ    R1,R1,#0x4
        LDRSBEQ  R0,[R10], #+1
// 4019       f |= 4; c = *str++;
// 4020     }
// 4021     if (!c) break;
        CMP      R0,#+0
??f_printf_3:
        BEQ.W    ??f_printf_7
// 4022     d = c;
        MOV      R6,R0
// 4023     if (IsLower(d)) d -= 0x20;
        SUB      R2,R6,#+97
        CMP      R2,#+26
        ITT      CC 
        SUBCC    R2,R6,#+32
        SXTBCC   R6,R2
// 4024     switch (d) {        /* Type is... */
        CMP      R6,#+66
        BEQ.N    ??f_printf_8
        CMP      R6,#+67
        BEQ.N    ??f_printf_9
        CMP      R6,#+68
        BEQ.N    ??f_printf_10
        CMP      R6,#+79
        BEQ.N    ??f_printf_11
        CMP      R6,#+83
        BEQ.N    ??f_printf_12
        CMP      R6,#+85
        BEQ.N    ??f_printf_10
        CMP      R6,#+88
        BEQ.N    ??f_printf_13
        B.N      ??f_printf_14
// 4025     case 'S' :          /* String */
// 4026       p = va_arg(arp, TCHAR*);
??f_printf_12:
        LDR      R5,[R11], #+4
// 4027       for (j = 0; p[j]; j++) ;
        MOVS     R7,#+0
        B.N      ??f_printf_15
??f_printf_16:
        ADDS     R7,R7,#+1
??f_printf_15:
        LDRSB    R0,[R7, R5]
        CMP      R0,#+0
        BNE.N    ??f_printf_16
// 4028       chc = 0;
        MOVS     R6,#+0
// 4029       if (!(f & 2)) {
        LSLS     R0,R1,#+30
        BMI.N    ??f_printf_17
        B.N      ??f_printf_18
// 4030         while (j++ < w) chc += (cc = f_putc(' ', fil));
??f_printf_19:
        BL       ?Subroutine23
??CrossCallReturnLabel_79:
        ADDS     R6,R0,R6
??f_printf_18:
        MOV      R0,R7
        ADDS     R7,R0,#+1
        CMP      R0,R8
        BCC.N    ??f_printf_19
// 4031       }
// 4032       chc += (cc = f_puts(p, fil));
??f_printf_17:
        MOV      R1,R9
        MOV      R0,R5
        BL       f_puts
        ADDS     R5,R0,R6
        B.N      ??f_printf_20
// 4033       while (j++ < w) chc += (cc = f_putc(' ', fil));
??f_printf_21:
        BL       ?Subroutine23
??CrossCallReturnLabel_78:
        ADDS     R5,R0,R5
??f_printf_20:
        MOV      R1,R7
        ADDS     R7,R1,#+1
        CMP      R1,R8
        BCC.N    ??f_printf_21
// 4034       if (cc != EOF) cc = chc;
        CMN      R0,#+1
??f_printf_2:
        BEQ.N    ??f_printf_22
        MOV      R0,R5
        B.N      ??f_printf_23
// 4035       continue;
// 4036     case 'C' :          /* Character */
// 4037       cc = f_putc((TCHAR)va_arg(arp, int), fil); continue;
??f_printf_9:
        MOV      R1,R9
        LDR      R0,[R11], #+4
        SXTB     R0,R0
        B.N      ??f_printf_24
// 4038     case 'B' :          /* Binary */
// 4039       r = 2; break;
??f_printf_8:
        MOVS     R2,#+2
// 4040     case 'O' :          /* Octal */
// 4041       r = 8; break;
// 4042     case 'D' :          /* Signed decimal */
// 4043     case 'U' :          /* Unsigned decimal */
// 4044       r = 10; break;
// 4045     case 'X' :          /* Hexdecimal */
// 4046       r = 16; break;
// 4047     default:          /* Unknown type (passthrough) */
// 4048       cc = f_putc(c, fil); continue;
// 4049     }
// 4050 
// 4051     /* Get an argument and put it in numeral */
// 4052     v = (f & 4) ? (ULONG)va_arg(arp, long) : ((d == 'D') ? (ULONG)(long)va_arg(arp, int) : (ULONG)va_arg(arp, unsigned int));
??f_printf_25:
        LSLS     R3,R1,#+29
        BPL.N    ??f_printf_26
        LDR      R3,[R11], #+4
// 4053     if (d == 'D' && (v & 0x80000000)) {
        CMP      R6,#+68
        BNE.N    ??f_printf_27
??f_printf_28:
        CMP      R3,#+0
        ITT      MI 
        RSBMI    R3,R3,#+0
        ORRMI    R1,R1,#0x8
// 4054       v = 0 - v;
// 4055       f |= 8;
// 4056     }
// 4057     i = 0;
??f_printf_27:
        MOVS     R5,#+0
// 4058     do {
// 4059       d = (TCHAR)(v % r); v /= r;
??f_printf_29:
        UDIV     R4,R3,R2
        MLS      R6,R2,R4,R3
        SXTB     R6,R6
        MOV      R3,R4
// 4060       if (d > 9) d += (c == 'x') ? 0x27 : 0x07;
        CMP      R6,#+10
        BLT.N    ??f_printf_30
        CMP      R0,#+120
        ITE      EQ 
        MOVEQ    R4,#+39
        MOVNE    R4,#+7
        B.N      ??f_printf_31
??f_printf_11:
        MOVS     R2,#+8
        B.N      ??f_printf_25
??f_printf_10:
        MOVS     R2,#+10
        B.N      ??f_printf_25
??f_printf_13:
        MOVS     R2,#+16
        B.N      ??f_printf_25
??f_printf_14:
        MOV      R1,R9
??f_printf_24:
        BL       f_putc
        B.N      ??f_printf_23
??f_printf_26:
        CMP      R6,#+68
        LDR      R3,[R11], #+4
        BNE.N    ??f_printf_27
        B.N      ??f_printf_28
??f_printf_31:
        ADDS     R6,R4,R6
// 4061       s[i++] = d + '0';
??f_printf_30:
        ADD      R4,SP,#+0
        ADDS     R6,R6,#+48
        STRB     R6,[R5, R4]
        ADDS     R5,R5,#+1
// 4062     } while (v && i < sizeof(s) / sizeof(s[0]));
        CBZ.N    R3,??f_printf_32
        CMP      R5,#+16
        BCC.N    ??f_printf_29
// 4063     if (f & 8) s[i++] = '-';
??f_printf_32:
        LSLS     R0,R1,#+28
        BPL.N    ??f_printf_33
        ADD      R0,SP,#+0
        MOVS     R2,#+45
        STRB     R2,[R5, R0]
        ADDS     R5,R5,#+1
// 4064     j = i; d = (f & 1) ? '0' : ' ';
??f_printf_33:
        MOV      R7,R5
        LSLS     R0,R1,#+31
        ITE      MI 
        MOVMI    R6,#+48
        MOVPL    R6,#+32
// 4065     res = 0;
        MOVS     R4,#+0
// 4066     while (!(f & 2) && j++ < w) res += (cc = f_putc(d, fil));
        LSLS     R0,R1,#+30
        BMI.N    ??f_printf_34
        B.N      ??f_printf_35
??f_printf_36:
        MOV      R1,R9
        MOV      R0,R6
        BL       f_putc
        ADDS     R4,R0,R4
??f_printf_35:
        MOV      R0,R7
        ADDS     R7,R0,#+1
        CMP      R0,R8
        BCC.N    ??f_printf_36
// 4067     do res += (cc = f_putc(s[--i], fil)); while(i);
??f_printf_34:
        SUBS     R5,R5,#+1
        MOV      R1,R9
        ADD      R0,SP,#+0
        LDRSB    R0,[R5, R0]
        BL       f_putc
        ADDS     R4,R0,R4
        CMP      R5,#+0
        BNE.N    ??f_printf_34
// 4068     while (j++ < w) res += (cc = f_putc(' ', fil));
??f_printf_37:
        MOV      R1,R7
        ADDS     R7,R1,#+1
        CMP      R1,R8
        BCS.N    ??f_printf_38
        BL       ?Subroutine23
??CrossCallReturnLabel_77:
        ADDS     R4,R0,R4
        B.N      ??f_printf_37
// 4069     if (cc != EOF) cc = res;
??f_printf_38:
        CMN      R0,#+1
        BEQ.N    ??f_printf_22
        MOV      R0,R4
// 4070   }
??f_printf_23:
        ADDS     R4,R0,R4
        CMN      R0,#+1
        BNE.W    ??f_printf_0
??f_printf_22:
        MOV      R0,#-1
        B.N      ??f_printf_39
??f_printf_7:
        MOV      R0,R4
??f_printf_39:
        ADD      SP,SP,#+20
        POP      {R4-R11}
        LDR      PC,[SP], #+12    ;; return
// 4071 
// 4072   va_end(arp);
// 4073   return (cc == EOF) ? cc : res;
// 4074 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine23:
        MOV      R1,R9
        MOVS     R0,#+32
        B.N      f_putc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "\\353\\376\\220MSDOS5.0">`:
        DC8 "\353\376\220MSDOS5.0"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "NO NAME    FAT32   ">`:
        DC8 "NO NAME    FAT32   "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "NO NAME    FAT     ">`:
        DC8 "NO NAME    FAT     "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??vst:
        DC16 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??cst:
        DC16 32768, 16384, 8192, 4096, 2048, 16384, 8192, 4096, 2048, 1024, 512
        DC8 0, 0

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 4075 
// 4076 #endif /* !_FS_READONLY */
// 4077 #endif /* _USE_STRFUNC */
// 4078 
// 
//     8 bytes in section .bss
// 8 568 bytes in section .text
// 
// 8 568 bytes of CODE memory
//     8 bytes of DATA memory
//
//Errors: none
//Warnings: none
