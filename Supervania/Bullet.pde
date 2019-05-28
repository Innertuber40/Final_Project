class Bullet{
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
}