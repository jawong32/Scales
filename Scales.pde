void setup() {
  size(800, 800);
  //noLoop();
}
void draw() {
  /*for (int i= 0; i < TODO; i++) {
    for (int j = 0; j < TODO; j++) {
      scale();
    }
  }*/
  scale();
  printCoordinates();
}

void scale() {
  fill(0);
  noFill();
  beginShape();
  vertex(60, 650);
  bezierVertex(70, 725, 60, 750, 20, 770);
  bezierVertex(65, 750, 110, 740, 120, 700);
  bezierVertex(110, 750, 115, 760, 155, 780);
  endShape();
}

void printCoordinates() {
  if (mousePressed) {
    System.out.println(String.format("(%d, %d)", mouseX, mouseY));
  }
}
