import 'dart:io';

void main() {
  try {
    print("Enter a number:");
    String userInput = stdin.readLineSync()!;
    
    int number = int.parse(userInput);
    
    print("Integer value: $number");
  } catch (e) {
    print("Error: Input is not a valid number.");
  }
}
