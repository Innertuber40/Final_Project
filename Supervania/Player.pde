class Player extends Thing{
  private int x;
  private int y;
  private int health;
  private boolean[] weapons;
  
  Player(){
    x = width/2;
    y = height+25;
  }
  
  void display(){
  }
  void move(int x, int y){
  }
  void die(){
  }
  int getX(){
    return x;
  }
  int getY(){
    return y;
  }
  void shoot(int x, int y){
    //trace over mousex and mousey
  }
  boolean[] weapons(){
    return weapons;
  }
  boolean scroll(String){
    //do something here
    return false;
  }
}