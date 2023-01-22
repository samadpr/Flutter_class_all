import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _counder = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DisplayText(counterText: _counder.toString()),
        // Text(_counder.toString())
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print(_counder);
          setState(() {
            _counder = _counder + 1;
          });
        },
      ),
    );
  }
}

class DisplayText extends StatelessWidget {
  final String counterText;

  const DisplayText({super.key, required this.counterText});

  @override
  Widget build(BuildContext context) {
    return Text(counterText);
  }
}
