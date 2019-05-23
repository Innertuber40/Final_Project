void setup() {
  size(1500, 800);
  background(255);
  frameRate(20);
}

int x = 300;
int y = 300;
int xv = 0;
float v = 0;
boolean left;
boolean right;
boolean fall = true;
boolean onSlope = false;
void draw() {
  background(-1);
  fill(-1);
  rect(x, y, 20, 20);
  fill(0, 125, 255);
  rect(499, 700, 100, 20);
  rect(699, 701, 100, 20);
  stroke(1);
  triangle(250, 800, 350, 800, 350, 750);
  stroke(0);
  rect(0, 775, 1500, 25);
  text(get(x, y + 21), 40, 40);
  text(v, 50, 50);
  text(" " + fall, 60, 60);
  if (y < height - 21) {
    fall = true;
    for (int i = 0; i < 21; i++) {
      //corners
      /*if (i < xv && get(x + i + xv, y + 19) < -100000) {
        text(y + 19, 500, 20);
        stroke( color(255, 0, 0));
        fill( color(255, 0, 0));
        rect(x + i - 5, y + 14, 5, 5);
        x = 20;
      }*/
      //edges
      if (v < 0 && get(x + i, (int)(y - 1 + v)) < -100000) {
        while (get(x + i, y - 1) > -100000) {
          y--;
        }
        v = 0;
      }
      if (left && get(x - 1 - xv, y + i) < -100000) {
        xv = 0;
        while (get(x - 1, y + i) > -100000) {
          x--;
        }
      }
      if (right && get(x + 21 + xv, y + i) < -100000) {
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
      //slopes
    }
    if (fall == true) {
      y = int(y + v);
      v += 0.50;
    }
  } else {
    y = height - 21;
    v = 0;
    fall = false;
  }
  if (left) {
    if (onSlope) {
      x -= 5;
      y -= 2.5;
    } else {
      x -= xv;
      xv = 5;
    }
  }
  if (right) {
    if (onSlope) {
      x += 5;
      y -= 2.5;
    } else {
      x += xv;
      xv = 5;
    }
  }
  text(y, 520, 20);
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
