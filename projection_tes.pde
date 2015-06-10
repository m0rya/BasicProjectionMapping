
PVector[] pnt = new PVector[11];

void setup() {
  size(1280, 750);
  for (int i=0; i<8; i++) {
    if (i%2 == 0) {
      pnt[i] = new PVector(i*150, height/2);
    } else {
      pnt[i] = new PVector(i*150, height);
    }
  }

  pnt[8] = new PVector(0, 0);
  pnt[9] = new PVector(width, 0);
  pnt[10] = new PVector(width, height);
  noStroke();

  colorMode(HSB, 360, 100, 100);
}


void draw() {
  background(0);

  fill(int(map(sin(radians(frameCount*2)), -1, 1, 0, 360)), 100, 100);
  beginShape();
  vertex(pnt[0].x, pnt[0].y);
  vertex(pnt[1].x, pnt[1].y);
  vertex(pnt[3].x, pnt[3].y);
  vertex(pnt[2].x, pnt[2].y);
  endShape();


  fill(int(map(sin(radians(frameCount*2+72)), -1, 1, 0, 360)), 100, 100);
  beginShape();
  vertex(pnt[2].x, pnt[2].y);
  vertex(pnt[3].x, pnt[3].y);
  vertex(pnt[5].x, pnt[5].y);
  vertex(pnt[4].x, pnt[4].y);
  endShape();

  fill(int(map(sin(radians(frameCount*2+144)), -1, 1, 0, 360)), 100, 100);
  beginShape();
  vertex(pnt[4].x, pnt[4].y);
  vertex(pnt[5].x, pnt[5].y);
  vertex(pnt[7].x, pnt[7].y);
  vertex(pnt[6].x, pnt[6].y);
  endShape();

  fill(int(map(sin(radians(frameCount*2+216)), -1, 1, 0, 360)), 100, 100);
  beginShape();
  vertex(pnt[0].x, pnt[0].y);
  vertex(pnt[2].x, pnt[2].y);
  vertex(pnt[4].x, pnt[4].y);
  vertex(pnt[6].x, pnt[6].y);
  vertex(pnt[9].x, pnt[9].y);
  vertex(pnt[8].x, pnt[8].y);
  endShape();

  fill(int(map(sin(radians(frameCount*2+288)), -1, 1, 0, 360)), 100, 100);
  beginShape();
  vertex(pnt[6].x, pnt[6].y);
  vertex(pnt[7].x, pnt[7].y);
  vertex(pnt[10].x, pnt[10].y);
  vertex(pnt[9].x, pnt[9].y);

  endShape();
}


void mouseDragged() {

  for (int i=0; i<11; i++) {
    int dis = int(dist(mouseX, mouseY, pnt[i].x, pnt[i].y));
    if (dis < 30) {
      pnt[i].x = mouseX;
      pnt[i].y = mouseY;
    }
  }
}

