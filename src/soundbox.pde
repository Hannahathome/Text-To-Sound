import processing.sound.*;

class SoundBox {
  SoundFile file;
  TouchManager touch_manager;
  float minX, minY, maxX, maxY;

  SoundBox(String filePath, float _minX, float _minY, float _maxX, float _maxY, TouchManager _touch_manager) {
    minX = _minX;
    minY = _minY;
    maxX = _maxX;
    maxY = _maxY;

    touch_manager = _touch_manager;

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

  Boolean touchInBounds() {
    for (TouchSource touch : touch_manager.getTouches()) {
      if ( minX < touch.pos.x & touch.pos.x < maxX & minY < touch.pos.y & touch.pos.y < maxY) return true;
    }
    return false;
  }
}
