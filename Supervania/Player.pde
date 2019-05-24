class Player extends Thing{
  private int x;
  private int y;
  private int health;
  private boolean[] weapons;
  private boolean fall;
  private boolean left;
  private boolean right;
  private float v;
  private float xv;
  private PImage img;
  
  Player(PImage i){
    x = width/2;
    y = height+25;
    health = 100;
    fall = false;
    img = i;
  }
  
  void display(){
    image(img, 50, 50, 20, 20);
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
  boolean scroll(String s){
    //do something here
    return false;
  }
}
