Future<String> step1() {
  return Future.delayed(Duration(seconds: 1), () => "Step 1");
}

Future<String> step2(String input) {
  return Future.delayed(Duration(seconds: 1), () => "$input -> Step 2");
}

Future<String> step3(String input) {
  return Future.delayed(Duration(seconds: 1), () => "$input -> Step 3");
}

void main() {
  step1()
      .then((result1) => step2(result1))
      .then((result2) => step3(result2))
      .then((finalResult) => print(finalResult))
      .catchError((e) => print("Error: $e"));
}
