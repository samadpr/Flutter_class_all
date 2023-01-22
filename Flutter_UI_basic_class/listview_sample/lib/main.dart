import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_sample/list_view.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ListViewSample(),
    );
  }
}
