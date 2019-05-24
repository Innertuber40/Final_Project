//hi`
Player p;
//this is a player
Platform[] pl;
void setup(){
  size(800, 700);
  background(255);
  PImage img = loadImage("char_sprite.png");
  p = new Player(img);
  pl = new Platform[2];
  pl[0] = new Platform(300, 650);
  pl[1] = new Platform(500, 600);
}
void draw(){
  background(255);
  pl[0].display();
  pl[1].display();
  p.display();
  p.move();
}
void keyPressed(){
  if (keyCode == UP && p.fall == false) {
    p.v = -10;
    p.y -= 10;
    p.fall = true;
  }
  if (keyCode == LEFT) {
    p.left = true;
  }
  if (keyCode == RIGHT) {
    p.right = true;
  }
}
void keyReleased() {
  if (keyCode == LEFT) {
    p.left = false;
  }
  if (keyCode == RIGHT) {
    p.right = false;
  }
}