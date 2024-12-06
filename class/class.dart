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

// Encapsulation: Getters and setters
class Account {
  String _accountHolder = ''; // privet data
  double _balance = 0.0; // privet data

  String get accountHolder => _accountHolder; // Getter
  set accountHolder(String name) => _accountHolder = name; // Setter

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited \$${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid deposit amount");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)}");
    } else {
      print("Insufficient funds or invalid amount");
    }
  }
}

// Polymorphism
void displayShapeDetails(Shape shape) {
  print("Shape Area: ${shape.calculateArea().toStringAsFixed(2)}");
  print("Shape Perimeter: ${shape.calculatePerimeter().toStringAsFixed(2)}");
}

// Static method and properties
class Calculator {
  static double add(double a, double b) => a + b;

  static double subtract(double a, double b) => a - b;
}

// Interfaces (using implements)
class Printer {
  void printDocument(String content) {
    print("Printing: $content");
  }
}

class Scanner {
  void scanDocument() {
    print("Scanning document...");
  }
}

class AllInOneDevice implements Printer, Scanner {
  @override
  void printDocument(String content) {
    print("All-In-One Device printing: $content");
  }

  @override
  void scanDocument() {
    print("All-In-One Device scanning...");
  }
}

// Main function to test all concepts
void main() {
  // Abstract class and inheritance
  Shape circle = Circle(5.0);
  Shape rectangle = Rectangle(4.0, 6.0);

  print("Circle Details:");
  displayShapeDetails(circle);

  print("\nRectangle Details:");
  displayShapeDetails(rectangle);

  // Encapsulation: Getters and setters
  Account account = Account();
  account.accountHolder = "John Doe";
  account.deposit(500);
  account.withdraw(200);
  print("Account Holder: ${account.accountHolder}");
  print("Account Balance: \$${account.balance}");

  // Static methods
  print("\nStatic Methods Example:");
  print("Addition: ${Calculator.add(10, 20)}");
  print("Subtraction: ${Calculator.subtract(20, 10)}");

  // Interfaces
  print("\nInterface Example:");
  AllInOneDevice device = AllInOneDevice();
  device.printDocument("Hello, World!");
  device.scanDocument();
}
