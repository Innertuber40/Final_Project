class Bullet extends Thing{
  private int x;
  private int y;
  private int damage;
  
  Bullet(int x, int y, int d){
    this.x = x;
    this.y = y;
    damage = d;
  }
  
  void display(){
    fill(0, 255, 255);
    ellipse(x, y, 5, 5);
  }
  void move(){
    
  }
  void die(){
  }
  int getX(){
    return x;
  }
  int getY(){
    return y;
  }
  void setX(int x){
    this.x = x;
  }
  void setY(int y){
    this.y = y;
  }
}