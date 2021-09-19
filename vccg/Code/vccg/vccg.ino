// An arduino and a MCP4728 4-Channel 12-bit I2C DAC

#include <Adafruit_MCP4728.h>
#include <Wire.h>

Adafruit_MCP4728 mcp;   //ADC device to send voltage values to

int root= 0;            //Root note value
int *chord;           //Array pointer to pass around

int noteCV = 0;         //CV of note to quantize to scale;
int clockCV = 0;        //Whether the module has received a clock signal
int chordCV = 0;        //CV of the chord. Should scale 0-5v, chords I->VII
int octaveCV = 0;       //CV of the octave. Should scale 0-5v, 1v/octave

int keyUp = 0;          //Press to increment key, i.e. from C to C#
int keyDown = 0;        //Press to decrement key, i.e. from G to F#

int isMinor = 0;          //Switch to toggle major/minor
float stepDistance = 68.25; //5V => 5 Octaves => 60 notes => 12 bit dac => 4095 / 60;

int pinVoltage = 0;
int repeatVolt = 0;

int notes[60] = {
  0, 68, 136, 205, 273, 341, 410, 478, 546, 614, 682, 751, 
  819, 887, 956, 1024, 1092, 1160, 1228, 1297, 1365, 1433, 1502, 1570, 
  1638, 1706, 1774, 1843, 1911, 1979, 2048, 2116, 2184, 2252, 2320, 2389, 
  2457, 2525, 2594, 2662, 2730, 2798, 2866, 2935, 3003, 3071, 3140, 3208, 
  3276, 3344, 3412, 3481, 3549, 3617, 3686, 3754, 3822, 3890, 3958, 4027
};

int keyNotes[24][35] = {
  {0, 136, 205, 341, 478, 614, 682, 819, 956, 1024, 1160, 1297, 1433, 1502, 1638, 1774, 1843, 1979, 2116, 2252, 2320, 2457, 2594, 2662, 2798, 2935, 3071, 3140, 3276, 3412, 3481, 3617, 3754, 3890, 3958},
  {0, 68, 205, 341, 410, 546, 682, 819, 887, 1024, 1160, 1228, 1365, 1502, 1638, 1706, 1843, 1979, 2048, 2184, 2320, 2457, 2525, 2662, 2798, 2866, 3003, 3140, 3276, 3344, 3481, 3617, 3686, 3822, 3958},
  {68, 205, 273, 410, 546, 682, 751, 887, 1024, 1092, 1228, 1365, 1502, 1570, 1706, 1843, 1911, 2048, 2184, 2320, 2389, 2525, 2662, 2730, 2866, 3003, 3140, 3208, 3344, 3481, 3549, 3686, 3822, 3958, 4027},
  {68, 136, 273, 410, 478, 614, 751, 887, 956, 1092, 1228, 1297, 1433, 1570, 1706, 1774, 1911, 2048, 2116, 2252, 2389, 2525, 2594, 2730, 2866, 2935, 3071, 3208, 3344, 3412, 3549, 3686, 3754, 3890, 4027},
  {136, 273, 341, 478, 614, 751, 819, 956, 1092, 1160, 1297, 1433, 1570, 1638, 1774, 1911, 1979, 2116, 2252, 2389, 2457, 2594, 2730, 2798, 2935, 3071, 3208, 3276, 3412, 3549, 3617, 3754, 3890, 4027, 4095},
  {136, 205, 341, 478, 546, 682, 819, 956, 1024, 1160, 1297, 1365, 1502, 1638, 1774, 1843, 1979, 2116, 2184, 2320, 2457, 2594, 2662, 2798, 2935, 3003, 3140, 3276, 3412, 3481, 3617, 3754, 3822, 3958, 4095},
  {205, 341, 410, 546, 682, 819, 887, 1024, 1160, 1228, 1365, 1502, 1638, 1706, 1843, 1979, 2048, 2184, 2320, 2457, 2525, 2662, 2798, 2866, 3003, 3140, 3276, 3344, 3481, 3617, 3686, 3822, 3958, 4095},
  {205, 273, 410, 546, 614, 751, 887, 1024, 1092, 1228, 1365, 1433, 1570, 1706, 1843, 1911, 2048, 2184, 2252, 2389, 2525, 2662, 2730, 2866, 3003, 3071, 3208, 3344, 3481, 3549, 3686, 3822, 3890, 4027},
  {273, 410, 478, 614, 751, 887, 956, 1092, 1228, 1297, 1433, 1570, 1706, 1774, 1911, 2048, 2116, 2252, 2389, 2525, 2594, 2730, 2866, 2935, 3071, 3208, 3344, 3412, 3549, 3686, 3754, 3890, 4027},
  {273, 341, 478, 614, 682, 819, 956, 1092, 1160, 1297, 1433, 1502, 1638, 1774, 1911, 1979, 2116, 2252, 2320, 2457, 2594, 2730, 2798, 2935, 3071, 3140, 3276, 3412, 3549, 3617, 3754, 3890, 3958, 4095},
  {341, 478, 546, 682, 819, 956, 1024, 1160, 1297, 1365, 1502, 1638, 1774, 1843, 1979, 2116, 2184, 2320, 2457, 2594, 2662, 2798, 2935, 3003, 3140, 3276, 3412, 3481, 3617, 3754, 3822, 3958, 4095},
  {341, 410, 546, 682, 751, 887, 1024, 1160, 1228, 1365, 1502, 1570, 1706, 1843, 1979, 2048, 2184, 2320, 2389, 2525, 2662, 2798, 2866, 3003, 3140, 3208, 3344, 3481, 3617, 3686, 3822, 3958, 4027},
  {410, 546, 614, 751, 887, 1024, 1092, 1228, 1365, 1433, 1570, 1706, 1843, 1911, 2048, 2184, 2252, 2389, 2525, 2662, 2730, 2866, 3003, 3071, 3208, 3344, 3481, 3549, 3686, 3822, 3890, 4027},
  {410, 478, 614, 751, 819, 956, 1092, 1228, 1297, 1433, 1570, 1638, 1774, 1911, 2048, 2116, 2252, 2389, 2457, 2594, 2730, 2866, 2935, 3071, 3208, 3276, 3412, 3549, 3686, 3754, 3890, 4027, 4095},
  {478, 614, 682, 819, 956, 1092, 1160, 1297, 1433, 1502, 1638, 1774, 1911, 1979, 2116, 2252, 2320, 2457, 2594, 2730, 2798, 2935, 3071, 3140, 3276, 3412, 3549, 3617, 3754, 3890, 3958, 4095},
  {478, 546, 682, 819, 887, 1024, 1160, 1297, 1365, 1502, 1638, 1706, 1843, 1979, 2116, 2184, 2320, 2457, 2525, 2662, 2798, 2935, 3003, 3140, 3276, 3344, 3481, 3617, 3754, 3822, 3958, 4095},
  {546, 682, 751, 887, 1024, 1160, 1228, 1365, 1502, 1570, 1706, 1843, 1979, 2048, 2184, 2320, 2389, 2525, 2662, 2798, 2866, 3003, 3140, 3208, 3344, 3481, 3617, 3686, 3822, 3958, 4027},
  {546, 614, 751, 887, 956, 1092, 1228, 1365, 1433, 1570, 1706, 1774, 1911, 2048, 2184, 2252, 2389, 2525, 2594, 2730, 2866, 3003, 3071, 3208, 3344, 3412, 3549, 3686, 3822, 3890, 4027},
  {614, 751, 819, 956, 1092, 1228, 1297, 1433, 1570, 1638, 1774, 1911, 2048, 2116, 2252, 2389, 2457, 2594, 2730, 2866, 2935, 3071, 3208, 3276, 3412, 3549, 3686, 3754, 3890, 4027, 4095},
  {614, 682, 819, 956, 1024, 1160, 1297, 1433, 1502, 1638, 1774, 1843, 1979, 2116, 2252, 2320, 2457, 2594, 2662, 2798, 2935, 3071, 3140, 3276, 3412, 3481, 3617, 3754, 3890, 3958, 4095},
  {682, 819, 887, 1024, 1160, 1297, 1365, 1502, 1638, 1706, 1843, 1979, 2116, 2184, 2320, 2457, 2525, 2662, 2798, 2935, 3003, 3140, 3276, 3344, 3481, 3617, 3754, 3822, 3958, 4095},
  {682, 751, 887, 1024, 1092, 1228, 1365, 1502, 1570, 1706, 1843, 1911, 2048, 2184, 2320, 2389, 2525, 2662, 2730, 2866, 3003, 3140, 3208, 3344, 3481, 3549, 3686, 3822, 3958, 4027},
  {751, 887, 956, 1092, 1228, 1365, 1433, 1570, 1706, 1774, 1911, 2048, 2184, 2252, 2389, 2525, 2594, 2730, 2866, 3003, 3071, 3208, 3344, 3412, 3549, 3686, 3822, 3890, 4027},
  {751, 819, 956, 1092, 1160, 1297, 1433, 1570, 1638, 1774, 1911, 1979, 2116, 2252, 2389, 2457, 2594, 2730, 2798, 2935, 3071, 3208, 3276, 3412, 3549, 3617, 3754, 3890, 4027, 4095}
};

char keyNames[24][9] {
  "Cmaj", "Cmin", "CsharpMaj", "CsharpMin",
  "Dmaj", "Dmin", "DsharpMaj", "DsharpMin",
  "Emaj", "Emin",
  "Fmaj", "Fmin", "FsharpMaj", "FsharpMin",
  "Gmaj", "Gmin", "GsharpMaj", "GsharpMin",
  "Amaj", "Amin", "AsharpMaj", "AsharpMin",
  "Bmaj", "Bmin"
};

int currentKeyNotes[35] = {};
char currentKeyName[9] = {};
int currentOctave = 1;      // 1
int currentChord = 1;       // I
int currentKeyPosition = 0; //Cmaj

void setup(void) {
  Serial.begin(115200);
  Serial.println("Unit On!");

  // Try to initialize!
  if (!mcp.begin()) {
    Serial.println("Failed to find MCP4728 chip");
    while (1) {
      delay(10);
    }
  }

  mcp.setChannelValue(MCP4728_CHANNEL_A, 0);
  mcp.setChannelValue(MCP4728_CHANNEL_B, 0);
  mcp.setChannelValue(MCP4728_CHANNEL_C, 0);
  mcp.setChannelValue(MCP4728_CHANNEL_D, 0);
}

void loop() {
  //get Inputs
  chordCV = analogRead(A3);
  octaveCV = analogRead(A2);
  noteCV = analogRead(A1);

  clockCV = digitalRead(9);
  keyUp = digitalRead(8);
  keyDown = digitalRead(7);
  isMinor = digitalRead(6);

  //Make Sense of Inputs
  currentChord = chordSelect(chordCV);
  currentOctave = octaveSelect(octaveCV);
  
  //Generate Outputs
  root = keyNotes[currentKeyPosition][(currentOctave * 7) + currentChord]; //Find the root note, given the inputs
  chord = generateChord(root, chord, isMinor);


  //Set Outputs
  mcp.setChannelValue(MCP4728_CHANNEL_A, chord[0]);
  mcp.setChannelValue(MCP4728_CHANNEL_B, chord[1]);
  mcp.setChannelValue(MCP4728_CHANNEL_C, chord[2]);
  mcp.setChannelValue(MCP4728_CHANNEL_D, chord[0]);

  delay(10);

  //Debug
  Serial.println(chord[0]); 
}

//Return however many half steps
//I'm not sure this is the best way to do things
//but since the ADC needs integers, and since I don't have
//whole numbers, keeping as much detail as possible makes sense.
//This may be a hit to performance, in which case I can optimize it out
//but it leaves me flexible in case I move to fewer octaves of output or
//need to rescale otherwise
int halfSteps(int numberOfHalfSteps) {
  float halfSteps = numberOfHalfSteps * stepDistance;
  return round(halfSteps);
}

//Given a root note, generate a minor chord
int * minor(int root) {
  static int chord[3];
  chord[0] = root;
  chord[1] = root + halfSteps(4);
  chord[2] = root + halfSteps(7);
  return chord;
}

//Given a root note, generate a major chord
int * major(int root) {
  static int chord[3];
  chord[0] = root;
  chord[1] = root + halfSteps(3);
  chord[2] = root + halfSteps(7);
  return chord;
}

//Given a root note, generate a diminished chord
int * diminished(int root) {
  static int chord[3];
  chord[0] = root;
  chord[1] = root + halfSteps(3);
  chord[2] = root + halfSteps(6);
  return chord;
}


//Given a sorted array of numbers and a target, find the closest note
int closest(int numbers[], int target) {
  int closest = 0;
  int i = 0;

  for(i = 0; i < sizeof(&numbers); i++) {
    if (target < numbers[i]) {
      if ((numbers[i] - target) >= (numbers[i-1] - target)) {
        closest = numbers[i-1];
      } else {
        closest = numbers[i];
      }
      return closest;
    }
  }
  return numbers[sizeof(&numbers)];
}

//Based on whatever CV we see, pick an octave between 0 and 4
//1024 total DAC space
int octaveSelect(int octaveCV) {
  int octave = 0;

  if (octaveCV >= 0 && octaveCV < 205) {
    octave = 0;
  } else if (octaveCV >= 206 && octaveCV < 410) {
    octave = 1;
  } else if (octaveCV >= 411 && octaveCV < 615) {
    octave = 2;
  } else if (octaveCV >= 616 && octaveCV < 820) {
    octave = 3;
  } else {
    octave = 4;
  }

  return octave;
}

//Based on whatever CV we see, pick a chord betwen I and VII (1 and 7)
//1024 total DAC space
int chordSelect(int chordCV) {
  int chord = 0;

  if (chordCV >= 0 && chordCV < 146) {
    chord = 1;
  } else if (chordCV >= 147 && chordCV < 294) {
    chord = 2;
  } else if (chordCV >= 295 && chordCV < 441) {
    chord = 3;
  } else if (chordCV >= 442 && chordCV < 588) {
    chord = 4;
  } else if (chordCV >= 589 && chordCV < 735) {
    chord = 5;
  } else if (chordCV >= 736 && chordCV < 882) {
    chord = 6;
  } else {
    chord = 7;
  }

  return chord;
}

int * generateChord(int root, int chordRequest, int isMinor) {
  static int * chord;
  if (isMinor) {
    //Minor Key
    //i, iio, III, iv, v, VI, VII
    if ((chordRequest == 1) || (chordRequest == 4) || (chordRequest == 5)) {
      chord = minor(root);
    } else if ((chordRequest == 3) || (chordRequest == 6) || (chordRequest == 7)) {
      chord = major(root);
    } else {
      chord = diminished(root);
    }
  } else {
    //Major Key
    //I, ii, iii, IV, V, vi, viio
    if ((chordRequest == 1) || (chordRequest == 4) || (chordRequest = 5)) {
      chord = major(root);
    } else if ((chordRequest == 2) || (chordRequest == 3) || (chordRequest == 6)) {
      chord = minor(root);
    } else {
      chord = diminished(root);
    }
  }

  return chord;
}
