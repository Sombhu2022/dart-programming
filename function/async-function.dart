// 12. Async and Await Functions
// For asynchronous operations like fetching data or delayed executions.

// Async and Await in Dart
/**
  In Dart, async and await are used to handle asynchronous operations,
  like fetching data from an API or performing tasks that take time, 
  without blocking the main thread. They make it easier to write asynchronous
  code that looks and behaves like synchronous code.
 *  */
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // Simulate delay
  return "Data loaded";
}

void main() async {
  print("Loading...");
  print(await fetchData());
}
