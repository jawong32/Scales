void setup() {
  size(810, 760);
  strokeWeight(5);
  stroke(255);
  colorMode(HSB, 400);
  noLoop();
}

void draw() {
  gradient();
  for (int i= 0; i < 20; i++) {
    for (int j = 0; j < 4; j++) {
      feather(j, i);
    }
  }
  printCoordinates();
}

void gradient() {
  int i;
  for (i = 0; i < 800; i++) {
    stroke(150, 120, 100 + i / 4);
    line(0, 800-i, 0+i, 800);
  }
  for (; i < 1600; i++) {
    stroke(150, 120, 100 + i / 4);
    line(-800+i, 0, 800, 1600-i);
  }
}

void randomGreen() {
  fill((int) (Math.random() * 41 + 160), 120, (int) (Math.random() * 250) + 50);
}

void feather(int x, int y) {
  x *= 270;
  y *= -130;
  stroke(400);
  randomGreen();
  beginShape();
  vertex(-95+x, 650+y);
  bezierVertex(-85+x, 725+y, -95+x, 750+y, -135+x, 770+y);
  bezierVertex(-90+x, 750+y, -35+x, 700+y, -35+x, 700+y);
  bezierVertex(-45+x, 750+y, -40+x, 760+y, 0+x, 780+y);
  bezierVertex(45+x, 760+y, 40+x, 750+y, 35+x, 700+y);
  bezierVertex(80+x, 750+y, 135+x, 770+y, 135+x, 770+y);
  bezierVertex(95+x, 750+y, 85+x, 725+y, 95+x, 650+y);
  bezierVertex(45+x, 600+y, 35+x, 700+y, 0+x, 560+y);
  bezierVertex(-50+x, 700+y, -40+x, 600+y, -95+x, 650+y);
  endShape();
}

void printCoordinates() {
  if (mousePressed) {
    System.out.println(String.format("(%d, %d)", mouseX, mouseY));
  }
}
