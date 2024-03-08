import 'dart:io';

void main() {
  print("Enter the grade (0-100): ");
  int? grade = int.tryParse(stdin.readLineSync()!);

  if (grade == null || grade < 0 || grade > 100) {
    print("Invalid grade. Please enter a valid grade between 0 and 100.");
    return;
  }
  String letterGrade;
  switch ((grade / 10).floor()) {
    case 10:
    case 9:
      letterGrade = 'A';
      break;
    case 8:
      letterGrade = 'B';
      break;
    case 7:
      letterGrade = 'C';
      break;
    case 6:
      letterGrade = 'D';
      break;
    default:
      letterGrade = 'F';
      break;
  }
  print("Letter grade: $letterGrade");
}