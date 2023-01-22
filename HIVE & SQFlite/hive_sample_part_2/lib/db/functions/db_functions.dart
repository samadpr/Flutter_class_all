import 'package:flutter/cupertino.dart';

import 'package:hive_sample/db/model/data_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

Future<void> addStudent(StudentModel value) async {
  // final studentDB = await Hive.openBox<StudentModel>('student_db');
  // final _id = await studentDB.add(value);
  // value.id = _id;
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
}

Future<void> getAllStudents() async {
  // final studentDB = await Hive.openBox<StudentModel>('student_db');
  studentListNotifier.value.clear();

  // studentListNotifier.value.addAll(studentDB.values);
  studentListNotifier.notifyListeners();
}

Future<void> deletestudent(int id) async {
  // final studentDB = await Hive.openBox<StudentModel>('student_db');
  // await studentDB.delete(id);
  getAllStudents();
}
