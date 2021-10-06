int xPos, yPos;
int xDir = -4, yDir = -4;
int diameter;
int ballColor;
int racketX;
int racketWidth;

int brick1_x, brick1_y;
boolean brick1_alive;

void setup()
{
  size(600, 400);
  xPos = width / 2;
  yPos = height / 2;
  diameter = 50;
  ballColor = #D81647;
  racketX = width/2;
  racketWidth = 200;
  
  brick1_x = 100;
  brick1_y = 100;
  brick1_alive = true;
}

void draw()
{
    background(128);
   
    // ball drawing
    fill(ballColor);
    ellipse(xPos, yPos, diameter, diameter); 
    xPos += xDir; //xPos = xPos + xDir;
    yPos += yDir; 
    
    // drawing racket...
    rect(mouseX-racketWidth/2, height-50,  racketWidth, 30);
    racketX = mouseX;
    
    // drawing bricks
    if ( brick1_alive ) ellipse(brick1_x, brick1_y, 100, 100);
    
    // ball bouncing 
    if ( xPos < diameter/2) { // left side check
      xDir *= -1;
      ballColor = #CED349;
      //racketWidth = racketWidth - 10;
    }
    if ( xPos > width-diameter/2) { // right side check
      xDir *= -1;
      ballColor = #5649D3;
      //racketWidth = racketWidth - 20;
    }
    if ( yPos < diameter/2) {
      yDir *= -1;
    }
    if ( yPos > height-diameter/2 ) {
      yDir *= -1;
    }
    
    if ( xPos > racketX-racketWidth/2 &&
         xPos < racketX+racketWidth/2 &&
         yPos > height-50-diameter/2){
           yDir *= -1;
    }
    
    // checking collision with bricks
    if ( dist(xPos, yPos, brick1_x, brick1_y) < 50+25 ) {
      brick1_alive = false;
    }
}
