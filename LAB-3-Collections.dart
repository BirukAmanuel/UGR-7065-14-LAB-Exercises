void main() {
  Map<String, int> studentMarks = {};
  studentMarks.putIfAbsent('bura', () => 85);
  studentMarks.putIfAbsent('dan', () => 90);
  studentMarks.putIfAbsent('blu', () => 75);

  print('Student marks:');
  studentMarks.forEach((name, marks) {
    print('$name: $marks');
  });

  String studentName = 'bura';
  if (studentMarks.containsKey(studentName)) {
    print('\n$studentName\'s marks: ${studentMarks[studentName]}');
  } else {
    print('\n$studentName is not found in the map.');
  }
}
