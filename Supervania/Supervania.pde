Player p; 
void setup(){
  size(800, 700);
  background(255);
  PImage img = loadImage("char_sprite.png");
  p = new Player(img);
}
void draw(){
  p.display();
}