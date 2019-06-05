//hi`
//this is a test
Player p;
//this is a player
Platform[] pl;
Bullet b;
void setup(){
  size(1500, 800);
  background(255);
  PImage img = loadImage("char_sprite.png");
  p = new Player(img);
  pl = new Platform[2];
  pl[0] = new Platform(300, 657);
  pl[1] = new Platform(500, 600);
  b = new Bullet(0, 0, mouseX, mouseY);
  b.die();
}
void draw(){
  background(255);
  fill(-1);
  stroke(0);
  fill(0, 125, 255);
  rect(499, 700, 100, 20);
  rect(699, 730, 100, 23);
  rect(899, 740, 101, 20);
  rect(1037, 750, 101, 30);
  line(0, 750, 20, 750);
  stroke(3);
  line(1150, 750, 1200, 750);
  stroke(0);
  rect(350, 730, 20, 50);
  rect(0, 775, 1500, 25);
  stroke(1);
  fill(0, 125, 255);
  triangle(250, 775, 350, 775, 350, 730);
  pl[0].display();
  pl[1].display();
  p.display();
  p.move();
  if(b.isAlive()){
    b.display();
    b.move();
  }
  if(get(int(b.getX())-1, int(b.getY())) != color(255)){
    b.die();
  }
}
void keyPressed(){
  if (keyCode == UP && p.fall == false) {
    p.v = -10;
    if (!p.tunnel) {
      p.y -= 1;
    }
    p.fall = true;
  }
  if (keyCode == LEFT) {
    p.left = true;
  }
  if (keyCode == RIGHT) {
    rect(800, 50, 10, 10);
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
void mouseClicked(){
  p.shoot();
}
