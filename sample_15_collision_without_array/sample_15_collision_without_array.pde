/*
1. we are going to make bricks with ellipse() function.
2. it is because of COLLISION DETECTION.
*/

int brick1_x, brick1_y;
boolean brick1_alive;

void setup(){
  size(600, 600);
  
  brick1_x = 100;
  brick1_y = 100;
  brick1_alive = true;
}


void draw(){
  background(255);
  
  if ( brick1_alive ) ellipse(brick1_x, brick1_y, 100, 100);
  
  fill(128);
  ellipse(mouseX, mouseY, 50, 50);
  
  if ( dist(mouseX, mouseY, brick1_x, brick1_y) < 50+25 ) {
    brick1_alive = false;
  }
}
    
