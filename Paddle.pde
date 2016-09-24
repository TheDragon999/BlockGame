public class Paddle {
  int y = 0;
  int x = mouseX;
  int SIZE_OF_PADDLE = width/5 ;
  int HEIGHT_OF_PADDLE = height/20 ;

  public void draw() {
    x = mouseX;
    y = height - HEIGHT_OF_PADDLE;
    fill(225);
    if (this.x < 0) {
      this.x = 0;
    }
    if (this.x > width - SIZE_OF_PADDLE) {
      this.x = width - SIZE_OF_PADDLE;
    }   
    rect(x, y, SIZE_OF_PADDLE, HEIGHT_OF_PADDLE);
  }
}