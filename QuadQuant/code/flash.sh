#!/bin/env bash

#avrispmkII=/dev/bus/usb/001/007
#-P usb:00B082002457 
#avrdude -C /etc/avrdude/avrdude.conf -p m32u4 -c avrispmkII -Ulfuse:w:0x5F:m -Uhfuse:w:0x91:m -Uefuse:w:0xF3:m -F

#avrdude -C /etc/avrdude/avrdude.conf -p m32u4 -c avrispmkII -U lfuse:w:0x5e:m -F
#avrdude -C /etc/avrdude/avrdude.conf -p m32u4 -c avrispmkII -U hfuse:w:0x99:m -F
#avrdude -C /etc/avrdude/avrdude.conf -p m32u4 -c avrispmkII -U efuse:w:0xf3:m -F

#avrdude -p m32u4 -c usbtiny -Uflash:w:blink.hex:i

#avrdude -p m32u4 -c usbtiny -Uflash:w:Blink.ino.with_bootloader.hex:i
cp /tmp/arduino_build_784814/Blink.ino.hex .
avrdude -p m32u4 -c usbtiny -Uflash:w:Blink.ino.hex:i
