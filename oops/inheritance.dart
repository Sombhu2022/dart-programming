/**
 
 3. Inheritance
Inheritance allows one class to inherit the properties and methods 
of another class. In Dart, inheritance is achieved using the extends keyword.

Example: Inheriting from a parent class.

 */

class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog is barking");
  }
}

void main() {
  Dog dog = Dog();
  dog.eat(); // Output: Animal is eating
  dog.bark(); // Output: Dog is barking
}
