import 'dart:math';

void main() {
  List<int> numbers = List.generate(20, (index) => Random().nextInt(10));
  print('Original list of numbers:');
  printList(numbers);
  Set<int> uniqueNumbers = numbers.toSet();
  print('\nUnique numbers:');
  printList(uniqueNumbers.toList());
}

void printList(List<int> list) {
  for (int number in list) {
    print(number);
  }
}
