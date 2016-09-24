public class Block {
  float x, y;
  int fillColor ; 
  int HEIGHT = 10 ; 

  Block(int colorCode) { 
    fillColor = colorCode ;
  }

  public void draw() {
    y+=4;
    fill(fillColor);
    rect(x, y, 10, HEIGHT);}
  

  public void resetPosition() { 
    this.x = random(0, width);
    this.y = FROM_INVISIBLE_COORDINATE;
  }

  public boolean blockTouchesGround() { 
    return (this.y + HEIGHT) >= height ;
 
}
}