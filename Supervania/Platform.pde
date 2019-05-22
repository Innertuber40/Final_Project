class Platform{
  private int x;
  private int y;
  private String[] design;
  private int[] color;
  
  Platform(int xcor, int ycor){
    x = xcor;
    y = ycor;
    color = (0, 0, 255, 50);
  }
  
  void display(){
  }
  boolean scroll(String){
    //do something here
    return false;
  }
}