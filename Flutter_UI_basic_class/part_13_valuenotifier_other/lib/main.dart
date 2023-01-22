import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  ValueNotifier<int> _counter = ValueNotifier(0);

  void _incrementCounter() {
    _counter.value = _counter.value + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ValueListenableBuilder(
              valueListenable: _counter,
              builder: (BuildContext ctx, int newValue, Widget? child) {
                return Text(
                  '$newValue',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(context);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<void> showBottomSheet(BuildContext ctx) async {
    showModalBottomSheet(
      context: ctx,
      builder: (ctx1) {
        return Container(
          width: double.infinity,
          height: 500,
          color: Colors.lightGreen,
          child: ListView(
            children: [
              Text('Title'),
              TextButton(
                onPressed: () {
                  Navigator.of(ctx1).pop();
                },
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }
}
