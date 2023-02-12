from machine import Pin
import math
from variables import *

class Encoder(object):
    def __init__(self, A, B):
        self.A = Pin(A, Pin.IN)
        self.B = Pin(B, Pin.IN)
        self.pos = 0
        self.lastPos = -1
        self.doubleState = 0
        self.state = self.__calcState()
        self.previous = self.__prevState()
        
        self.A.irq(trigger=Pin.IRQ_RISING | Pin.IRQ_FALLING, handler=self.__update)
        self.B.irq(trigger=Pin.IRQ_RISING | Pin.IRQ_FALLING, handler=self.__update)
    
    def __calcState(self):
        if (self.A.value() == 0 and self.B.value() == 0):
            #print("state1")
            return 1
        if (self.A.value() == 0 and self.B.value() == 1):
            #print("state2")
            return 2
        if (self.A.value() == 1 and self.B.value() == 1):
            #print("state3")
            return 3
        if (self.A.value() == 1 and self.B.value() == 0):
            #print("state4")
            return 4
        else:
            print('encoder state out of bounds, glitchy input')
        
    def __nextState(self):
        if self.__calcState() == 4:
            return 1
        else:
            return self.__calcState() + 1
        
    def __prevState(self):
        if self.__calcState() == 1:
            return 4
        else:
            response = self.__calcState() - 1
            return response
        
    def __updatePos(self):
        self.lastPos = self.pos
        if (self.state > self.previous) and (self.state != 0):
            self.pos = self.pos + 1
        else:
            self.pos = self.pos - 1
        
    def __update(self, something):
        self.doubleState = self.previous
        self.previous = self.state
        state = self.__calcState()
        self.state = self.__calcState()
        self.__updatePos()
        
    def reset(self):
        self.lastPos = -1
        self.pos = 0
            
    def read(self):
        if self.pos > self.lastPos:
            return math.floor(self.pos / 2)
        else:
            return math.ceil(self.pos / 2)
    
    def setPosition(self, position):
        self.lastPos = position -1
        self.position = position
        return self.position

