class Position {
  float x, y;

  Position(float x, float y) {
    this.x = x;
    this.y = y;
  }
}

abstract class TouchSource {
  Position pos;

  TouchSource() {
    pos = new Position(0, 0);
  }

  abstract void update();
}

class MouseSource extends TouchSource {
  void update() {
    pos.x = mouseX;
    pos.y = mouseY;
  }
}

class TouchManager {
  private ArrayList<TouchSource> touches;

  TouchManager() {
    touches = new ArrayList<TouchSource>();
  }

  void update() {
    for (TouchSource source : touches) {
      source.update();
    }
  }

  ArrayList<TouchSource> getTouches() {
    return touches;
  }

  void addSource(TouchSource source) {
    touches.add(source);
  }
}
