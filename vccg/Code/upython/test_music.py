import unittest
from variables import *
from music import Music

class TestMusicTheory(unittest.TestCase):
    def test_major(self):
        music1 = Music()
        self.assertEqual(music1.major(100), [100, 305, 578])
        self.assertRaises(TypeError, music1.major, 11.7)
        self.assertRaises(ValueError, music1.major, -7)

    def test_minor(self):
        music1 = Music()
        self.assertEqual(music1.minor(100), [100, 373, 578])
        self.assertRaises(TypeError, music1.minor, 11.7)
        self.assertRaises(ValueError, music1.minor, -7)

    def test_keyUp(self):
        music1 = Music()

        music1.key = 11
        music1.keyUp()
        self.assertEqual(music1.getKey(), 0)

        music1.key = 5
        music1.keyUp()
        self.assertEqual(music1.getKey(), 6)

    def test_keyDown(self):
        music1 = Music()

        music1.key = 0
        music1.keyDown()
        self.assertEqual(music1.getKey(), 11)

        music1.key = 5
        music1.keyDown()
        self.assertEqual(music1.getKey(), 4)

    def test_halfSteps(self):
        music1 = Music()
        self.assertEqual(music1.halfSteps(5), 341)
        self.assertRaises(TypeError, music1.halfSteps, 3.4)
        self.assertRaises(ValueError, music1.halfSteps, -7)

    def test_toggleMajor(self):
        music1 = Music()
        self.assertEqual(music1.isMajor(), True)

        music1.toggleScale()
        self.assertEqual(music1.isMajor(), False)

    def test_generateKey(self):
        music = Music()
        self.assertEqual(music.notes, [0, 136, 205, 341, 478,
            546, 682, 819, 955, 1024, 1160, 1297, 1365, 1501,
            1638, 1774, 1843, 1979, 2116, 2184, 2320, 2457, 2593,
            2662, 2798, 2935, 3003, 3139, 3276, 3412, 3481, 3617,
            3754, 3822, 3958])

    def test_getPrettyKey(self):
        music = Music()
        music.key = 2
        self.assertEqual(music.getPrettyKey(), "D")
        music.key = 7
        self.assertEqual(music.getPrettyKey(), "G")
        music.keyUp()
        self.assertEqual(music.getPrettyKey(), "G#")
        music.key = 11
        self.assertEqual(music.getPrettyKey(), "B")
        music.keyUp()
        self.assertEqual(music.getPrettyKey(), "C")

    def test_getPrettyMajority(self):
        music = Music()
        self.assertEqual(music.getPrettyScale(), "major")
        music.toggleScale()
        self.assertEqual(music.getPrettyScale(), "minor")


    def test_genChordString(self):
        music = Music()

        #Major
        self.assertEqual(music.getPrettyChord(), "I")
        music.setChord(1)
        self.assertEqual(music.getPrettyChord(), "I")
        music.setChord(2)
        self.assertEqual(music.getPrettyChord(), "ii")
        music.setChord(3)
        self.assertEqual(music.getPrettyChord(), "iii")
        music.setChord(4)
        self.assertEqual(music.getPrettyChord(), "IV")
        music.setChord(5)
        self.assertEqual(music.getPrettyChord(), "V")
        music.setChord(6)
        self.assertEqual(music.getPrettyChord(), "vi")
        music.setChord(7)
        self.assertEqual(music.getPrettyChord(), "vii")

        #Minor
        music.toggleScale()
        
        music.setChord(1)
        self.assertEqual(music.getPrettyChord(), "i")
        music.setChord(2)
        self.assertEqual(music.getPrettyChord(), "ii")
        music.setChord(3)
        self.assertEqual(music.getPrettyChord(), "III")
        music.setChord(4)
        self.assertEqual(music.getPrettyChord(), "iv")
        music.setChord(5)
        self.assertEqual(music.getPrettyChord(), "v")
        music.setChord(6)
        self.assertEqual(music.getPrettyChord(), "VI")
        music.setChord(7)
        self.assertEqual(music.getPrettyChord(), "VII")

    def test_getOctave(self):
        music = Music()
        self.assertEqual(music.getOctave(), 2)

    def test_incrementOctave(self):
        music = Music()
        self.assertEqual(music.getOctave(), 2)
        music.incrementOctave()
        self.assertEqual(music.getOctave(), 3)
        music.incrementOctave()
        self.assertEqual(music.getOctave(), 4)
        music.incrementOctave()
        self.assertEqual(music.getOctave(), 0)

    def test_incrementOctaveNotes(self):
        music = Music()
        notes = [955, 1160, 1433]
        octaveOffset = 12 * STEPDISTANCE
        self.assertEqual(music.getChordNotes(), notes)
        notes[0] += octaveOffset
        notes[1] += octaveOffset
        notes[2] += octaveOffset
        music.incrementOctave()
        self.assertEqual(music.getChordNotes(), notes)

    def test_decrementOctave(self):
        music = Music()
        self.assertEqual(music.getOctave(), 2)
        music.decrementOctave()
        self.assertEqual(music.getOctave(), 1)
        music.decrementOctave()
        self.assertEqual(music.getOctave(), 0)
        music.decrementOctave()
        self.assertEqual(music.getOctave(), 4)

    def test_decrementOctaveNotes(self):
        music = Music()
        notes = [955, 1160, 1433]
        octaveOffset = 12 * STEPDISTANCE
        self.assertEqual(music.getChordNotes(), notes)
        notes[0] -= octaveOffset
        notes[1] -= octaveOffset
        notes[2] -= octaveOffset
        music.decrementOctave()
        self.assertEqual(music.getChordNotes(), notes)

    def test_getePrettyOctave(self):
        music = Music()
        self.assertEqual(music.getPrettyOctave(), "3")


