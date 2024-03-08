import 'dart:io';

void main() {
  print("Enter a string to be reversed:");
  String inputString = stdin.readLineSync()!;
  String reversedString = reverseString(inputString);
  print("Reversed string: $reversedString");
}
String reverseString(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  return reversed;
}