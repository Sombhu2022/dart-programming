/*


1. Default Constructor
A basic constructor that initializes an object when it is created. If no constructor
is defined, Dart provides an implicit default constructor.

2. Parameterized Constructor
Allows passing parameters to initialize an object.


 */

class Person {
  String name = '';
  int age = 0;

  // Default Constructor
  /* Person() {
    print("Default constructor called");
    }
    */

  // Parameterized Constructor
  Person(this.name, this.age);

  void display() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  // Person person = Person(); // Output: Default constructor called

  Person person = Person("John", 30);
  person.display(); // Output: Name: John, Age: 30
}
