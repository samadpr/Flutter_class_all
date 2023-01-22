import 'package:flutter/material.dart';
import 'package:sahred_pre/screen_2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _textController,
            ),
            ElevatedButton(
              onPressed: () {
                saveDataToStorage();
              },
              child: Text(
                'Save Value',
              ),
            ),
          ],
        ),
      )),
    );
  }

  Future<void> saveDataToStorage() async {
    print(_textController.text);

    // Shared Preferences

    final sharedPrefs = await SharedPreferences.getInstance();

    // Save Value
    await sharedPrefs.setString('saved_value', _textController.text);
  }

  Future<void> getSavedData(BuildContext context) async {
    final sahredPrefs = await SharedPreferences.getInstance();
    final savedValue = sahredPrefs.getString('saved_value');
    if (savedValue != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => ScreenTwo()));
    }
  }
}
