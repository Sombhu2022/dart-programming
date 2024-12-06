/**
 * Object-Oriented Programming (OOP) in Dart focuses on using objects 
 * to design and build software. It revolves around the four key principles 
 * of OOP: Encapsulation, Abstraction, Inheritance, and Polymorphism. Below is
 *  a detailed explanation of OOP concepts in Dart with examples.

 *  */

// Key Concepts of OOP in Dart

// 1. Encapsulation
/**
 
  Encapsulation means bundling the data (variables) and methods (functions) 
  that operate on the data into a single unit, typically a class. It also
  involves restricting direct access to some of the object's components
  using access modifiers like private and public.
 */

// Example: Using encapsulation to manage data.

class User {
  // Private properties (use an underscore to make them private)
  String _username = '';
  String _password = '';

  // Public methods to access private properties
  void setUsername(String username) {
    _username = username;
  }

  String getUsername() {
    return _username;
  }
}

void main() {
  User user = User();
  user.setUsername('JohnDoe');
  print(user.getUsername()); // Output: JohnDoe
}
