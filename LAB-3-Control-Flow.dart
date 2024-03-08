import 'dart:io';

void main() {
  print("Enter operation (+, -, *, /): ");
  String? operation = stdin.readLineSync();
  
  if (operation == null || operation.isEmpty) {
    print("Invalid operation. Please enter a valid operation.");
    return;
  }

  print("Enter first number: ");
  double? num1 = double.tryParse(stdin.readLineSync()!);
  
  if (num1 == null) {
    print("Invalid number. Please enter a valid number.");
    return;
  }

  print("Enter second number: ");
  double? num2 = double.tryParse(stdin.readLineSync()!);
  
  if (num2 == null) {
    print("Invalid number. Please enter a valid number.");
    return;
  }

  double result;
  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print("Error: Division by zero.");
        return;
      }
      result = num1 / num2;
      break;
    default:
      print("Invalid operation. Please enter a valid operation (+, -, *, /).");
      return;
  }
  print("Result: $result");
}