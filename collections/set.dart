/**
 *   The Set in Dart is an unordered collection of unique items. It ensures that each element is distinct and does not allow duplicate values. Below are all the functionalities and methods you can use with a Set in Dart, explained with examples:
 * * */

void main() {
  // Creating Sets
  Set<int> numbers = {1, 2, 3, 4, 5};
  Set<int> moreNumbers = {4, 5, 6, 7};

  // Adding Elements
  numbers.add(6);
  numbers.addAll([7, 8]);
  print("After adding: $numbers"); // {1, 2, 3, 4, 5, 6, 7, 8}

  // Removing Elements
  numbers.remove(3);
  numbers.removeAll([7, 8]);
  print("After removing: $numbers"); // {1, 2, 4, 5, 6}

  // Set Operations
  print("Union: ${numbers.union(moreNumbers)}"); // {1, 2, 4, 5, 6, 7}
  print("Intersection: ${numbers.intersection(moreNumbers)}"); // {4, 5, 6}
  print("Difference: ${numbers.difference(moreNumbers)}"); // {1, 2}

  // Checking Conditions
  print("Contains 2? ${numbers.contains(2)}"); // true
  print("Any greater than 5? ${numbers.any((n) => n > 5)}"); // true
  print("All positive? ${numbers.every((n) => n > 0)}"); // true

  // Converting to List
  List<int> numberList = numbers.toList();
  print("List: $numberList"); // [1, 2, 4, 5, 6]

  // Iteration
  numbers.forEach((n) => print("Element: $n"));
}
