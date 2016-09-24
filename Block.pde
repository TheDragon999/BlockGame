public class Block {
  float x, y;
  int fillColor ; 
  int HEIGHT = height/20 ;
  int WIDTH = HEIGHT;
  int FALL_RATE = height/50;

  Block(int colorCode) { 
    fillColor = colorCode ;
  }

  public void draw() {
    y += FALL_RATE;
    fill(fillColor);
    rect(x, y, WIDTH, HEIGHT);}
  

  public void resetPosition() { 
    this.x = random(0, width);
    this.y = - random(70);
  }

  public boolean blockTouchesGround() { 
    return (this.y + HEIGHT) >= height ;
 
}
}