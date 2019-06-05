class Bullet extends Thing{
  private float x;
  private float y;
  private int damage;
  private int speed;
  private float mousex;
  private float mousey;

  Bullet(int spd, int d, float mousex, float mousey){
    damage = d;
    speed = spd;
    alive();
    this.mousex = mousex;
    this.mousey = mousey;
  }

  void display(){
    fill(0, 255, 255);
    ellipse(x, y, 5, 5);
  }
  void move(){
    float px = p.getX();
    float py = p.getY();
    float hypo = abs(sqrt(pow(mousex - px, 2)+pow(mousey - py, 2)));
    x += speed * (mousex - px) / hypo; // magnitude times cosine
    y += speed * (mousey - py) / hypo; // magnitude times sine
  }
  boolean isTouchingEnemy(Enemy e){
    return false;
  }
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
}
