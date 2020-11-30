import processing.sound.*;

//a class made to make the sound boxes
class SoundBox {
  SoundFile file;

  float minX, minY, maxX, maxY;
  
  //giving in the values for the boxs' bounds
  SoundBox(String filePath, float _minX, float _minY, float _maxX, float _maxY) {
    minX = _minX;
    minY = _minY;
    maxX = _maxX;
    maxY = _maxY;

    file = new SoundFile(src.this, filePath);
  };

  void update() {
    // Check input
    if (touchInBounds() & file.isPlaying() == false) {
      file.loop();
    } else if (!touchInBounds() & file.isPlaying() == true) {
      file.stop();
    }
  }
  
  //checking if the mouse is within the bounds of a box
  Boolean touchInBounds(){
    return minX < mouseX & mouseX < maxX & minY < mouseY & mouseY < maxY;
  }
}