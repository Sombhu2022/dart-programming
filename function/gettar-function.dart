// 1. Concept of Getters and Setters
// Getter: Used to retrieve or access the value of a property.
// Setter: Used to set or modify the value of a property.
// Getters use the get keyword, while setters use the set keyword.
// By default, class fields in Dart are public. To make them private, prefix them with an underscore (_).

// 2. Types of Access Specifiers
// Dart supports two types of access specifiers:

// Public: Fields and methods are accessible anywhere.
// Private: Prefixed with _, accessible only within the same file.

class BankAccount {
  String _accountNumber = "123456789"; // Private field
  double _balance = 1000.0; // Private field

  // Getter for balance and accountNumber (read-only access)
  double get balance => _balance;
  String get accountNumber => _accountNumber;

  // Method for deposit
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$${amount}");
    } else {
      print("Invalid deposit amount");
    }
  }

  // Method for withdrawal
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: \$${amount}");
    } else {
      print("Invalid withdrawal amount or insufficient funds");
    }
  }
}

void main() {
  var account = BankAccount();

  // Accessing balance using getter
  print("Initial Balance: \$${account.balance}");

  // Depositing funds
  account.deposit(500);

  // Withdrawing funds
  account.withdraw(300);

  // Displaying updated balance
  print("Updated Balance: \$${account.balance}");
}
