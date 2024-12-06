/**

Key Concepts with Interfaces
Defining Contracts:

Interfaces define a set of methods that implementing classes must fulfill.
Used for polymorphism (handling objects via their interfaces rather than their concrete implementations).
Multiple Interfaces:

A class can implement multiple interfaces.
It must provide implementations for all methods from all interfaces.
Abstract vs. Interface:

Abstract classes can have both concrete (implemented) and abstract (unimplemented) methods.
Interfaces in Dart (via implements) allow only method signatures but require all methods to be implemented.

 */

abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("Duck is flying");
  }

  @override
  void swim() {
    print("Duck is swimming");
  }
}

void main() {
  Duck duck = Duck();
  duck.fly(); // Output: Duck is flying
  duck.swim(); // Output: Duck is swimming
}
