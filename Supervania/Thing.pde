abstract class Thing{
  private int x;
  private int y;
  private String[] design;
  private boolean exists;
  
  abstract void display();
  //abstract boolean scroll(String);
  abstract void move(int, int);
  abstract void die();
}