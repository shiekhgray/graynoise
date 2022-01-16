import unittest
from variables import *
from display import Display

#These are BAD TESTS. But they did help me debug a thing

# (This class should only really accept an SSD1306_I2C object, not a string.)

class TestDiplayFunctions(unittest.TestCase):
    def test_init(self):
        display = Display()
        self.assertIsNone(display.oled)

        oled = "oled"
        display = Display(oled)
        self.assertEqual(display.oled, "oled")

    def test_setOled(self):
        display = Display()
        self.assertIsNone(display.oled)
        display.setOled("oled")
        self.assertEqual(display.oled, "oled")

        
