void setup() {
  size(800, 800);
  fill(0);
  strokeWeight(5);
  noFill();
}

void draw() {
  /*for (int i= 0; i < TODO; i++) {
    for (int j = 0; j < TODO; j++) {
      scale();
    }
  }*/
  feather();
  printCoordinates();
  stroke(255, 0, 0);
}

void feather() {
  stroke(0);
  beginShape();
  vertex(60, 650);
  bezierVertex(70, 725, 60, 750, 20, 770);
  bezierVertex(65, 750, 120, 700, 120, 700);
  bezierVertex(110, 750, 115, 760, 155, 780);
  bezierVertex(200, 760, 195, 750, 190, 700);
  bezierVertex(235, 750, 290, 770, 290, 770);
  bezierVertex(250, 750, 240, 725, 250, 650);
  bezierVertex(200, 600, 190, 700, 155, 560);
  bezierVertex(105, 700, 115, 600, 60, 650);
  endShape();
}

void printCoordinates() {
  if (mousePressed) {
    System.out.println(String.format("(%d, %d)", mouseX, mouseY));
  }
}
