class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0;
    }
    int sum = marks.reduce((value, element) => value + element);
    return sum / marks.length;
  }
}

void main() {
  Student student = Student('bura', [85, 76, 95, 67, 88]);
  print('${student.name}\'s average mark: ${student.calculateAverageMark()}');
}
