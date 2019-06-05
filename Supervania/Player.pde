class Player extends Thing{
  int x;
  int y;
  int xv = 0;
  int v = 0;
  boolean left;
  boolean right;
  boolean fall;
  boolean onRightSlope = false;
  boolean tunnel = false;
  color black = color(0);
  color rightSlope = color(1);
  color leftSlope = color(2);
  color semisolid = color(3);
  private PImage img;
  private int health;
  private boolean[] weapons;

  Player(PImage i){
    x = width/2;
    y = height/2;
    health = 100;
    fall = true;
    img = i;
  }

  void display(){
    image(img, x, y, 20, 20);
  }
  void move(){
    if (y < height - 21) {
    //slopes
    onRightSlope = false;
    fall = true;
    //text(x, 256, 311);
    for (int ix = 1; ix < 20; ix++) {
      for (int iy = 1; iy < 20; iy++) {
        //text(x + ix, 256, 321);
        if (get(x + ix, y + iy) == rightSlope) {
          onRightSlope = true;
          fall = false;
          v = 0;
          xv = 0;
          while(get(x + 1, y + 20) != rightSlope) {
            x++;
          }
        }
      }
    }
    if (!onRightSlope) {
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
            //text(x - k + " ", 540 + k * 30, 25);
            //text(x + " ", 540, 35);
            //text(y + i + " ", 540, 45);
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
            //text("hi", 1000, 60);
            k = vx + 1;
          }
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
  }
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
  void shoot(){
    //trace over mousex and mousey
    b = new Bullet(3, 50, mouseX, mouseY);
  }
  boolean[] weapons(){
    return weapons;
  }
  boolean scroll(String s){
    //do something here
    return false;
  }
}
