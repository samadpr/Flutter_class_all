import 'package:flutter/material.dart';
import 'package:screen_navigation/screen_1.dart';
import 'package:screen_navigation/screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenOne(),
      routes: {
        'screen_1': (ctx) {
          return ScreenOne();
        },
        'screen_2': (ctx) {
          return ScreenTwo();
        }
      },
    );
  }
}
