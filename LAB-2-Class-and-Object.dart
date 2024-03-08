class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

class Student extends Person {
  int rollNumber;
  List<int> marks;


  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    return total / marks.length;
  }
}

void main() {
  Student student1 = Student("jash", 23, "4 killo", 101, [80, 85, 90]);
  Student student2 = Student("Bura", 19, "6 killo", 102, [75, 80, 85]);
  print("Student 1:");
  student1.displayInfo();
  print("Roll Number: ${student1.rollNumber}");
  print("Marks: ${student1.marks}");
  print("Total Marks: ${student1.calculateTotalMarks()}");
  print("Average Marks: ${student1.calculateAverageMarks()}");

  print("\nStudent 2:");
  student2.displayInfo();
  print("Roll Number: ${student2.rollNumber}");
  print("Marks: ${student2.marks}");
  print("Total Marks: ${student2.calculateTotalMarks()}");
  print("Average Marks: ${student2.calculateAverageMarks()}");
}
