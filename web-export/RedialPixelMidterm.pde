String html[];
String digit[];

int count;
int unit = 80;
Square[] squares;

void setup() {
  size(800, 800);
  background(0);
  strokeWeight(2);
  stroke(0);

  int widthCount = width/unit;
  int heightCount = height/unit;
  count = widthCount * heightCount;
  squares = new Square[count];
  int index = 0;

  for (int y = 0; y < heightCount; y++) {
    for (int x = 0; x < widthCount; x++) {
      squares[index++] = new Square(x*unit, y*unit, unit/2, unit/2, unit);
    }
  }
}

void draw() {
  rectMode(CENTER);

  for (int i = 0; i < count; i++) {
    squares[i].display();
  }

  if (frameCount % 60 == 0) {
    html = loadStrings("http://asterisk.itp-redial.com/~jab680/sinatra/digit-reader/db/keypresses.yml");

    String[] digit = split(html[2], "'");
    int digitInt = int(digit[1]);
    println(digitInt);

    switch(digitInt) {
    case 1:
      for (int i = 0; i < 10; i++) {
        squares[i].update();
      }
      break;

    case 2:
      for (int i = 10; i < 20; i++) {
        squares[i].update();
      }
      break;

    case 3:
      for (int i = 20; i < 30; i++) {
        squares[i].update();
      }      
      break;

    case 4:
      for (int i = 30; i < 40; i++) {
        squares[i].update();
      }
      break;

    case 5:
      for (int i = 40; i < 50; i++) {
        squares[i].update();
      }
      break;

    case 6:
      for (int i = 50; i < 60; i++) {
        squares[i].update();
      }
      break;

    case 7:
      for (int i = 60; i < 70; i++) {
        squares[i].update();
      }
      break;

    case 8:
      for (int i = 70; i < 80; i++) {
        squares[i].update();
      }
      break;

    case 9:
      for (int i = 80; i < 90; i++) {
        squares[i].update();
      }
      break;

    case 0:
      for (int i = 90; i < 100; i++) {
        squares[i].update();
      }
      break;
    }
  }
}
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


