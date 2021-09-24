 // variables
int x1;
int y1;

int x2;
int y2;

void setup() {
  size(500, 300);
  // initialize to ZERO, when it starts.
  x1 = 0;
  y1 = 0;
  
  x2 = 500;
  y2 = 0;
}

void draw() {
  background(255);
  ellipse(x1, 100, 100, 100);
  x1 = x1 + 1;
    
  ellipse(x2, 200, 100, 100);
  x2 = x2 - 1;
}
