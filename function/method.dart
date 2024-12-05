// 9. Methods in Classes
// A method is defined inside a class and is tied to an instance or the class itself.

class Utility {
  static void utilityPrint() {
    print("this is utility class ");
  }

  int add(int a, int b) {
    return a + b;
  }
}

void main() {
  Utility.utilityPrint();

  Utility obj = Utility();
  var result = obj.add(4, 6);
  print(result);
}
