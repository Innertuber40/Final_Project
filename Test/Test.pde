void setup() {
  size(1500, 800);
  background(255);
  frameRate(100);
}

float x = 300;
float y = 300;
float v = 0;
boolean left;
boolean right;
boolean jump;
void draw() {
  background(255);
  rect(x, y, 20, 20);
  if (y < height - 20 - v) {
    y += v;
    v += 0.25;
  } else {
    y = height - 20;
  }
  if (left) {
    x -= 5;
  }
  if (right) {
    x += 5;
  }
  if (jump) {
    v = -10;
  }
}

void keyPressed() {
  if (keyCode == UP && y == height - 20) {
    jump = true;
  }
  if (keyCode == LEFT) {
    left = true;
  }
  if (keyCode == RIGHT) {
    right = true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    jump = false;
  }
  if (keyCode == LEFT) {
    left = false;
  }
  if (keyCode == RIGHT) {
    right = false;
  }
}
