// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:money_manager/db/category/category_db.dart';
import 'package:money_manager/models/category/category_model.dart';

ValueNotifier<CategoryType> selectedCategoryNotifire =
    ValueNotifier(CategoryType.income);

Future<void> showCatogoryAddPopup(BuildContext context) async {
  final _nameEditingController = TextEditingController();
  showDialog(
    context: context,
    builder: (ctx) {
      return SimpleDialog(
        title: Text('Add Catogory'),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _nameEditingController,
              decoration: InputDecoration(
                hintText: 'Category Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                RadioButton(
                  title: 'Income',
                  type: CategoryType.income,
                ),
                RadioButton(
                  title: 'Expense',
                  type: CategoryType.expense,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                final _name = _nameEditingController.text.trim();
                if (_name.isEmpty) {
                  return;
                }
                final _type = selectedCategoryNotifire.value;
                final _category = CategoryModel(
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  name: _name,
                  type: _type,
                );
                CategoryDB().insertCategory(_category);
                Navigator.of(ctx).pop();
              },
              child: Text('Add'),
            ),
          )
        ],
      );
    },
  );
}

class RadioButton extends StatelessWidget {
  final String title;
  final CategoryType type;
  RadioButton({
    super.key,
    required this.title,
    required this.type,
  });

  CategoryType? _type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder(
            valueListenable: selectedCategoryNotifire,
            builder: (BuildContext ctx, CategoryType newCategory, Widget? _) {
              return Radio<CategoryType>(
                value: type,
                groupValue: newCategory,
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  selectedCategoryNotifire.value = value;
                  selectedCategoryNotifire.notifyListeners();
                },
              );
            }),
        Text(title),
      ],
    );
  }
}
