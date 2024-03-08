import 'dart:io'; 

void main() {
  print("Enter two numbers:");
  double number1 = double.parse(stdin.readLineSync()!);
  double number2 = double.parse(stdin.readLineSync()!);
  double result = sum(number1, number2);
  print("The sum of $number1 and $number2 is $result.");
}
double sum(double num1, double num2) {
  return num1 + num2;
}