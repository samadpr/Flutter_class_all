import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});
  final _list = [
    'Apple',
    'Orange',
    'Pain Apple',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: DropdownButtonFormField(
          hint: Text('Select fruts'),
          onChanged: (value) {
            print(value);
          },
          items: _list.map((e) {
            return DropdownMenuItem(value: e, child: Text(e));
          }).toList(),
        ),
      ),
    );
  }
}
