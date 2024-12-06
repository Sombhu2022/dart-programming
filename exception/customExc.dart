// 4. Throwing Custom Exceptions
// You can create and throw custom exceptions for specific conditions.

class CustomException implements Exception {
  final String message;
  CustomException(this.message);

// override the toString method
  @override
  String toString() => "CustomException: $message";
}

void validateAge(int age) {
  if (age < 18) {
    throw CustomException("Age must be at least 18");
  }
}

void main() {
  try {
    validateAge(16);
  } catch (e) {
    print(e);
  }
}
