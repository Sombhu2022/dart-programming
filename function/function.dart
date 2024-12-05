// 1. Defining Functions
// A Dart function is defined using the returnType functionName(parameter) syntax.

void greet(String name) {
  print("Hello, $name!");
}

int add(int a, int b) {
  return a + b;
}

/***
 * 
 * 
 * 
 * 
 * 
 */

// 2. Optional Positional Parameters
// You can make parameters optional by enclosing them in square brackets []. If no value is provided, the parameter is null by default.

void printMessage(String message, [String? prefix]) {
  print("${prefix ?? ''} $message");
}

/***
 * 
 * 
 * 
 * 
 * 
 */

// 3. Named Parameters
// Named parameters allow specifying arguments by name and are enclosed in curly braces {}. You can also make them optional or required.

void createUser({required String name, int? age}) {
  print("Name: $name, Age: ${age ?? 'Not provided'}");
}

/***
 * 
 * 
 * 
 * 
 * 
 */

// 4. Default Parameter Values
// You can assign default values to parameters in both optional and named parameter scenarios.

void greetUser({String name = "Guest"}) {
  print("Hello, $name!");
}

/***
 * 
 * 
 * 
 * 
 * 
 */

// 5. Arrow Functions (Single Expression)
// For concise functions with a single expression, use the => syntax.

int square(int number) => number * number;

/***
 * 
 * 
 * 
 * 
 * 
 */

// 6. Anonymous Functions (Lambdas)
// Functions without a name, often used for short operations or callbacks.

void fun() {
  List<int> numbers = [1, 2, 3];
  // anonymous function
  numbers.forEach((num) => print(num * num));
}

void main() {
  greet("Sombhu");
  print("Sum: ${add(3, 5)}");

  printMessage("Dart is awesome!");
  printMessage("Dart is awesome!", "Prefix:");

  createUser(name: "Sombhu");
  createUser(name: "Sombhu", age: 25);

  greetUser();
  greetUser(name: "Sombhu");

  print("Square: ${square(5)}");

  fun();
}
