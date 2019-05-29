class Player extends Thing{
  private int x;
  private int y;
  private int health;
  private boolean[] weapons;
  private boolean fall;
  private boolean left;
  private boolean right;
  private float v;
  private int xv;
  private PImage img;
  private boolean isShoot;
  
  Player(PImage i){
    x = width/2;
    y = height-25;
    health = 100;
    fall = false;
    img = i;
  }
  
  void display(){
    image(img, x, getY(), 20, 20);
  }
  void move(){
    if (getY() < height - 21) {
      fall = true;
      for (int i = 0; i < 21; i++) {
        /*
        //corners
        if ((i < xv || i > xv) && get(x + i + xv, y + 19) < -100000) {
          text(y + 19, 500, 20);
          stroke( color(255, 0, 0));
          fill( color(255, 0, 0));
          rect(x + i - 5, y + 14, 5, 5);
          x = 20;
          y -= 5;
        }
        */
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
          v = 0;
          fall = false;
          i = 21;
        }
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
      x -= xv;
      xv = 5;
    }
    if (right) {
      x += xv;
      xv = 5;
    }
  }
  void die(){
    
  }
  int getX(){
    return x;
  }
  int getY(){
    return y;
  }
  boolean shoot(){
    //trace over mousex and mousey
    return isShoot;
  }
  boolean[] weapons(){
    return weapons;
  }
  boolean scroll(String s){
    //do something here
    return false;
  }
}