abstract class Thing{
  private int x;
  private int y;
  private String[] design;
  private boolean exists;
  
  abstract void display();
  //abstract boolean scroll(String);
  abstract void move();
  abstract void die();
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