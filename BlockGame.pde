final int PINK_COLOR = #F7078C;
final int BLUE_COLOR = #42CDE8;

Block b, e;
Paddle p;

long SIXTY_SECONDS = 60 * 1000 ;
long time, lastTime;
int score = 0;
boolean gameOver = false ;

public void setup() {
  size(500, 500);
  noCursor();

  b = new Block(PINK_COLOR);
  p = new Paddle();
  e = new Block(BLUE_COLOR);
}

public void draw() {

  if (gameOver) { 
    printGameOverScreen();
  } else {  
    background(0);
    b.draw();
    p.draw();
    e.draw();

    // Check if Good block touches paddle
    if (blockTouchesPaddle(b)) { 
      score ++;
      b.resetPosition();
    }

    if (b.blockTouchesGround()) { 
      score -- ;
      b.resetPosition();
    }

    // check if evil block touches paddle
    if (blockTouchesPaddle(e)) { 
      score--;
      e.resetPosition();
    }

    if (e.blockTouchesGround()) { 
      e.resetPosition();
    }

    time = millis() - lastTime;
    evaluateScore(score);
    text(score, 10, 15);
  }
}

private void evaluateScore(int score) { 
  if ( score <= -5 || score >= 60 || time >= SIXTY_SECONDS ) { 
    gameOver = true ;
  }
}

void mousePressed() { 
  if (gameOver) {
    restartGame();
  } else {
    gameOver = true;
  }
}

private void printGameOverScreen() { 
  background(0);
  text("Game is Over", 20, 20);
  text("Final Score is " + score, 20, 40);
  text("Time taken is : " + time/1000 + " seconds ", 20, 60);
}

private boolean blockTouchesPaddle(Block givenBlock) { 
  return (  
    givenBlock.y < (p.y + p.HEIGHT_OF_PADDLE) 
    && givenBlock.x > mouseX 
    && givenBlock.y > p.y 
    && givenBlock.x < mouseX + p.SIZE_OF_PADDLE);
}

public void restartGame() {
  gameOver = false;
  score = 0;
  lastTime = millis();
}