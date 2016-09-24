Block b = new Block(#F7078C);
Paddle p = new Paddle();
Block e = new Block(#42CDE8);
int PAD_TO_BOTTOM_LEVEL_DIST = 10 ;
int BOTTOM_OF_SCREEN = 300 ;

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

  // if Block touches paddle or block touches ground, block should go back to top
  // if ( blockTouchesPaddle() || blockTouchesGround() ) 
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


private boolean blockTouchesPaddle() { 
  
  return (b.y < p.y + PAD_TO_BOTTOM_LEVEL_DIST)  ;
}

private boolean blockTouchesGround() { 
  return (b.y <  (p.y + PAD_TO_BOTTOM_LEVEL_DIST))  ;
}