from variables import *

class Music():
    def __init__(self):
        self.key = 0        # C, F, F#, etc.
        self.scale = True   # Major = True; Minor = False
        self.octave = 2     # Octave, 0 through 4
        self.generateKey()
        self.setChord(1)    # Sets self.chordId = 1 & self.chordNotes to a C maj chord

    # Generate an array of values to send to the DAC that should be in a given key
    def generateKey(self):
        # Minor: whole, half, whole, whole, half, whole, whole
        # Major: whole, whole, half, whole, whole, whole, half

        root = round(self.key * STEPDISTANCE)
        key = self.key
        notes = []

        if self.scale: #Major
            for i in range(0, 5):   # 5 octaves
                octaveOffset = (i * STEPDISTANCE * 12) + root
                notes.append(int(octaveOffset))
                notes.append(int(round(2*STEPDISTANCE) + octaveOffset))
                notes.append(int(round(3*STEPDISTANCE) + octaveOffset))
                notes.append(int(round(5*STEPDISTANCE) + octaveOffset))
                notes.append(int(round(7*STEPDISTANCE) + octaveOffset))
                notes.append(int(round(8*STEPDISTANCE) + octaveOffset))
                notes.append(int(round(10*STEPDISTANCE) + octaveOffset))
        else: # Minor
            for i in range(0, 5):   # 5 octaves
                octaveOffset = (i * STEPDISTANCE * 12) + root
                notes.append(int(octaveOffset))
                notes.append(int(round(2*STEPDISTANCE) + octaveOffset))
                notes.append(int(round(4*STEPDISTANCE) + octaveOffset))
                notes.append(int(round(5*STEPDISTANCE) + octaveOffset))
                notes.append(int(round(7*STEPDISTANCE) + octaveOffset))
                notes.append(int(round(9*STEPDISTANCE) + octaveOffset))
                notes.append(int(round(11*STEPDISTANCE) + octaveOffset))

        self.notes = notes


    def setOctave(self, octave):
        if type(octave) not in [int]:
            raise TypeError("octave must be an int")
        if octave < 0 or octave > 4:
            raise ValueError("octave must be between 0 and 4")

        self.octave = octave

    def incrementOctave(self):
        newOctave = self.octave + 1
        if newOctave > 4:
            newOctave = 0

        self.octave = newOctave
        self.setChord(self.chordId)

    def decrementOctave(self):
        newOctave = self.octave - 1
        if newOctave < 0:
            newOctave = 4

        self.octave = newOctave
        self.setChord(self.chordId)

    def getOctave(self):
        return self.octave


    def getPrettyOctave(self):
        prettyOctave = self.octave + 1
        return str(prettyOctave) # Musicians don't believe in 0 indexes


    def setChord(self, chordRequest):
        self.chordId = chordRequest

        root = self.notes[((self.octave - 1)* 7) + chordRequest]
        chord = []
        if self.scale: # Major
            # I, ii, iii, IV, V, vi, viio
            if chordRequest in [1, 4, 5]:
                chord = self.major(root)
            elif chordRequest in [2, 3, 6]:
                chord = self.minor(root)
            else:
                chord = self.diminished(root)
        else: # Minor
            #i, iio, III, iv, v, VI, VII
            if chordRequest in [1, 4, 5]:
                chord = self.minor(root)
            elif chordRequest in [3, 6, 7]:
                chord = self.major(root)
            else:
                chord = self.diminished(root)

        self.chordNotes = chord


    # Given a key number (where C = 0) increment the key number
    def keyUp(self):
        key = self.key
        key += 1

        if(key >= 12):
            key = 0

        self.key = key

    # Given a key number (where C = 0) decrement the key number
    def keyDown(self):
        key = self.key
        key -= 1

        if(key < 0):
            key = 11

        self.key = key

    # If the scale is major, toggle to minor and vice versa
    def toggleScale(self):
        self.scale = not self.scale

    # Return a human readable version of the scale
    def getPrettyScale(self):
        if self.scale:
            return "major"
        else:
            return "minor"

    # Get music key
    def getKey(self):
        return self.key

    def getPrettyKey(self):
        key = self.key
        keys = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
        return keys[key]

    def getPrettyChord(self):
        chord = self.chordId
        chordText = ''
        if self.scale: #major
            if chord == 1:
                    chordText = "I"
            if chord == 2:
                    chordText = "ii"
            if chord == 3:
                    chordText = "iii"
            if chord == 4:
                    chordText = "IV"
            if chord == 5:
                    chordText = "V"
            if chord == 6:
                    chordText = "vi"
            if chord == 7:
                    chordText = "vii"
        else: #minor
            if chord == 1:
                    chordText = "i"
            if chord == 2:
                    chordText = "ii"
            if chord == 3:
                    chordText = "III"
            if chord == 4:
                    chordText = "iv"
            if chord == 5:
                    chordText = "v"
            if chord == 6:
                    chordText = "VI"
            if chord == 7:
                    chordText = "VII"

        return chordText

    def getChordNotes(self):
        return self.chordNotes

    # Get music major/minor
    def isMajor(self):
        return self.scale

    # Return the DAC value need to traverse a given number of half steps
    def halfSteps(self, stepCount):
        if type(stepCount) not in [int]:
            raise TypeError("step count must be an int")
        if stepCount < 0:
            raise ValueError("step count must be positive")

        halfSteps = stepCount * STEPDISTANCE
        return round(halfSteps)


    # Return a minor 3 DAC value chord given a root dac value
    def minor(self, root):
        if type(root) not in [int]:
            raise TypeError("root note must be an int")
        if root < 0:
            raise ValueError("root note must be positive")

        chord = []
        chord.append(root)
        chord.append(root + self.halfSteps(4))
        chord.append(root + self.halfSteps(7))
        return chord

    # Return a major 3 DAC value chord given a root dac value
    def major(self, root):
        if type(root) not in [int]:
            raise TypeError("root note must be an int")
        if root < 0:
            raise ValueError("root note must be positive")

        chord = []
        chord.append(root)
        chord.append(root + self.halfSteps(3))
        chord.append(root + self.halfSteps(7))
        return chord

    def diminished(self, root):
        if type(root) not in [int]:
            raise TypeError("root note must be an int")
        if root < 0:
            raise ValueError("root note must be positive")

        chord = []
        chord.append(root)
        chord.append(root + self.halfSteps(3))
        chord.append(root + self.halfSteps(6))
        return chord

