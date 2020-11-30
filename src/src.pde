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
SoundBox[] sound_boxes = {};

SoundFile background;

void setup() {
  size(1200, 800);
  
  font = createFont("Arial", 16, true); 
  textFont(font, 36);
  fill(0, 0, 0);
  
  lines = loadStrings("../Story1string.TXT");
  
  //background = new SoundFile(this, "../sounds/background.wav");
  
  sound_boxes = (SoundBox[]) append(sound_boxes, new SoundBox("../sounds/pig.wav", 600, 30, 750, 80));
  sound_boxes = (SoundBox[]) append(sound_boxes, new SoundBox("../sounds/pig.wav", 870, 140, 990, 180));
  sound_boxes = (SoundBox[]) append(sound_boxes, new SoundBox("../sounds/dance.wav", 745, 300, 1100, 345));
  sound_boxes = (SoundBox[]) append(sound_boxes, new SoundBox("../sounds/building.wav", 835, 355, 1080, 395));

  
  //background.loop();
}

void draw() {
 background(255);
 for(int i = 0; i < lines.length; i++){
   text(lines[i], 0, 36 + (i * 36), 1200, 800);
    }

  for(SoundBox sb : sound_boxes){
   sb.update(); 
  
  } 
  println(mouseX); 
  println(mouseY);
  
}