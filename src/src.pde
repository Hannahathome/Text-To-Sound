import processing.sound.*;

// Init variables
PFont font;
String[] lines;
SoundBox[] sound_boxes = {};

SoundFile background;

void setup() {
  size(800, 800);
  
  font = createFont("Arial", 16, true); 
  textFont(font, 36);
  fill(255, 0, 0);
  
  lines = loadStrings("../Story.TXT");
  
  background = new SoundFile(this, "../sounds/background.wav");
  
  sound_boxes = (SoundBox[]) append(sound_boxes, new SoundBox("../sounds/pig.wav", 0, 0, 100, 100));
  sound_boxes = (SoundBox[]) append(sound_boxes, new SoundBox("../sounds/pig.wav", 700, 700, 800, 800));
  
  //background.loop();
}

void draw() {
 background(255);
 for(int i = 0; i < lines.length; i++){
   text(lines[i], 0, 36 + (i * 36));
 }

  for(SoundBox sb : sound_boxes){
   sb.update(); 
  } 
}