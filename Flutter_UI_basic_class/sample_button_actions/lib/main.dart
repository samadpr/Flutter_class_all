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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textController = TextEditingController();

  String _displayText = 'Text will be displayed here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            color: Color.fromARGB(255, 255, 240, 100),
            child: Column(
              children: [
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type Something',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Get Data
                    print(_textController.text);
                    setState(() {
                      _displayText = _textController.text;
                    });
                  },
                  child: Text('Click Here'),
                ),
                Text(_displayText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
