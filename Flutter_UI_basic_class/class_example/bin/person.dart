class Person {
  final String _name;
  int _age;

  Person(this._name, this._age);

  int get helloAge {
    return _age;
  }

  set setAge(int value) {
    _age = value;
  }

  int getAge() {
    return _age;
  }

  // Person.ageBelow50(this.name, this.age) {
  //   print(name);
  // }
  // Person.ageAbove50(this.name, this.age) {
  //   print(name);
  // }

  void sayHai() {
    print('Hai');
  }
}
