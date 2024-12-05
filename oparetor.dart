void main() {
  // 1. Arithmetic Operators
// Used for mathematical operations.

// Operator	Description	Example	Result
// +	Addition	5 + 3	8
// -	Subtraction	5 - 3	2
// *	Multiplication	5 * 3	15
// /	Division	5 / 2	2.5
// ~/	Integer Division	5 ~/ 2	2
// %	Modulus (remainder)	5 % 2	1

  int a = 10, b = 3;
  print("Addition: ${a + b}");
  print("Subtraction: ${a - b}");
  print("Multiplication: ${a * b}");
  print("Division: ${a / b}");
  print("Integer Division: ${a ~/ b}");
  print("Modulus: ${a % b}");

//   2. Relational (Comparison) Operators
// Used to compare two values. They return true or false.

// Operator	Description	Example	Result
// ==	Equal to	5 == 3	false
// !=	Not equal to	5 != 3	true
// >	Greater than	5 > 3	true
// <	Less than	5 < 3	false
// >=	Greater than or equal to	5 >= 5	true
// <=	Less than or equal to	3 <= 5	true
  int x = 5, y = 10;
  print("x > y: ${x > y}");
  print("x < y: ${x < y}");
  print("x == y: ${x == y}");
  print("x != y: ${x != y}");

//   3. Logical Operators
// Used for logical operations.

// Operator	Description	Example	Result
// &&	Logical AND	true && false	false
// ||		Logical OR
// !	Logical NOT (negation)	!true	false
  bool isAdult = true, hasID = false;
  print("Can enter: ${isAdult && hasID}");
  print("Either condition met: ${isAdult || hasID}");
  print("Not isAdult: ${!isAdult}");

//   5. Conditional (Ternary) Operator
// Short form of if-else.
  int age = 18;
  String message = (age >= 18) ? "You are an adult" : "You are a minor";
  print(message);

//   6. Type Test Operators
// Used to check or cast the type of an object.

// Operator	Description	Example	Result
// is	Checks if an object is a type	x is String	true
// is!	Checks if not a type	x is! String	false
// as	Typecast	obj as String	-

  var name = "Dart";
  print(name is String); // true
  print(name is! int); // true
  // print(name);

//   8. Null-aware Operators
// Used to work with nullable values.

// Operator	Description	Example	Result
// ??	Returns the first non-null	a ?? b	b
// ??=	Assigns if null	a ??= b	-
// ?.	Conditional member access	obj?.property	-

  String? name2 = null;
  print(name2 ?? "Default Name"); // Default Name
  name2 ??= "Assigned Name";
  print(name2); // Assigned Name

//   9. Cascade Notation (..)
// Allows chaining multiple operations on the same object.
  var list = [1, 2, 3];
  list
    ..add(4)
    ..remove(2)
    ..addAll([5, 6]);
  print(list); // [1, 3, 4, 5, 6]
}
