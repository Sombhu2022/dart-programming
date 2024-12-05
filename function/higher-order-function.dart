// 7. Higher-Order Functions
// Functions that take another function as a parameter or return a function.

int fun(int a, int b, int Function(int, int) oparation) {
  return oparation(a, b);
}

void main() {
  int result = fun(2, 4, (a, b) => a + b);
  print(result);
}
