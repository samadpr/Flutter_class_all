import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:screen_navigation/screen_2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('Screen 1'),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (ctx) {
                  //       return ScreenTwo();
                  //     },
                  //   ),
                  // );
                  Navigator.of(context).pushNamed('screen_2');
                },
                child: Text('GoTo Screen 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
