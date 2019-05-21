abstract class Thing{
  int xcor;
  int ycor;
  String[] design;
  boolean exists;
  
  abstract void display();
  boolean scroll(String) {
    //do something here
    return false;
  }
  abstract void move(int, int);
  
}