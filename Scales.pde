void setup() {
  size(800, 800);
  fill(255, 0, 0);
  strokeWeight(5);
}

void draw() {
  for (int i= 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      feather(j, i);
    }
  }
  printCoordinates();
}

void feather(int x, int y) {
  x *= 290;
  y *= 0;
  beginShape();
  vertex(60+x, 650);
  bezierVertex(70+x, 725, 60+x, 750, 20+x, 770);
  bezierVertex(65+x, 750, 120+x, 700, 120+x, 700);
  bezierVertex(110+x, 750, 115+x, 760, 155+x, 780);
  bezierVertex(200+x, 760, 195+x, 750, 190+x, 700);
  bezierVertex(235+x, 750, 290+x, 770, 290+x, 770);
  bezierVertex(250+x, 750, 240+x, 725, 250+x, 650);
  bezierVertex(200+x, 600, 190+x, 700, 155+x, 560);
  bezierVertex(105+x, 700, 115+x, 600, 60+x, 650);
  endShape();
}

void printCoordinates() {
  if (mousePressed) {
    System.out.println(String.format("(%d, %d)", mouseX, mouseY));
  }
}
