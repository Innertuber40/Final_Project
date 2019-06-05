class Bullet extends Thing{
  private int x;
  private int y;
  private int damage;
  private int speed;
  private boolean exists;
  private int mousex;
  private int mousey;

  Bullet(int spd, int d, int mousex, int mousey){
    damage = d;
    speed = spd;
    exists = true;
    this.mousex = mousex;
    this.mousey = mousey;
  }

  void display(){
    fill(0, 255, 255);
    ellipse(x, y, 5, 5);
  }
  void move(){
    int px = p.getX();
    int py = p.getY();
    int hypo = abs(sqrt(pow(mousex - px, 2)+pow(mousey - py, 2)));
    x += spd * (mousex - px) / hypo; // magnitude times cosine
    y += spd * (mousey - py) / hypo; // magnitude times sine
  }
  boolean isAlive(){
    return exists;
  }
  void isTouchingEnemy(Enemy e){
  }
  int getX(){
    return x;
  }
  int getY(){
    return y;
  }
}
