Block b = new Block();
Paddle p = new Paddle();

int score;
public void setup()
{
  size(200,200);
  b.x = random(0,width);
  noCursor();
}

public void draw()
{
  background(0);
  b.draw();
  p.draw();
  text(score, 10, 15);
  
  if(b.y>p.y && b.y<p.y+10 && b.x>mouseX && b.x<mouseX +40)
  {
    score++;
  }
  
}