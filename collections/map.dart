// Here's an example project with a Map in Dart, including all necessary functionalities and proper comments explaining each part of the code.

void main() {
  // Step 1: Creating a Map to store user names and their ages
  // Here, the map will have String keys (names) and int values (ages).
  Map<String, int> userAgeMap = {
    'Alice': 30,
    'Bob': 25,
    'Charlie': 35,
  };

  // Step 2: Adding a new user to the Map
  // We'll add a new user 'David' with the age 28 to the map.
  userAgeMap['David'] = 28;
  print('Added David: $userAgeMap');

  // Step 3: Accessing a value from the Map
  // Access Alice's age using her name as the key.
  int aliceAge = userAgeMap['Alice'] ??
      0; // Using null-aware operator to handle non-existent keys
  print("Alice's age is $aliceAge");

  // Step 4: Modifying a value in the Map
  // Updating Bob's age to 26.
  userAgeMap['Bob'] = 26;
  print("Updated Bob's age: $userAgeMap");

  // Step 5: Removing a key-value pair from the Map
  // We will remove 'Charlie' from the map.
  userAgeMap.remove('Charlie');
  print('Removed Charlie: $userAgeMap');

  // Step 6: Checking if a key exists
  // Check if 'David' exists in the map.
  bool hasDavid = userAgeMap.containsKey('David');
  print("Does the map have David? $hasDavid");

  // Step 7: Checking if a value exists
  // Check if any user has the age 26.
  bool hasAge26 = userAgeMap.containsValue(26);
  print("Is there anyone aged 26? $hasAge26");

  // Step 8: Iterating over the Map
  // We will use the forEach method to iterate over the Map and print the names and ages.
  userAgeMap.forEach((key, value) {
    print('$key is $value years old');
  });

  // Step 9: Getting the length of the Map
  // We can get the number of entries in the Map using the length property.
  print('Total number of users: ${userAgeMap.length}');

  // Step 10: Clearing the Map
  // We can clear all the entries from the map using the clear() method.
  userAgeMap.clear();
  print('Map after clearing: $userAgeMap');
}
