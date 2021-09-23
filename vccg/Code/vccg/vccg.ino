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

int * keyNotes;



int currentKeyNotes[35] = {};
char * currentKeyName;
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

  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { 
    Serial.println(F("SSD1306 allocation failed"));
    while (1) {
      delay(10);
    }
  }

  mcp.setChannelValue(MCP4728_CHANNEL_A, 0);
  mcp.setChannelValue(MCP4728_CHANNEL_B, 0);
  mcp.setChannelValue(MCP4728_CHANNEL_C, 0);
  mcp.setChannelValue(MCP4728_CHANNEL_D, 0);

  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.clearDisplay();
  display.display();

  Serial.println(F("Setup Complete"));
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
  keyNotes = generateKey(currentKeyPosition, isMinor, stepDistance);
  root = keyNotes[(currentOctave * 7) + currentChord]; //Find the root note, given the inputs
  chord = generateChord(root, chord, isMinor);

  //Set Outputs
  mcp.setChannelValue(MCP4728_CHANNEL_A, chord[0]);
  mcp.setChannelValue(MCP4728_CHANNEL_B, chord[1]);
  mcp.setChannelValue(MCP4728_CHANNEL_C, chord[2]);
  mcp.setChannelValue(MCP4728_CHANNEL_D, chord[0]);

  display.clearDisplay();
  display.setCursor(0,0);
  printKey(currentKeyPosition);
  printMajority(isMinor);
  printChord(currentChord);
  display.println(currentOctave);
  display.display();
  Serial.println(freeMemory());

  delay(1000);

  //Debug
  //Serial.println(chord[0]);
  //Serial.println(keyNames[currentKeyPosition]);
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

//Given a desired key, and whether the key is minor or not, and the distance between notes:
//Generate an array of values to send to the DAC that should be in the key
int * generateKey(int keyNumber, int isMinor, float stepDistance) {
  //Minor: whole, half, whole, whole, half, whole, whole
  //Major: whole, whole, half, whole, whole, whole, half
  static int key[35] = {};

  //Find first note:
  int root = round(keyNumber * stepDistance);
  float octave = 0;
  if (isMinor) {
    //Minor
    for (int i = 0; i < sizeof(key); i += 7) {
      octave = (i / 7) * stepDistance * 12;
      key[i] = octave;
      key[i+1] = round(2*stepDistance) + octave;
      key[i+2] = round(3*stepDistance) + octave;
      key[i+3] = round(5*stepDistance) + octave;
      key[i+4] = round(7*stepDistance) + octave;
      key[i+5] = round(8*stepDistance) + octave;
      key[i+6] = round(10*stepDistance) + octave;
    }
  } else {
    //Major
    for (int i = 0; i < sizeof(key); i += 7) {
      octave = (i / 7) * stepDistance * 12;
      key[i] = octave;
      key[i+1] = round(2*stepDistance) + octave;
      key[i+2] = round(4*stepDistance) + octave;
      key[i+3] = round(5*stepDistance) + octave;
      key[i+4] = round(7*stepDistance) + octave;
      key[i+5] = round(9*stepDistance) + octave;
      key[i+6] = round(11*stepDistance) + octave;
    }
  }
  return key;
}

char printChord(int chord) {
  //static char chordText[3];
  switch(chord) {

    case 1:
      display.println("I");
      break;
    case 2:
      display.println("II");
      break;
    case 3:
      display.println("III");
      break;
    case 4:
      display.println("IV");
      break;
    case 5:
      display.println("V");
      break;
    case 6:
      display.println("VI");
      break;
    case 7:
      display.println("VII");
      break;
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

  display.println(keyNames[key]);
  return 0;
}

int printMajority(int isMinor) {
  if(isMinor) {
    display.println("minor");
  } else {
    display.println("major");
  }
  return 0;
}

int freeMemory() {
  char top;
#ifdef __arm__
  return &top - reinterpret_cast<char*>(sbrk(0));
#elif defined(CORE_TEENSY) || (ARDUINO > 103 && ARDUINO != 151)
  return &top - __brkval;
#else  // __arm__
  return __brkval ? &top - __brkval : &top - __malloc_heap_start;
#endif  // __arm__
}
