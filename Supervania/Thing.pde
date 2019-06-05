abstract class Thing{

  private boolean exists;

  abstract void display();
  //abstract boolean scroll(String);
  abstract void move();
  void alive(){
    exists = true;
  }
  void die(){
    exists = false;
  }
  boolean isAlive(){
    return exists;
  }
}
