abstract class Thing{

  private boolean exists;
  
  abstract void display();
  //abstract boolean scroll(String);
  abstract void move();
  void die(){
    exists = false;
  }

}