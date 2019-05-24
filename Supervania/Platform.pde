class Platform{
  private int x;
  private int y;
  private String[] design;
  private int[] c;
  
  Platform(int xcor, int ycor){
    x = xcor;
    y = ycor;
  }
  
  void display(){
    fill(0, 125, 255);
    rect(x, y, 100, 20);
  }
  boolean scroll(String s){
    //do something here
    return false;
  }
}
