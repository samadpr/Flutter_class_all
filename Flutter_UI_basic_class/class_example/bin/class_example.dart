// import 'person.dart';

// void main(List<String> arguments) {
//   // final person = Person('Samad', 20);
//   // person.name = 'Samad';
//   // print(person.name);

//   final person = Person('samad', 20);

//   // print(person._name);
//   print(person.helloAge);

//   person.setAge = 19;

//   person.sayHai();
// }
// =========== Class and Inheritance ===========

// abstract class Animal1 {
//   void sayHello() {
//     print('Animal Say Hello');
//   }
// }

// abstract class Animal2 {
//   void sayHello() {
//     print('Animal 2 hello');
//   }
// }

// class Human implements Animal1, Animal2 {
//   @override
//   void sayHello() {
//     print('Human Hello');
//   }

//   void sayName() {
//     print('name');
//   }
// }
// // class Human extends Animal {
// //   void sayName() {
// //     print('Say Name');
// //   }

// //   @override
// //   void sayHello() {
// //     print('Say Hello human');
// //     super.sayHello();
// //   }
// // }

// void main(List<String> args) {
//   // Enter point
//   // final animal = Animal();
//   final human = Human();
//   human.sayHello();
//   // human.sayName();
// }

// ======= Mixin =======

mixin Animal1 {
  int age = 0;
  void sayHello() {
    print('Mixin1 hello');
  }
}
mixin Animal2 {
  int age = 2;
  void sayHello() {
    print('Mixin2 hello');
  }
}

class Human with Animal1, Animal2 {}
// class Human extends Animal {
//   void sayName() {
//     print('Say Name');
//   }

//   @override
//   void sayHello() {
//     print('Say Hello human');
//     super.sayHello();
//   }
// }

void main(List<String> args) {
  // Enter point
  // final animal = Animal();
  final human = Human();
  human.sayHello();
  // human.sayName();
}
