#!/bin/env bash
avr-gcc -mmcu=atmega32u4 -Wall -c blink.c -o blink.out
avr-objcopy -O ihex -j .text -j .data blink.out blink.hex
