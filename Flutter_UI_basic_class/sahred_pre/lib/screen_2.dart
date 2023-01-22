import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(name),
      // ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Text('Screen 2'),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.of(context).pop();
              //   },
              //   child: Text('Go Back'),
              // ),

              Text('Value Fonnd')
            ],
          ),
        ),
      ),
    );
  }
}
