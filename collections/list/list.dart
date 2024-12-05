// 1. List
// A collection of ordered and indexed elements, similar to an array in
//  other programming languages. Dart has growable and fixed-length lists.

// Key Points:
// Ordered: Elements are maintained in the order they are inserted.
// Indexed: Access elements by their index.

void main() {
  // 1. Creating a List
  List<int> numbers = [10, 20, 30, 40]; // Growable list
  print("Initial List: $numbers");

  // 2. Adding Elements
  numbers.add(50); // Add a single element
  numbers.addAll([60, 70]); // Add multiple elements
  print("After Adding Elements: $numbers");

  // Inserting Elements
  numbers.insert(1, 15); // Insert at index 1
  numbers.insertAll(3, [25, 35]); // Insert multiple elements at index 3
  print("After Inserting Elements: $numbers");

  // 3. Removing Elements
  numbers.remove(30); // Remove a specific element
  numbers.removeAt(4); // Remove an element at index 4
  numbers.removeLast(); // Remove the last element
  numbers.removeWhere((n) => n > 50); // Remove elements greater than 50
  print("After Removing Elements: $numbers");

  // 4. Accessing Elements
  print("First Element: ${numbers.first}");
  print("Last Element: ${numbers.last}");
  print("Element at Index 2: ${numbers[2]}");

  // 5. Modifying Elements
  numbers[2] = 99; // Update element at index 2
  numbers.replaceRange(1, 3, [55, 77]); // Replace elements in a range
  print("After Modifying Elements: $numbers");

  // 6. Querying Properties
  print("Length of List: ${numbers.length}");
  print("Is List Empty? ${numbers.isEmpty}");
  print("Does List Contain 77? ${numbers.contains(77)}");

  // 7. Sorting and Reversing
  numbers.sort(); // Sort in ascending order
  print("Sorted List: $numbers");
  List<int> reversed = numbers.reversed.toList(); // Reversed list
  print("Reversed List: $reversed");

  // 8. Iterating Over List
  print("Iterating Using For Loop:");
  for (var num in numbers) {
    print(num);
  }
  print("Iterating Using forEach:");
  numbers.forEach((num) => print(num));

  // 9. Transforming and Filtering
  List<int> squared = numbers.map((n) => n * n).toList(); // Map transformation
  print("Squared Values: $squared");

  List<int> filtered = numbers.where((n) => n > 20).toList(); // Filter
  print("Filtered Values (greater than 20): $filtered");

  // 10. Sublist
  List<int> subList = numbers.sublist(1, 3); // Get a portion of the list
  print("Sublist: $subList");

  // 11. Joining Elements
  String joined = numbers.join(", "); // Join elements into a string
  print("Joined List: $joined");

  // 12. Clearing the List
  numbers.clear(); // Remove all elements
  print("Cleared List: $numbers");

  // 13. Spread and Null-Aware Spread
  List<int>? nullableList; // Null list
  List<int> combined = [...reversed, ...?nullableList, 100]; // Spread operator
  print("Combined List with Spread: $combined");

  // 14. Immutable List
  List<int> immutableList = List.unmodifiable([1, 2, 3]);
  print("Immutable List: $immutableList");
  // immutableList.add(4); // Uncommenting this will throw an error

  print("All List operations demonstrated successfully!");
}
