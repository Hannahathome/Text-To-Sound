/***************************************************
 This is a library for the Multi-Touch Kit
 Designed and tested to work with Arduino Uno, MEGA2560, LilyPad(ATmega 328P)
 
 For details on using this library see the tutorial at:
 ----> https://hci.cs.uni-saarland.de/multi-touch-kit/
 
 Written by Jan Dickmann, Narjes Pourjafarian, Juergen Steimle (Saarland University),
 Anusha Withana (University of Sydney), Joe Paradiso (MIT)
 MIT license, all text above must be included in any redistribution
 ****************************************************/

import MultiTouchKitUI.*;
import processing.serial.*;

class MultiTouchKitManager {
  int tx = 16;               //number of transmitter lines (rx)
  int rx = 16;               //number of receiver lines (rx)
  int serialPort = 1;       //serial port that the Arduino is connected to
  Serial myPort;
  MultiTouchKit mtk;

  int maxInputRange = 80;  // set the brightness of touch points (blobs)
  float threshold = 0.75f;  // set the threshold for blob detection

  MultiTouchKitManager() {
    mtk = new MultiTouchKit(src.this, tx, rx, serialPort, 500, 500);      // instantiate the MultiTouchKit  
  }
  
  
}
