// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx, index) {
          return Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(
                radius: 50,
                child: Text(
                  '12\ndec',
                  textAlign: TextAlign.center,
                ),
              ),
              title: Text('Rs 10000'),
              subtitle: Text('Travel'),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 10);
  }
}
