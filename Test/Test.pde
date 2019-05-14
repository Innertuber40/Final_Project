void setup() {
  size(1500, 800);
  background(255);
}

int x = 300;
int y = 300;
void draw() {
  background(255);
  rect(x, y, 20, 20);
}

void keyPressed() {
  if (keyCode == UP) {
    y--;
  }
  if (keyCode == DOWN) {
    y++;
  }
  if (keyCode == LEFT) {
    x--;
  }
  if (keyCode == RIGHT) {
    x++;
  }
}
