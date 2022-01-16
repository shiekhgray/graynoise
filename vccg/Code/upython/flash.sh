#!/bin/env bash

#sudo rshell cp main.py /pyboard
#sudo rshell cp ssd1306.py /pyboard
sudo rshell cp *.py /pyboard
sudo rshell repl pyboard "~ import machine ~ machine.reset()~"
