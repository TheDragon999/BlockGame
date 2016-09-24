Block b = new Block();
Paddle p = new Paddle();
EvilBlock e = new EvilBlock();

int score;
public void setup() {
  size(200, 200);
  b.x = random(0, width);
  noCursor();
}

public void draw() {
  background(0);
  b.draw();
  p.draw();
  e.draw();


  if (b.y>p.y && b.y<p.y+10 && b.x>mouseX && b.x<mouseX +40) {
    score++;
    b.y = -10;
    b.x = random(0, width);
    e.x = random(0, width);
  }
  text(score, 10, 15);

  if (e.y>p.y && e.y<p.y+10 && e.x>mouseX && e.x<mouseX +40) {
    score++;
    e.y = -10;
    e.x = random(0, width);
  }
}