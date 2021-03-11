Протестировано на отладочном комплекте 1986BE92У


Проект подготовлен для работы с отладочно платой Milandr 1986BE92 через VSCode (версия для Windows).
Подобный проект можно собрать для нескольких устройств от Milandr. Проделаны основные шаги и дан пример.

В файлы библиотеки был добавлен небольшой код, который определяет некоторые переменные в зависимости от используемого компилятора (в частности, DMA). Добавлена ​​папка автозагрузки для компилятора GCC. В новых версиях библиотеки такой папки нет. Добавлен файл MDR32F9Qx_board.h, который прописан в зависимостях библиотеки. Чип выбирается в этом файле. Чтобы при отладке видеть содержимое регистров контроллера, были подправлены SVD файлы.

Был написан файл конфигурации openOCD для 1986ве92У. Он находится в каталоге ../OpenOCD_data/
В файле open_ocd_flash.cfg можно выбрать тип транспортного протокола SWD или JTAG. 
> Ознакомительные статьи по openOCD [тык](http://microsin.net/programming/arm/getting-started-openocd-with-ft2232h-for-swd-debugging.html) [тык](http://microsin.net/programming/arm/openocd-manual-part1.html)

Требуется установка следующих программ:
Система:
* [Набор инструментов GNU ARM](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm)
* [GNU make](http://gnuwin32.sourceforge.net/packages/make.htm)  
* [openOCD](https://github.com/ntfreak/openocd/releases) ссылка на автоматически собранные релизы под windows
> Не забудьте добавить папки **GnuWin32\bin** и **openocd\bin** в среду PATH

Код VS:
* [Cortex-Debug](https://marketplace.visualstudio.com/items?itemName=marus25.cortex-debug) расширение
* Для корректной работы IntelliSense и определения .h файлов из [makefile](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools)

Не забудьте изменить пути до исполняемых файлов и папок библиотек в tasks.json и launch.json

> Решение некоторых проблем с **LIBUSB_ERROR_NOT_SUPPORTED** [тык](https://github.com/makenai/node-uvc-control/issues/5) [тык](https://github.com/sandeepmistry/arduino-nRF5/issues/228)

SPL-файлы и .SVD-файлы можно найти [здесь](https://ic.milandr.ru/soft/) или [здесь](https://github.com/eldarkg/emdr1986x-std-per-lib). Они также приложены к проекту.

**Для GDB**

``
"cortex-debug.gdbPath": "<ВАШ ПУТЬ>\\arm-none-eabi-gdb.exe",
``
