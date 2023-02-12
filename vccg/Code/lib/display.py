from variables import *
import hashlib

class Status():
    def __init__(self, oled = None, encoder = None):
        self.oled = oled
        self.encoder = encoder

    def setOled(self, oled):
        self.oled = oled        

    def printChord(self, chordText):
        self.oled.text(chordText, 0, 0)

    def printKey(self, key):
        self.oled.text(key, 0, 10)

    def printScale(self, scale):
        scaleArr = []
        scaleText = ''
        for char in scale:
            scaleArr.append(char)
        
        scaleArr[0] = scaleArr[0].upper()
        for char in scaleArr:
            scaleText = scaleText + char

        self.oled.text(scaleText, 0, 20)

    def printOctave(self, octave):
        self.oled.text(octave, 0, 30)
        
    def printEncoder(self, encoder):
        self.oled.text("encoder: "+str(encoder), 0, 40)

    def show(self, music):
        bufferChecksum = hashlib.sha256(self.oled.buffer)
        prevBufferSum = bufferChecksum.digest()
        self.oled.fill(0) #clear the frame buffer
        self.printChord(music.getPrettyChord())
        self.printKey(music.getPrettyKey())
        self.printScale(music.getPrettyScale())
        self.printOctave(music.getPrettyOctave())
        bufferChecksum = hashlib.sha256(self.oled.buffer)
        currentBufferSum = bufferChecksum.digest()
        return currentBufferSum != prevBufferSum

class Menu():
    def __init__(self, menu, oled = None):
        self.oled = oled
        self.menu = menu
        
    def setOled(self, oled):
        self.oled = oled  

    def show(self, menu, select):
        bufferChecksum = hashlib.sha256(self.oled.buffer)
        prevBufferSum = bufferChecksum.digest()
        self.oled.fill(0) #clear the frame buffer
        items = menu.getTitles()
        item = 0
        while item < len(items):
            self.oled.text(items[item], 10, item*10)
            if select == item:
                self.oled.text("*", 0, item*10)
            item = item + 1
        bufferChecksum = hashlib.sha256(self.oled.buffer)
        currentBufferSum = bufferChecksum.digest()
        return currentBufferSum != prevBufferSum
        
class Display():
    def __init__(self, oled = None):
        self.status = Status(oled)
        self.menu = Menu([], oled)
        
    def setOled(self, oled):
        self.oled = oled  

