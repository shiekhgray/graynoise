from machine import Pin, I2C
from ssd1306 import SSD1306_I2C
from mcp4728 import MCP4728
from music import *
from display import *
import _thread
import utime

led = Pin(25, Pin.OUT)

utime.sleep(1)

# Initialize both I2C, The oled chews up too much update time, and bogs down the DAC
oledi2c = I2C(0, sda=Pin(0), scl=Pin(1))
oled = SSD1306_I2C(128, 64, oledi2c)

# Set up the DAC
daci2c = I2C(1, sda=Pin(2), scl=Pin(3))
dac = MCP4728(daci2c, 0x60)

dac.a.vref = 0
dac.b.vref = 0
dac.c.vref = 0
dac.d.vref = 0

#dac.a.gain = 1
#dac.b.gain = 1
#dac.c.gain = 1
#dac.d.gain = 1

dac.a.pdm = 3
dac.b.pdm = 3
dac.c.pdm = 3
dac.d.pdm = 3

threadLock = _thread.allocate_lock()

def updateOLED():
    threadLock.acquire()
    oled.show()
    threadLock.release()
    return 0;

def updateDac(a, b, c, d):
    dac.a.value = a
    dac.b.value = b
    dac.c.value = c
    dac.d.value = d

display = Display(oled)
music = Music()

# Main loop
while True:
    oled.fill(0) #clear the frame buffer
    display.printChord(music.getPrettyChord())
    display.printKey(music.getPrettyKey()) 
    display.printScale(music.getPrettyScale())
    display.printOctave(music.getPrettyOctave())
    chord = music.getChordNotes()

    print(chord)
    updateDac(chord[0], chord[1], chord[2], chord[0])

    # Throw updating the screen over onto the other core
    # If it's already updating, don't worry about it, catch it next loop
    # Updating the screen is very slow, so without this it causes audio glitches
    # out of the DAC switching voltages late
    if not threadLock.locked():
        oledThread = _thread.start_new_thread(updateOLED, ())

    led.toggle()
    music.incrementOctave()
    utime.sleep(1)
