// variables
int x;

void setup() {
  size(500, 300);

  x = 0;   // initialize to ZERO, when it starts.
  println("set up");
  println("x is ", x);
}

void draw() {
  println(x);
  x = x + 1;
}
