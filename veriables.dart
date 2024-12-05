void main() {
  // Declaring an integer variable for age
  int age = 10;
  // Declaring a string variable for name
  String name = "Sombhu Das";

  // Declaring a boolean variable
  // Used to store true/false values
  bool isComplete = true;
  print("Is the task complete? $isComplete");

  // Printing a formatted string using interpolation
  print("$name is $age years old.");
/**
 * 
 * 
 * 
 * 
 * 
 * 
 */
  //   explain constant or  immutable or not change data type        //

  // Declaring a final variable
  // `final` variables can only be set once and cannot be reassigned
  // this is also call Runtime constant .
  final finalValue;
  finalValue = "string"; // Assigning a value for the first and only time
  print("Final value: $finalValue");

  // Declaring a const variable
  // `const` variables are compile-time constants and must be assigned during declaration
  //this is also call Compile Time constant .
  const constValue = "constValue";
  print("Const value: $constValue");
/**
 * 
 * 
 * 
 * 
 * 
 * 
 */
//    Inferred(identify type of veriable autometically) veriabl    //

  var varValue =
      "Alice"; // Inferred(identify type of veriable autometically) as String

  // varValue = 42;          // Error: Cannot assign int to a String variable

  // Declaring a dynamic variable
  // `dynamic` allows the variable to hold values of different types at runtime
  dynamic value = 20;
  value = true; // Changing the type to boolean
  value = "som"; // Changing the type to string

  print(
      "Dynamic keyword allows changing variable types dynamically, e.g., $value");
/**
 * 
 * 
 * 
 * 
 * 
 * 
 */
  //     Variables declared with late are initialized only when accessed for the first time.    //
  late String greeting = "Hello";
  print(greeting); // Initialized and accessed here
/**
 * 
 * 
 * 
 * 
 * 
 * 
 */
  //    Nullable type     //
  int? age2;
  print(age2); // Output: null (since it's allowed to be null)

  age2 = 25;
  print(age2); // Output: 25

  // Asserting non-nullability
  String? name2 = "Sombhu";
  print(name2!); // Output: Sombhu

  name2 = null;
  // Uncommenting the below line will cause a runtime error
  //print(name2!); // Error: Null check operator used on a null value

  // Non-nullable variable
  String nonNullableName = "Hello";
  // nonNullableName = null; // Compile-time error: Null can't be assigned to a non-nullable variable
}


// 9. Scope of Variables
// Variables in Dart can have:

// Global Scope: Declared outside all functions.
// Local Scope: Declared inside a function.
// Class Scope: Declared as fields in a class.