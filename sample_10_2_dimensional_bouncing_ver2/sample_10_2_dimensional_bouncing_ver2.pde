int xPos, yPos;
int xDir = -4, yDir = -4 ;
int racketXPos, racketWidth;
int ballDiameter;

void setup()
{
  size(600, 400);
  xPos = width / 2;
  yPos = height / 2;
  racketWidth = 200;
  ballDiameter = 100;
}

void draw()
{
    background(128);
    racketXPos = mouseX;
    rect(racketXPos-100, 350, racketWidth, 20);
    
    // ball drawing
    ellipse(xPos, yPos, ballDiameter, ballDiameter); 
    xPos += xDir; //xPos = xPos + xDir;
    yPos += yDir; 
    
    // ball bouncing 
    
    if ( xPos < ballDiameter/2) {
      xDir *= -1;
      //change color
      fill(255, 255, 0);
    }
    if ( xPos > width-ballDiameter/2) {
      xDir *= -1;
      fill(255, 0, 0);
    }
    if ( yPos < ballDiameter/2) yDir *= -1;
    // if ( 10>0 && 11>0) 
    if ( yPos > 350-ballDiameter/2 && 
         xPos > racketXPos - racketWidth/2 && 
         xPos < racketXPos + racketWidth/2 ) {
      yDir *= -1; 
      //racketWidth -= 1;
    }
    if ( yPos > height-ballDiameter/2 ) {
      yDir *= -1;
      // here... to code for you miss the ball with your racket.
      ballDiameter -= 5;
    }
    
    //if ( xPos < 0 ||  xPos > width) xDir *= -1;
    //if ( yPos < 0 || yPos > height ) yDir *= -1;
}
