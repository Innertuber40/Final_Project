void setup() {
  size(1500, 800);
  background(255);
  frameRate(60);
}

int x = 300;
int y = 300;
int xv = 5;
float v = 0;
boolean left;
boolean right;
boolean fall = true;
void draw() {
  background(-1);
  fill(-1);
  rect(x, y, 20, 20);
  fill(0);
  rect(499, 700, 100, 20);
  text(get(x, y + 21), 40, 40);
  text(v, 50, 50);
  text(" " + fall, 60, 60);
  if (y < height - 21) {
    fall = true;
    for (int i = 0; i < 21; i++) {
      if (v < 0 && get(x + i, (int)(y - 1 + v)) < -100000) {
        while (get(x + i, y - 1) > -100000) {
          y--;
        }
        v = 0;
      }
      if (get(x - 1 - xv, y + i) < -100000) {
        xv = 0;
        while (get(x - 1, y + i) > -100000) {
          x--;
        }
      }
      if (get(x + 21 + xv, y + i) < -100000) {
        xv = 0;
        while (get(x + 21, y + i) > -100000) {
          x++;
        }
      }
      if (v >= 0 && get(x + i, (int)(y + 21 + v)) < -100000) {
        while (get(x + i, y + 21) > -100000) {
          y++;
        }
        text(i, 300, 300);
        v = 0;
        fall = false;
        i = 21;
      }
    }
    if (fall == true) {
      y = int(y + v);
      v += 0.25;
    }
  } else {
    y = height - 21;
    v = 0;
    fall = false;
  }
  if (left) {
    x -= xv;
    xv = 5;
  }
  if (right) {
    x += xv;
    xv = 5;
  }
}

void keyPressed() {
  if (keyCode == UP && fall == false) {
    v = -10;
    y -= 10;
    fall = true;
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
