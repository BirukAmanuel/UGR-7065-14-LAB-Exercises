void main() {
  List<String> favoriteHobbies = [];
  favoriteHobbies.addAll(['Reading', 'Running', 'Cooking']);
  print('Initial list of favorite hobbies:');
  printList(favoriteHobbies);
  favoriteHobbies.add('Gardening');
  print('\nList of favorite hobbies after adding:');
  printList(favoriteHobbies);
  favoriteHobbies.remove('Running');
  print('\nList of favorite hobbies after removing:');
  printList(favoriteHobbies);
  favoriteHobbies.sort();
  print('\nSorted list of favorite hobbies:');
  printList(favoriteHobbies);
  bool isEmpty = favoriteHobbies.isEmpty;
  print('\nIs the list of favorite hobbies empty? $isEmpty');
}

void printList(List<String> list) {
  for (String item in list) {
    print(item);
  }
}
