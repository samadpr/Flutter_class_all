import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  String name = 'Abdul Samad';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            print('Text Button Clicked');
                          },
                          child: Text('Click Me'),
                        ),
                        IconButton(
                          onPressed: () {
                            print('Icon Button Clicked');
                          },
                          icon: Icon(Icons.mic),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Elevated Button Clicked');
                      },
                      child: Text('Click Me'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Colors.green,
                    width: 10,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Sample text',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            print('Text Button Clicked');
                          },
                          child: Text('Click Me'),
                        ),
                        IconButton(
                          onPressed: () {
                            print('Icon Button Clicked');
                          },
                          icon: Icon(Icons.mic),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Elevated Button Clicked');
                      },
                      child: Text('Click Me'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
