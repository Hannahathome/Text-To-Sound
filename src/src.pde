import processing.sound.*;

/*______________________________________________________________________________________________//
This code was made by: 
Hannah van Iterson - Ms student Industrial Design TU/eindhoven. 
Bas van Rossem - Student at Hogeschool Utrecht

Using examples from: 

Using sound files from: 
freesound.org

2020 
//______________________________________________________________________________________________*/




// Init variables
PFont font;
String[] lines;
TouchManager touch_manager;
SoundBox[] sound_boxes = {};

SoundFile background;

void setup() {
  size(800, 800);
  
  font = createFont("Arial", 16, true); 
  textFont(font, 36);
  fill(255, 0, 0);
  
  lines = loadStrings("../Story.TXT");
  
  touch_manager = new TouchManager();
  MouseSource mouse = new MouseSource();
  touch_manager.addSource(mouse);
  
  //background = new SoundFile(this, "../sounds/background.wav");
  
  sound_boxes = (SoundBox[]) append(sound_boxes, new SoundBox("../sounds/pig.wav", 0, 0, 100, 100, touch_manager));
  sound_boxes = (SoundBox[]) append(sound_boxes, new SoundBox("../sounds/pig.wav", 700, 700, 800, 800, touch_manager));
  
  //background.loop();
}

void draw() {
 background(255);
 for(int i = 0; i < lines.length; i++){
   text(lines[i], 0, 36 + (i * 36));
 }

  touch_manager.update();
  for(SoundBox sb : sound_boxes){
   sb.update(); 
  } 
}
