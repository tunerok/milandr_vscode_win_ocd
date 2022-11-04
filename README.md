## Milandr + VSCode + GCC + OpenOCD + freeRTOS

Вся работа по проекту осуществляется средствами VSCode и нет необходимости запускать отдельные приложения/терминалы и т.д.

Проект подготовлен для работы с отладочной платой Milandr 1986BE92 через VSCode (версия для Windows) c openOCD и GNU Arm Embedded Toolchain.
Подобный проект можно собрать для нескольких устройств от Milandr. Проделаны основные шаги и дан пример. 
Используемый программатор: j-link pro

### Доступные комманды (Ctrl+Alt+T):
1. **Make Clean** - очистка ./build
1. **Make Build** - сборка проекта
1. **Write .elf via OpenOCD** - запись .elf файла прошивки во флеш МК
1. **Read hex via OpenOCD** - чтение флеш банка 0 (для данной конфигурации - чтение всей памяти)
1. **Start OpenOCD** - Запуск OpenOCD
1. **Open telnet OpenOCD** - открыть telnet к 4444 порту OpenOCD
1. **Connect to GDB** - подсоедениться к gdb и начать отладку в консоли

Комманды (3,4) **НЕ** требуют предварительного запуска комманды **Start OpenOCD** это может привести к ошибке *libusb_error_access*.

Доступна отладка через gdb нативными средствами VSCode (F5)

> [Версия без OpenOCD и RTOS. Раотает с классическими j-link-программаторами и их ПО](https://github.com/tunerok/milandr_vscode_windows)

### Изменения

В файлы библиотеки был добавлен небольшой код, который определяет некоторые переменные в зависимости от используемого компилятора (в частности, DMA). Добавлена папка автозагрузки для компилятора GCC. В новых версиях библиотеки такой папки нет. Добавлен файл MDR32F9Qx_board.h, который прописан в зависимостях библиотеки. Чип выбирается в этом файле. Чтобы при отладке видеть содержимое регистров контроллера, были подправлены SVD файлы.

Был написан файл конфигурации openOCD для 1986ве92У. Он находится в каталоге ../OpenOCD_data/
В файле open_ocd_flash.cfg можно выбрать тип транспортного протокола SWD или JTAG. 
> Ознакомительные статьи по openOCD [тык](http://microsin.net/programming/arm/getting-started-openocd-with-ft2232h-for-swd-debugging.html) [тык](http://microsin.net/programming/arm/openocd-manual-part1.html)

### Настройка и запуск

Требуется установка следующих программ:
Система:
* [Набор инструментов GNU ARM](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm)
* [GNU make](http://gnuwin32.sourceforge.net/packages/make.htm)  
* [openOCD](https://github.com/ntfreak/openocd/releases) ссылка на автоматически собранные релизы под windows
> Не забудьте добавить папки **GnuWin32\bin** и **openocd\bin** в среду PATH

Код VS:
* [Cortex-Debug](https://marketplace.visualstudio.com/items?itemName=marus25.cortex-debug) расширение
* Для корректной работы IntelliSense и определения .h файлов из makefile [это расширение](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools)

**!Не забудьте изменить пути до исполняемых файлов и папок библиотек в tasks.json и launch.json**

**Также, не забудьте в файле конфигурации ОСРВ FreeRTOS/include/FreeRTOSConfig.h указать верное значение у параметра configCPU_CLOCK_HZ с частотой тактирования МК, которое используется вашей программой.**

Есть особенность работы с путями при выполнении комманд в openOCD, т.к. он создавался под linux-подобные ОС. Пути в коммандах необходимо вводить с обратными слешами "/".


> Решение некоторых проблем с **LIBUSB_ERROR_NOT_SUPPORTED** [тык](https://github.com/makenai/node-uvc-control/issues/5) [тык](https://github.com/sandeepmistry/arduino-nRF5/issues/228)

SPL-файлы и .SVD-файлы можно найти [здесь](https://ic.milandr.ru/soft/) или [здесь](https://github.com/eldarkg/emdr1986x-std-per-lib). Они также приложены к проекту.

### Для GDB
Для работы gdb добавить строку в настройки расширения  

![cortex_debug](https://user-images.githubusercontent.com/20516589/110772294-82f36480-826c-11eb-9755-4116c756697c.png)
``
"cortex-debug.gdbPath": "<ВАШ ПУТЬ>\\arm-none-eabi-gdb.exe",
``

Протестировано на отладочном комплекте 1986BE92У
