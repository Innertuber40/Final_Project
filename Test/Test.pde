void setup() {
  size(1500, 800);
  background(255);
  frameRate(60);
}

int x = 801;
int y = 300;
int xv = 0;
int v = 0;
boolean left;
boolean right;
boolean fall = true;
boolean onRightSlope = false;
boolean tunnel = false;
color black = color(0);
color rightSlope = color(1);
color leftSlope = color(2);
color semisolid = color(3);
void draw() {
  background(-1);
  fill(0, 125, 255);
  rect(499, 700, 100, 20);
  rect(699, 730, 100, 23);
  rect(899, 740, 101, 20);
  rect(1037, 750, 101, 30);
  line(0, 750, 20, 750);
  stroke(3);
  line(1150, 750, 1200, 750);
  stroke(1);
  triangle(250, 780, 350, 780, 350, 730);
  stroke(0);
  rect(350, 730, 20, 50);
  rect(0, 775, 1500, 25);
  text((get(x, y + 21) == black) + " ", 40, 40);
  text(v, 50, 50);
  text(" " + fall, 60, 60);
  if (y < height - 21) {
    //slopes
    onRightSlope = false;
    fall = true;
    for (int ix = 1; ix < 20; ix++) {
      for (int iy = 1; iy < 20; iy++) {
        if (get(x + ix, y + iy) == rightSlope) {
          onRightSlope = true;
          fall = false;
          v = 0;
          while(get(x + 1, y + 20) != rightSlope) {
            x++;
          }
        }
      }
    }
    for (int i = 0; i < 21; i++) {
      if (get(x + i, y - 1) == black) {
             tunnel = true;
      }
      for (int j = 0; j < Math.abs(v) + 1; j++) {
        int vx = xv;
        for (int k = 0; k <= vx; k++) {
        //corners
        /*if (i < xv && get(x + i + xv, y + 19) < -100000) {
          text(y + 19, 500, 20);
          stroke( color(255, 0, 0));
          fill( color(255, 0, 0));
          rect(x + i - 5, y + 14, 5, 5);
          x = 20;
        }*/
        //edges
          text(j + "", 678 + j*50, 80);
          boolean edgeDetect = get(x + i, y + 21 + j) == black;
          boolean semiDetect = get(x + i, y + 21 + j) == semisolid;
          if (v >= 0 && (edgeDetect || semiDetect)) {
            while (edgeDetect && get(x + i, y + 21) != black || semiDetect && get(x + i, y + 21) != semisolid) {
              y++;
            }
            v = 0;
            fall = false;
            j = Math.abs(v) + 1;
          }
          if (left && get(x - 1 - k, y + i) == black) {
            while (get(x - 1, y + i) != black) {
              x--;
            }
            text(x - k + " ", 540 + k * 30, 25);
            text(x + " ", 540, 35);
            text(y + i + " ", 540, 45);
            xv = 0;
          }
          if (right && get(x + 21 + k, y + i) == black) {
            while (get(x + 21, y + i) != black) {
              x++;
            }
            xv = 0;
          }
          if (v < 0 && get(x + i, y - 1 - j) == black) {
            while (get(x + i, y - 1) != black) {
              y--;
            }
            v = 0;
            i = 21;
            j = Math.abs(v) + 1;
            text("hi", 1000, 60);
            k = vx + 1;
          }
        }
      }
    }
    if (fall == true) {
      y = y + v;
      if (frameCount % 2 == 0) {
        v++;
      }
    }
  } else {
    y = height - 21;
    v = 0;
    fall = false;
  }
  if (left) {
    if (onRightSlope) {
      x -= 5;
      y += 2.5;
    } else {
      x -= xv;
      xv = 5;
    }
  }
  if (right) {
    if (onRightSlope) {
      x += 5;
      y -= 2.5;
    } else {
      x += xv;
      xv = 5;
    }
  }
  text(y, 520, 20);
  fill(-1);
  rect(x, y, 20, 20);
}

void keyPressed() {
  if (keyCode == UP && fall == false) {
    v = -10;
    if (!tunnel) {
      y -= 1;
    }
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
