void main() {
  try {
    int result = 10 ~/ 0;
    print("Result: $result");
  } catch (e) {
    print("Exception caught: $e");
  } finally {
    print("Execution completed.");
  }

  // 2. Catching Specific Exceptions

  try {
    List<int> numbers = [1, 2, 3];
    print(numbers[5]); // Accessing an invalid index
  } on RangeError {
    print("RangeError caught!");
  }
}
