/**
 
 3. Multiple Futures
Handling multiple asynchronous tasks can be done with Future.wait.

 */

Future<String> task1() =>
    Future.delayed(Duration(seconds: 1), () => "Task 1 completed");
Future<String> task2() =>
    Future.delayed(Duration(seconds: 2), () => "Task 2 completed");

void main() async {
  List<String> results = await Future.wait([task1(), task2()]);
  print(results);
}
