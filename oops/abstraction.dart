// 2. Abstraction

/**
 
  Abstraction is the process of hiding implementation
 details and exposing only the functionality. In Dart,
 this is achieved using abstract classes or interfaces.

 */

// Example: Using an abstract class.

import 'dart:math';

// Abstract class example
abstract class Shape {
  // Abstract method to calculate area
  double calculateArea();

  // Abstract method to calculate perimeter
  double calculatePerimeter();
}

// Class inheritance and overriding
class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * pi * radius;
  }
}

class Rectangle extends Shape {
  final double width, height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }

  @override
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

// Polymorphism
void displayShapeDetails(Shape shape) {
  print("Shape Area: ${shape.calculateArea().toStringAsFixed(2)}");
  print("Shape Perimeter: ${shape.calculatePerimeter().toStringAsFixed(2)}");
}

void main() {
  // Abstract class and inheritance
  Shape circle = Circle(5.0);
  Shape rectangle = Rectangle(4.0, 6.0);

  print("Circle Details:");
  displayShapeDetails(circle);

  print("\nRectangle Details:");
  displayShapeDetails(rectangle);
}
