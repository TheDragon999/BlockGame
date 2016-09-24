public class Paddle {
  int y = height + 80;
  int x = mouseX;
  static final int SIZE_OF_PADDLE = 40 ;
  static final int HEIGHT_OF_PADDLE = 10 ;

  public void draw() {
    x = mouseX;
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