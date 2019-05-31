class Bullet extends Thing{
  private int x;
  private int y;
  private int mox;
  private int moy;
  private int damage;
  private String direction;
  private int speedX;
  private int speedY;
  private boolean exists;

  Bullet(int spd, int d, String di){
    direction = di;
    damage = d;
    speed = spd
    exists = true;
    mox = mouseX;
    moy = mouseY;
    int adder;
    if (direction == "right") {
	adder = 1;
    } else {
	adder = -1;
    }
    x = Player.getX() + adder * 5;
    y = Player.getX() + adder * 5;
  }

  void display(){
    fill(0, 255, 255);
    ellipse(x, y, 5, 5);
  }
  void move(){
    x += (mox - startx) / (speed * ;
    y += (moy - starty) / (speed;
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
