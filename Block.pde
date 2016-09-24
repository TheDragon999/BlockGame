public class Block {
  float x, y;
  int FROM_INVISIBLE_COORDINATE = -10 ;
  int fillColor ; 
  
  Block(int colorCode) { 
    fillColor = colorCode ; 
  }

  public void draw() {
    y+=4;
    fill(fillColor);
    rect(x, y, 10, 10);

    if (y > BOTTOM_OF_SCREEN) {
      y = FROM_INVISIBLE_COORDINATE;
      x = random(0, width);
    }
  }
}