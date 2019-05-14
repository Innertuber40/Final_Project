void setup() {
  size(1500, 700);
  background(255);
  frameRate(100);
}

float x = 300;
float y = 300;
float v = 0;
boolean left;
boolean right;
void draw() {
  background(255);
  line(width/2, height-150, width/2+50, height-150);
  stroke(0, 0, 255);
  rect(x, y, 20, 20);
  stroke(0);
  if (y < height - 20 - v) {
    y += v;
    v += 0.25;
  } else if (x < width/2+50 && x+20 > width/2 && abs(y+20 - (height-150)) < 60) {
    y = height-170;
  } else {
    y = height - 20;
  }
  if (left) {
    x -= 5;
  }
  if (right) {
    x += 5;
  }
}

void keyPressed() {
  if (keyCode == UP && y == height - 20) {
    v = -10;
  }
  if (keyCode == LEFT) {
    left = true;
  }
  if (keyCode == RIGHT) {
    right = true;
  }
}

void keyReleased() {
  if (keyCode == LEFT) {
    left = false;
  }
  if (keyCode == RIGHT) {
    right = false;
  }
}
