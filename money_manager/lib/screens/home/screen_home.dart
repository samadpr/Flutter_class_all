import 'package:flutter/material.dart';
import 'package:money_manager/db/category/category_db.dart';
import 'package:money_manager/models/category/category_model.dart';
import 'package:money_manager/screens/add_transaction/screen_add_transaction.dart';
import 'package:money_manager/screens/category/category_add_popup.dart';
import 'package:money_manager/screens/category/screen_category.dart';
import 'package:money_manager/screens/home/widgets/bottom_navigation.dart';
import 'package:money_manager/screens/transactions/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  static ValueNotifier<int> SelectedIndexNotifire = ValueNotifier(0);

  final _pages = const [
    ScreenTransaction(),
    ScreenCategory(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text('MONEY MANAGER'),
        centerTitle: true,
      ),
      bottomNavigationBar: const MoneyManagerBottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: SelectedIndexNotifire,
          builder: (BuildContext context, int updatedIndex, _) {
            return _pages[updatedIndex];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (SelectedIndexNotifire.value == 0) {
            print('add Transactions');
            Navigator.of(context).pushNamed(ScreenAddTransaction.routeName);
          } else {
            print('add category');

            showCatogoryAddPopup(context);

            // final _sample = CategoryModel(
            //   id: DateTime.now().millisecondsSinceEpoch.toString(),
            //   name: 'Travel',
            //   type: CategoryType.expense,
            // );
            // CategoryDB().insertCategory(_sample);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
