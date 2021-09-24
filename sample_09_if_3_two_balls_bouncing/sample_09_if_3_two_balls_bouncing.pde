// Let's add one more ball in this file.

int xPos1, xPos2;
int xDir1, xDir2;
  
void setup() {
  size(500, 400);
  // initialize to ZERO, when it starts.
  xPos1 = 0;
  xPos2 = width;
  
  xDir1 = 2;
  xDir2 = -4;
}

void draw() {
  background(128);
  
  // Ball drawing and Movement
  ellipse(xPos1, 100, 100, 100);
  xPos1 = xPos1 + xDir1;

  ellipse(xPos2, 200, 100, 100);
  xPos2 = xPos2 + xDir2;
  
  // Ball Bouncing 
  if ( xPos1 < 0) xDir1 = xDir1 * -1;
  if ( xPos1 > width) xDir1 *=  -1; // same as xDir = xDir * -1;
  
  if ( xPos2 < 0) xDir2 = xDir2 * -1;
  if ( xPos2 > width) xDir2 *=  -1; // same as xDir = xDir * -1;
}
