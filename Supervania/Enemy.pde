class Enemy extends Thing{
  private int x;
  private int y;
  private int health;
  
  Enemy(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void display(){
    fill(255);
    rect(x, y, 20, 20);
  }
  //abstract boolean scroll(String);
  void move(){
    
  }
  boolean isTouchingPlayer(){
    if(abs(x - p.getX()) < 20
    && abs(y - p.getY()) < 20) {
      return true;
    }
    return false;
  }
}