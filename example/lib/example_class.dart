// Example of another class
// ignore_for_file: avoid_print, unused_element, unused_field, prefer_final_fields

import 'dart:ui';

class AnotherClass {
  final String name;

  AnotherClass(this.name);

  void greet() {
    print('Hello, $name!');
  }
}

class TestClass {
  // Variables
  int publicInt = 0; // Public instance variable
  late final int lateInt; // Late final variable
  static const double staticConstValue = 3.14; // Static constant
  static int staticInt = 10; // Static variable
  final String finalString = 'Hello'; // Final instance variable
  var dynamicVar = 'dynamic'; // Dynamic variable
  int? nullableInt; // Nullable type
  AnotherClass anotherClass = AnotherClass('Dart'); // Another class instance

  VoidCallback? callback; // Callback

  // Private variables
  int _privateInt = 42; // Private variable
  static int _staticPrivateInt = 20; // Static private variable
  static const _staticConstPrivateInt = 20; // Static const private variable

  // Constructors
  TestClass(this.publicInt); // Constructor with initializer
  TestClass.named({this.publicInt = 0}); // Named constructor
  TestClass.custom(int value)
      : publicInt = value * 2; // Constructor with initializer list
  TestClass.withLateFinal(this.lateInt); // Constructor for late final variable

  // Factory constructor
  factory TestClass.fromAnotherClass(AnotherClass another) {
    return TestClass(another.name.length);
  }

  // Getters and setters
  int get getPrivateInt => _privateInt; // Getter for private variable
  set setPrivateInt(int value) =>
      _privateInt = value; // Setter for private variable

  // Static method
  static void staticMethod() {
    print('This is a static method. Static value: $staticInt');
  }

  // Private method
  void _privateMethod() {
    print('Private method called.');
  }

  // Async function
  Future<void> asyncFunction() async {
    await Future.delayed(const Duration(seconds: 1));
    print('Async function completed.');
  }

  // Regular method
  void regularMethod() {
    print('This is a regular method.');
  }

  // Function with optional parameters
  void optionalParamsMethod([String optional = 'default']) {
    print('Optional param: $optional');
  }

  // Function with named parameters
  void namedParamsMethod(
      {required String requiredParam, String? optionalParam}) {
    print('Required: $requiredParam, Optional: $optionalParam');
  }

  // Function with return type
  int addNumbers(int a, int b) {
    return a + b;
  }

  // Operator overloading
  TestClass operator +(TestClass other) {
    return TestClass(this.publicInt + other.publicInt);
  }

  // Callback function
  void callbackFunction(Function callback) {
    callback();
  }
}
