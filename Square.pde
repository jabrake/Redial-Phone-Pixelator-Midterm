class Square {

  int xOffset, yOffset;
  int x, y;
  int unit;
  color sqColor;

  Square(int xOffsetTemp, int yOffsetTemp, int xTemp, int yTemp, int unitTemp) {
    xOffset = xOffsetTemp;
    yOffset = yOffsetTemp;
    x = xTemp;
    y = yTemp;
    unit = unitTemp;
    sqColor = color(0);
  }

  void display() {
    fill(sqColor);
    rect(xOffset + x, yOffset + y, 80, 80);
  }

  void update() {
    sqColor = color(random(255), random(255), random(255));
  }
}

