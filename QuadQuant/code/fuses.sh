#!/bin/env bash

#avrdude -p m32u4 -c avrispmkII -U lfuse:w:0xC1:m
avrdude -p m32u4 -c usbtiny -U lfuse:w:0xFF:m -F
