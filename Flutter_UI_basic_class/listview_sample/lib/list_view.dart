import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewSample extends StatelessWidget {
  const ListViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join peoples for majlis (100)'),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text('PERSON $index'),
              subtitle: Text('Message $index'),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                backgroundImage: AssetImage('assets/images/light.jpg'),
              ),
              trailing: Text('1$index:00 PM'),
            );
          },
          separatorBuilder: (ctx, index) {
            return Divider();
          },
          itemCount: 101,
        ),
      ),
    );
  }
}

    // Normal listview sample
          // ListView(
          //   children: List.generate(
          //     100,
          //     (index) {
          //       return Column(
          //         children: [
          //           Text('Text $index'),
          //           Divider(
          //             thickness: 3,
          //             color: Colors.black,
          //           ),
          //         ],
          //       );
          //     },
          //   ),
          // ),