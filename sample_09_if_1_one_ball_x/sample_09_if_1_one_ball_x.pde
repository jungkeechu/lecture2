// Ball Position 
int xPos; 
// when you naming a variable, set the variable's name as easily remembering...
//Ball Direction
int xDir ;

void setup()
{
  size(500, 400);
  xPos = 0; 
  xDir = 1;
}

void draw()
{
  background(128);
  // Ball drawing and Movement
  ellipse(xPos, 200, 100, 100);
  xPos = xPos + xDir ;
  // Ball Bouncing 
  if ( xPos < 0) xDir = xDir * -1;
  if ( xPos > width) xDir *=  -1; // same as xDir = xDir * -1;
}
