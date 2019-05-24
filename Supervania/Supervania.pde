Player p; 
PImage img;
void setup(){
  size(800, 700);
  background(255);
  img = loadImage("char_sprite.png");
}
void draw(){
  p = new Player(img);
  p.display();
}
