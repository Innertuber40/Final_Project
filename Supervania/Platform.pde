class Platform extends Thing{
  private String[] design;
  private int[] c;
  
  Platform(int xcor, int ycor){
    setX(xcor);
    setY(ycor);
  }
  
  void display(){
    fill(0, 125, 255);
    rect(getX(), getY(), 100, 20);
  }
  boolean scroll(String s){
    //do something here
    return false;
  }
  void move(){
  }
  void die(){
  }
}