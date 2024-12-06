/*

Advanced OOP Concepts in Dart
Static Members
Static members belong to the class, not the instance, and can be accessed using the class name.

Example:

*/

class Calculator {
  static const double pi = 3.14;

  static double calculateCircleArea(double radius) {
    return pi * radius * radius;
  }
}

void main() {
  print(Calculator.pi); // Output: 3.14
  print(Calculator.calculateCircleArea(5)); // Output: 78.5
}
