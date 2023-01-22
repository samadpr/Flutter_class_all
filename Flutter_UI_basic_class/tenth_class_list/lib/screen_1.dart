import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tenth_class_list/screen_2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text('PERSON $index'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return ScreenTwo(name: 'PERSON $index');
                      },
                    ),
                  );
                },
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: 30),
      ),
    );
  }
}
