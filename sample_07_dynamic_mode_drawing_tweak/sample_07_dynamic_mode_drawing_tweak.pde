// variables
int x;
  
void setup() {
  size(500, 300);
  // initialize to ZERO, when it starts.
  x = 0;
}

void draw() {
  //background(255);
  ellipse(x, 207, 94, 100);
  x = x + 1;
}
