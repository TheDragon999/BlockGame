public class Paddle {
  int y = height + 80;
  int x = mouseX;

  public void draw() {
    x = mouseX;

    fill(225);
    rect(x, y, 40, 10);
    if (this.x<0) {
      this.x = 0;
    }
    if (this.x> width-40) {
      this.x = width -40;
    }
  }
}