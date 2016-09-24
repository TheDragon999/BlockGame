Block b = new Block(#F7078C);
Paddle p = new Paddle();
Block e = new Block(#42CDE8);
int PAD_TO_BOTTOM_LEVEL_DIST = 10 ;
int BOTTOM_OF_SCREEN = 300 ;
int FROM_INVISIBLE_COORDINATE = -10 ;


int score;
boolean gameOver = false ;
public void setup() {
  size(200, 200);
  b.x = random(0, width);
  noCursor();
}

public void draw() {
  if (gameOver) { 
    printGameOverScreen();
  } else { 
    background(0);
    b.draw();
    p.draw();
    e.draw();

    if (goodBlockTouchesPaddle()) { 
      score ++;
      b.y = FROM_INVISIBLE_COORDINATE;
      b.x = random(0, width);
      e.x = random(0, width); //Why this line ?
    }

    if (evilBlockTouchesPaddle()) { 
      score--;
      e.y = FROM_INVISIBLE_COORDINATE ;
      e.x = random(0, width);
    }

    evaluateScore(score);


    text(score, 10, 15);

    //if (e.y>p.y && e.y<p.y+10 && e.x>mouseX && e.x<mouseX +40) {
    //  score++;
    //  e.y = -10;
    //  e.x = random(0, width);
    //}
  }
}

private void evaluateScore(int score) { 
  if ( score == -100) { 
    gameOver = true ;
  }
}

private void printGameOverScreen() { 
  background(0);
  text("Game is Over", 20, 20);
  text("Final Score is " + score, 30, 30);
}

private boolean goodBlockTouchesPaddle() { 
  //  if (b.y>p.y && b.y<p.y+10 && b.x>mouseX && b.x<mouseX +40) {

  return (   (b.y < (p.y + PAD_TO_BOTTOM_LEVEL_DIST) 
    && b.x > mouseX) &&
    (b.y > p.y && b.x < mouseX + 40))  ;
}

private boolean evilBlockTouchesPaddle() { 
  //if (e.y>p.y && e.y<p.y+10 && e.x>mouseX && e.x<mouseX +40) {

  return (   (e.y < (p.y + PAD_TO_BOTTOM_LEVEL_DIST) 
    && e.x > mouseX) &&
    (e.y > p.y && e.x < mouseX + 40));
}