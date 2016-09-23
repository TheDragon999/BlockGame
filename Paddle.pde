public class Paddle
{
  int y = height-20;
  
  public void draw()
  {
  fill(225);
  rect(mouseX - 20, y, 40, 10);
  }
}
  