void setup() {
  size(800, 800);
  strokeWeight(5);
  stroke(255);
  colorMode(HSB, 400);
  noLoop();
}

void draw() {
  gradient();
  for (int i= 0; i < 1; i++) {
    for (int j = 0; j < 3; j++) {
      feather(j, i);
    }
  }
  printCoordinates();
}

void gradient() {
  /*fill(160, 120, 200);  
  ellipse(0, 0, 100, 100);
  fill(200, 120, 400);
  ellipse(100, 100, 100, 100);*/
  for (int i = 0; i < 800; i++) {
    stroke(90, 120, 20 + i/2);
    line(0, 800-i, 0+i, 800);
  }
  for (int i = 0; i < 800; i++) {
    stroke(60, 30, 400 - i/2 + 20);
    line(0+i, 0, 800, 800-i);
  }   
}

void randomGreen() {
  fill((int) (Math.random() * 41 + 160), 120, (int) (Math.random() * 250));
}

void feather(int x, int y) {
  x *= 120;
  y *= 0;
  randomGreen();
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
