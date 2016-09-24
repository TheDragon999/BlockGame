
final int BOTTOM_OF_SCREEN = 300 ;
final int FROM_INVISIBLE_COORDINATE = -10 ;
final int PINK_COLOR = #F7078C;
final int BLUE_COLOR = #42CDE8;

Block b = new Block(PINK_COLOR);
Paddle p = new Paddle();
Block e = new Block(BLUE_COLOR);

int score = 0;
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

    // Check if Good block touches paddle
    if (blockTouchesPaddle(b)) { 
      score ++;
      b.y = FROM_INVISIBLE_COORDINATE;
      b.x = random(0, width);
      // e.x = random(0, width); //Creates a glitch
    }

    // check of evil block touches paddle
    if (blockTouchesPaddle(e)) { 
      score--;
      e.y = FROM_INVISIBLE_COORDINATE ;
      e.x = random(0, width);
    }

    evaluateScore(score);


    text(score, 10, 15);
  }
}


private void evaluateScore(int score) { 
  if ( score <= -10 || score == 100) { 
    gameOver = true ;
  }
}

void mousePressed() { 
  gameOver = true ; 
}

private void printGameOverScreen() { 
  background(0);
  text("Game is Over", 20, 20);
  text("Final Score is " + score, 30, 30);
}

private boolean blockTouchesPaddle(Block givenBlock) { 
  return (  
    givenBlock.y < (p.y + Paddle.HEIGHT_OF_PADDLE) 
    && givenBlock.x > mouseX 
    && givenBlock.y > p.y 
    && givenBlock.x < mouseX + Paddle.SIZE_OF_PADDLE);
}