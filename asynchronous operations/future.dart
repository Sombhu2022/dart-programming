/*

Future in Dart
The Future class in Dart is used to represent asynchronous operations. 
A Future holds a value or an error that will be available at some point in the future.

Why Use Futures?
Futures are used to:

Handle asynchronous tasks like fetching data from an API, reading a file, or performing a database query.
Prevent blocking the main thread of execution.

Key Concepts
Completed Future: A Future that already has a value or an error.
Pending Future: A Future that has not completed yet.
then(): Used to handle the result of a Future.
catchError(): Handles errors from the Future.
async-await: A modern and cleaner syntax to handle Future.


*/

Future<int> divideNumbers(int a, int b) {
  return Future.delayed(Duration(seconds: 1), () {
    if (b == 0) {
      throw Exception("Cannot divide by zero");
    }
    return a ~/ b;
  });
}

void main() async {
  try {
    int result = await divideNumbers(10, 0);
    print(result);
  } catch (e) {
    print("Error: $e");
  }
}
