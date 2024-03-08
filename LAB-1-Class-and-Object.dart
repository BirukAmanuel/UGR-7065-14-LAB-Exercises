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

void main() {
  Person person1 = Person("Alice", 30, "123 Main St");
  Person person2 = Person("Bob", 25, "456 Elm St");

  print("Before modification:");
  person1.displayInfo(); 
  person2.displayInfo(); 
  person1.age = 35;
  person2.address = "789 Oak St";

  print("\nAfter modification:");
  person1.displayInfo(); 
  person2.displayInfo(); 
    
}