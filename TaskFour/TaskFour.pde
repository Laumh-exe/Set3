void setup() {
  fibonacci(0, 1);
}

void fibonacci(int a, int b) {
  // Base case
  if (a > 1000) {
    return;
  }
  print(a + "\t");
  int total = a + b;
  fibonacci(total, a);
}
