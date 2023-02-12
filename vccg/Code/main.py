#from oled import Write, GFX, SSD1306_I2C
#from oled.fonts import ubuntu_mono_15, ubuntu_mono_20

from machine import I2C, Pin, Timer
from mcp4728 import MCP4728
from ssd1306 import SSD1306_I2C
from music import *
from menu import *
from display import *
from encoder import *
import _thread
import utime

led = Pin(25, Pin.OUT)

utime.sleep_ms(100)

# Initialize both I2C, The oled chews up too much update time, and bogs down the DAC
oledi2c = I2C(1, sda=Pin(2), scl=Pin(3))
utime.sleep_ms(100)

daci2c = I2C(0, sda=Pin(12), scl=Pin(13))
utime.sleep_ms(1000)

oled = SSD1306_I2C(128, 64, oledi2c)
utime.sleep_ms(100)

dac = MCP4728(daci2c)
utime.sleep_ms(100)

encoder = Encoder(20,19)
encoder.setPosition(-2)
select = Pin(18, Pin.IN)
back = Pin(21, Pin.IN)

threadLock = _thread.allocate_lock()

key = MenuList(["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A"],"Key")
inversion = MenuScalar(1,3,1,"Inversion")
slew = MenuScalar(0,100,0,"Slew")
spread = MenuScalar(0,100,0,"Spread")
mode = MenuList(["Ionian", "Dorian", "Phrygian", "Lydian", "Mixolydian", "Aeolian", "Locrian"],"Mode")
tuner = MenuControl("Tuner")

topMenu = MenuList([key, inversion, slew, spread, mode, tuner])
topMenu.updateParents()
menu = topMenu

def updateOLED():
    #use the other core to keep the main loop snappy here
    threadLock.acquire(0)
    oled.show()
    threadLock.release()
    return 0;

def updateDac(a, b, c, d):
    dac.a.value = a
    dac.b.value = b
    dac.c.value = c
    dac.d.value = d
    
def resetScreen(timer):
    global displaySetting
    displaySetting = 0
    
settingsTimer = Timer(-1) #virtual timer

display = Display(oled)
music = Music()
position = 0
prevPos = 0
menuTimer = 0
selectPrev = 0
backPrev = 0
global displaySetting
displaySetting = 0 #What screen should be shown. 0:status page 1:settings


# Main loop
while True:
    #print(str(displaySetting))
    prevPos = position
    position = encoder.read()
    #print(str(position))
    if(prevPos != position or select.value() == 1):
        settingsTimer.deinit()
        settingsTimer.init(mode=Timer.ONE_SHOT, period=3000, callback=resetScreen)
        displaySetting = 1

    if displaySetting == 0:
        updateScreen = display.status.show(music)
    else:
        #updateScreen = display.menu.show(['major', 'minor', 'dorian', 'phrygian', 'lydian', 'mixolydian', 'locrian'], 0)
        updateScreen = display.menu.show(menu,encoder.read() % len(menu.getTitles()))
    
    if select.value() == 1 and selectPrev == 0:
        selectPrev = 1
        menu.setSelection(encoder.read() % len(menu.getTitles()))
        menu = menu.getSelection()
        encoder.setPosition(0)
        position = 0
    else:
        selectPrev = select.value()
        
    if back.value() == 1 and backPrev == 0:
        backPrev = 1
        menu = menu.getParent()
        if not isinstance(menu,MenuList):
            menu = topMenu
            settingsTimer.deinit()
    else:
        backPrev = back.value()
        
    chord = music.getChordNotes()

    #print(chord)
    music.setOctave(encoder.read() % 5)
    #print("position: " + str(position))
    updateDac(chord[0], chord[1], chord[2], chord[0])

    # Throw updating the screen over onto the other core
    # If it's already updating, don't worry about it, catch it next loop
    # Updating the screen is very slow, so without this it causes audio glitches
    # out of the DAC switching voltages late
    if not threadLock.locked() and updateScreen:
        oledThread = _thread.start_new_thread(updateOLED, ())

    #music.incrementOctave()
    #utime.sleep(0.01)
