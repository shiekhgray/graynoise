from variables import *

class Display():
    def __init__(self, oled = None):
        self.oled = oled

    def setOled(self, oled):
        self.oled = oled        

    def printChord(self, chordText):
        self.oled.text(chordText, 0, 0)

    def printKey(self, key):
        self.oled.text(key, 0, 10)

    def printScale(self, scale):
        if scale:
            scaleText = "Major"
        else:
            scaleText = "Minor"
        
        self.oled.text(scaleText, 0, 20)

    def printOctave(self, octave):
        self.oled.text(octave, 0, 30)

