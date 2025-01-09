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

  // Now let's create a list of MyClass objects
  List<MyClass> myList = [];
  myList.add(MyClass('Jane Doe'));
  myList.add(MyClass('Peter Pan'));

  // This will throw an error: The argument type 'MyClass' can't be assigned to the parameter type 'String'
  myList.forEach(print); 
}
```