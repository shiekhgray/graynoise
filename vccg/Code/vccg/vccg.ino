// An arduino and a MCP4728 4-Channel 12-bit I2C DAC, and an OLED screen
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Adafruit_MCP4728.h>

#ifdef __arm__
// should use uinstd.h to define sbrk but Due causes a conflict
extern "C" char* sbrk(int incr);
#else  // __ARM__
extern char *__brkval;
#endif  // __arm__

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels

#define OLED_RESET     -1 // Reset pin # (or -1 if sharing Arduino reset pin)

Adafruit_MCP4728 mcp;   //12bit quad DAC device to send voltage values to
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET); //oled screen

int root= 0;            //Root note value
int *chord;           //Array pointer to pass around
int melody;           //quantized melody note

int noteCV = 0;         //CV of note to quantize to scale;
int chordCV = 0;        //CV of the chord. Should scale 0-5v, chords I->VII
int octaveCV = 0;       //CV of the octave. Should scale 0-5v, 1v/octave

int keyUp = 0;          //Press to increment key, i.e. from C to C#
int keyUpPrevious = 0;

int keyDown = 0;        //Press to decrement key, i.e. from G to F#
int keyDownPrevious = 0;

int clockCV = 0;        //Whether the module has received a clock signal
int clockCVPrevious = 1;

int melodyClock = 0;
int melodyClockPrevious = 1;

int isMinor = 0;          //Switch to toggle major/minor
bool isMinorReading = 0;
bool isMinorPrevious = 0;

float stepDistance = 68.25; //5V => 5 Octaves => 60 notes => 12 bit dac => 4095 / 60;

bool recomputeKey = 0;

int currentKeyNotes[35] = {};
char * currentKeyName;
int currentOctave = 1;      // 1
int currentChord = 1;       // I
int currentKeyPosition = 0; //Cmaj
int keyCompute = 0;

void setup(void) {
  Serial.begin(115200);
  Serial.println(F("Unit On!"));

  pinMode(5, INPUT); //chordClock
  pinMode(6, INPUT); //melodyClock
  pinMode(7, INPUT); //keyUp
  pinMode(8, INPUT); //keyDown
  pinMode(9, INPUT); //isMinor
  pinMode(13, OUTPUT); //autoClock

  // Try to initialize!
  if (!mcp.begin()) {
    Serial.println(F("Failed to find MCP4728 chip"));
    while (1) {
      delay(10);
    }
  } else {
    Serial.println(F("DAC online"));
  }

  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { 
    Serial.println(F("SSD1306 allocation failed"));
    while (1) {
      delay(10);
    }
  } else {
    Serial.println(F("Display online"));
  }

  mcp.setChannelValue(MCP4728_CHANNEL_A, 0);
  mcp.setChannelValue(MCP4728_CHANNEL_B, 0);
  mcp.setChannelValue(MCP4728_CHANNEL_C, 0);
  mcp.setChannelValue(MCP4728_CHANNEL_D, 0);

  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.clearDisplay();
  display.display();

  currentKeyPosition = 0;
  generateKey();
  Serial.println(F("Setup Complete"));
}

void loop() {
  //get Inputs
  chordCV = analogRead(A0);
  octaveCV = analogRead(A1);
  noteCV = analogRead(A2);

  clockCV = digitalRead(5);
  melodyClock = digitalRead(6);
  keyUp = digitalRead(7);
  keyDown = digitalRead(8);
  isMinorReading = digitalRead(9);

  //Make Sense of Inputs
  if ((isMinorReading != isMinorPrevious) && (isMinorReading == 1)) {
    toggleMinor(isMinor);
    recomputeKey = true;
  } 
  isMinorPrevious = isMinorReading;

  if ((keyUp != keyUpPrevious) && (keyUp == 1)) {
    computeKeyUp();
    recomputeKey = true;
  }
  keyUpPrevious = keyUp;

  if ((keyDown != keyDownPrevious) && (keyDown == 1)) {
    computeKeyDown();
    recomputeKey = true;
  }
  keyDownPrevious = keyDown;

  if ((clockCV == 0) && (clockCV != clockCVPrevious)) {
    if (recomputeKey) {
      generateKey();
      recomputeKey = false;
    }
    currentChord = chordSelect(chordCV);
    currentOctave = octaveSelect(octaveCV);
  
    //Generate Outputs
    root = currentKeyNotes[(currentOctave * 7) + currentChord];

    chord = generateChord(root, chord);
  }
  clockCVPrevious = clockCV;

  if((melodyClock == 0) && (melodyClock != melodyClockPrevious)) {
    melody = closest(noteCV * 4); //10bit input to 12bit output
  }
  melodyClockPrevious = melodyClock;

  //Set Outputs

  mcp.setChannelValue(MCP4728_CHANNEL_A, chord[0]);
  mcp.setChannelValue(MCP4728_CHANNEL_B, chord[1]);
  mcp.setChannelValue(MCP4728_CHANNEL_C, chord[2]);
  mcp.setChannelValue(MCP4728_CHANNEL_D, melody);

  display.clearDisplay();
  printKey(currentKeyPosition);
  printMajority(isMinor);
  printChord(currentChord, isMinor);
  printOctave(currentOctave);
  display.display();

  //Clock ourselves
  digitalWrite(13, !digitalRead(13));
}

//Return however many half steps
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


//Given a target, find the closest note in the currentKey.
int closest(int target) {
  int closest = 0;
  for (int i = 0; i < (sizeof(currentKeyNotes)/sizeof(currentKeyNotes[0])); i++) {
    if (target < currentKeyNotes[i]) {
      if ((currentKeyNotes[i] - target) >= (currentKeyNotes[i-1] - target)) {
        closest = currentKeyNotes[i-1];
      } else {
        closest = currentKeyNotes[i];
      }
      return closest;
    }
  }
  return currentKeyNotes[sizeof(currentKeyNotes[0])]; //highest note in key
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

int * generateChord(int root, int chordRequest) {
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

//Given a desired key, and whether the key is minor or not, and the distance between notes:
//Generate an array of values to send to the DAC that should be in the key
void generateKey() {
  //Minor: whole, half, whole, whole, half, whole, whole
  //Major: whole, whole, half, whole, whole, whole, half

  //Find first note:
  int root = round(currentKeyPosition * stepDistance);
  float octaveOffset = 0;
  if (isMinor) {
    //Minor
    for (int i = 0; i < (sizeof(currentKeyNotes)/sizeof(currentKeyNotes[0])); i += 7) {
      octaveOffset = ((i / 7) * stepDistance * 12) + root;
      currentKeyNotes[i] = octaveOffset;
      currentKeyNotes[i+1] = round(2*stepDistance) + octaveOffset;
      currentKeyNotes[i+2] = round(3*stepDistance) + octaveOffset;
      currentKeyNotes[i+3] = round(5*stepDistance) + octaveOffset;
      currentKeyNotes[i+4] = round(7*stepDistance) + octaveOffset;
      currentKeyNotes[i+5] = round(8*stepDistance) + octaveOffset;
      currentKeyNotes[i+6] = round(10*stepDistance) + octaveOffset;
    }
  } else {
    //Major
    for (int i = 0; i < (sizeof(currentKeyNotes)/sizeof(currentKeyNotes[0])); i += 7) {
      octaveOffset = ((i / 7) * stepDistance * 12) + root;
      currentKeyNotes[i] = octaveOffset;
      currentKeyNotes[i+1] = round(2*stepDistance) + octaveOffset;
      currentKeyNotes[i+2] = round(4*stepDistance) + octaveOffset;
      currentKeyNotes[i+3] = round(5*stepDistance) + octaveOffset;
      currentKeyNotes[i+4] = round(7*stepDistance) + octaveOffset;
      currentKeyNotes[i+5] = round(9*stepDistance) + octaveOffset;
      currentKeyNotes[i+6] = round(11*stepDistance) + octaveOffset;
    }
  }
}

char printChord(int chord, int isMinor) {
  display.setCursor(48,32);
  display.setTextSize(4);
  if (isMinor) {
    switch(chord) {
      case 1:
        display.println(" i");
        break;
      case 2:
        display.setCursor(60,32);
        display.println("ii");
        break;
      case 3:
        display.println("III");
        break;
      case 4:
        display.setCursor(60,32);
        display.println("iv");
        break;
      case 5:
        display.println(" v");
        break;
      case 6:
        display.setCursor(60,32);
        display.println("VI");
        break;
      case 7:
        display.println("VII");
        break;
    }
  } else {
    //Major Key
    switch(chord) {
      case 1:
        display.println(" I");
        break;
      case 2:
        display.setCursor(60,32);
        display.println("ii");
        break;
      case 3:
        display.println("iii");
        break;
      case 4:
        display.setCursor(60,32);
        display.println("IV");
        break;
      case 5:
        display.println(" V");
        break;
      case 6:
        display.setCursor(60,32);
        display.println("vi");
        break;
      case 7:
        display.println("vii");
        break;
    }
  }

  return 0;
  
}

int printKey(int key) {
  char keyNames[12][3] {
    "C", "C#",
    "D", "D#",
    "E",
    "F", "F#",
    "G", "G#",
    "A", "A#",
    "B"
  };
  //static char keyName[3] = {keyNames[key]};
  display.setCursor(0,0);
  display.setTextSize(4);
  display.println(keyNames[key]);
  return 0;
}

int printMajority(int isMinor) {
  display.setCursor(58,0);
  display.setTextSize(2);
  if(isMinor) {
    display.println("minor");
  } else {
    display.println("major");
  }
  return 0;
}

int printOctave(int printOctave) {
  int octave = printOctave + 1;
  display.setCursor(8,45);
  display.setTextSize(2);
  display.println(octave);
  return 0;
}

void computeKeyUp() {
  currentKeyPosition++;

  if(currentKeyPosition >= 12) {
    currentKeyPosition = 0;
  }

  return true;
}

void computeKeyDown() {
  currentKeyPosition--;
  
  if (currentKeyPosition < 0) {
    currentKeyPosition = 11;
  }

  return true;
}

void toggleMinor(int isMinorToggle) {
  if(isMinorToggle == 1) {
    isMinor = 0;
  } else {
    isMinor = 1;
  }

  return true;
}
