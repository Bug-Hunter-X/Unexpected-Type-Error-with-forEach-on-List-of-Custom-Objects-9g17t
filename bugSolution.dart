```dart
class MyClass {
  final String name;

  MyClass(this.name);

  void printName() {
    print(name);
  }
}

void main() {
  var myObject = MyClass('John Doe');
  myObject.printName(); // This works fine

  List<MyClass> myList = [];
  myList.add(MyClass('Jane Doe'));
  myList.add(MyClass('Peter Pan'));

  // Correct way to use forEach with a custom class
  myList.forEach((element) {
    print(element.name);
  });

  // Alternative using forEach and a named function for better readability
  void printMyClassName(MyClass obj) {
    print(obj.name);
  }
  myList.forEach(printMyClassName);
}
```