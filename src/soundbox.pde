import processing.sound.*;

class SoundBox {
  SoundFile file;

  float minX, minY, maxX, maxY;

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
  
  Boolean touchInBounds(){
    return minX < mouseX & mouseX < maxX & minY < mouseY & mouseY < maxY;
  }
}