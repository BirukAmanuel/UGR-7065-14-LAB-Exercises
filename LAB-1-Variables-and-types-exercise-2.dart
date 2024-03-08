import 'dart:io';
void main() {
  const int speedOfLight = 299792458; 
  print("Enter the distance light will travel (in meters): ");
  int distance = int.parse(stdin.readLineSync()!);
  double time = distance / speedOfLight;
  print("It will take $time seconds for light to travel $distance meters.");
}