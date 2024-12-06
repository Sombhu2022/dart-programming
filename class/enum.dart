/**
 
 Key Features of Enums in Dart
Fixed Set of Constants:

Each value in the enum is a constant.
They are zero-based indexed by default.
Type-Safe:

You cannot assign a value to an enum variable that is not defined in the enum.
Default Indexing:

Enum values are indexed starting from 0.
Properties:

index: Returns the zero-based position of the value in the enum.
values: Returns a list of all enum values.

 */

// Enum example
enum PaymentStatus { pending, completed, failed }

void displayPaymentStatus(PaymentStatus status) {
  switch (status) {
    case PaymentStatus.pending:
      print("Payment is pending.");
      break;
    case PaymentStatus.completed:
      print("Payment is completed.");
      break;
    case PaymentStatus.failed:
      print("Payment failed. Please try again.");
      break;
  }
}

void main() {
  // Enum
  print("\nEnum Example:");
  displayPaymentStatus(PaymentStatus.completed);
}
