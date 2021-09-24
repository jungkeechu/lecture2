int xPos, yPos;
int xDir = -2, yDir = -2 ;

void setup()
{
  size(600, 400);
  xPos = width / 2;
  yPos = height / 2 ;
}

void draw()
{
    background(128);
  
    // ball drawing
    ellipse(xPos, yPos, 60, 60); 
    xPos += xDir;
    yPos += yDir; 
    
    // ball bouncing 
    if ( xPos < 0) xDir *= -1;
    if ( xPos > width) xDir *= -1;
    if ( yPos < 0) yDir *= -1;
    if ( yPos > height ) yDir *= -1;
    
    
    //if ( xPos < 0 ||  xPos > width) xDir *= -1;
    //if ( yPos < 0 || yPos > height ) yDir *= -1;
}
