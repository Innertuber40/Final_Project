class Bullet extends Thing{
  private int x;
  private int y;
  private int damage;
  private String direction;
  private int speed;
  private boolean exists;

  Bullet(int spd, int d, String di){
    direction = di;
    damage = d;
    speed = spd;
    exists = true;
  }

  void display(){
    fill(0, 255, 255);
    ellipse(x, y, 5, 5);
  }
  void move(){
    if(direction.equals("right")){
      x += speed;
    }
    else if(direction.equals("up-right")){
      x += speed*cos(PI/4);
      y -= speed*sin(PI/4);
    }
    else if(direction.equals("up")){
      y -= speed;
    }
    else if(direction.equals("up-left")){
      x -= speed*cos(PI/4);
      y -= speed*sin(PI/4);
    }
    else if(direction.equals("left")){
      x -= speed;
    }
    else if(direction.equals("down-left")){
      x -= speed*cos(PI/4);
      y += speed*sin(PI/4);
    }
    else if(direction.equals("down")){
      y += speed;
    }
    else if(direction.equals("down-right")){
      x += speed*cos(PI/4);
      y += speed*sin(PI/4);
    }
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
