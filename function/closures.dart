// 8. Closures
// A closure is a function that can capture variables from its enclosing scope.

Function createMultiplier(int multiplier) {
  return (int number) => number * multiplier;
}

void main() {
  var doubler = createMultiplier(2)(5);
  print(doubler); // Output: 10

  var d = createMultiplier(2);
  print(d(2));
}
