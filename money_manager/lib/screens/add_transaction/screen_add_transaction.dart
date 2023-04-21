// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:money_manager/db/category/category_db.dart';
import 'package:money_manager/models/category/category_model.dart';
import 'package:money_manager/screens/category/category_add_popup.dart';

class ScreenAddTransaction extends StatefulWidget {
  static const routeName = 'add-transaction';
  const ScreenAddTransaction({super.key});

  @override
  State<ScreenAddTransaction> createState() => _ScreenAddTransactionState();
}

class _ScreenAddTransactionState extends State<ScreenAddTransaction> {
  DateTime? _selectedDate;
  CategoryType? _selectedCategoryType;
  CategoryModel? _selectedCategoryModel;

  /*
  Purpose
  Date
  Amount
  Income/Expense
  CategoryType
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Purpose
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Purpose',
                ),
              ),
              //Amount
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Amount',
                ),
              ),
              //Date
             
                TextButton.icon(
                  onPressed: () async {
                    final _selectedDateTemp = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate:
                          DateTime.now().subtract(const Duration(days: 365)),
                      lastDate: DateTime.now(),
                    );

                    if (_selectedDateTemp == null) {
                      return;
                    } else {
                      print(_selectedDateTemp.toString());
                      setState(() {
                        _selectedDate = _selectedDateTemp;
                      });
                    }
                  },
                  icon: Icon(Icons.calendar_today),
                  label: Text(_selectedDate == null
                      ? 'Select Date'
                      : _selectedDate!.toString()),
                ),
              
              //Category
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: CategoryType.income,
                        groupValue: CategoryType.income,
                        onChanged: (NewValue) {},
                      ),
                      Text('Income'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: CategoryType.expense,
                        groupValue: CategoryType.income,
                        onChanged: (NewValue) {},
                      ),
                      Text('Expense'),
                    ],
                  ),
                ],
              ),
              //Category Type
              DropdownButton(
                hint: const Text('Select Category'),
                items: CategoryDB.instance.incomeCategoryListListener.value
                    .map((e) {
                  return DropdownMenuItem(
                    value: e.id,
                    child: Text(e.name),
                  );
                }).toList(),
                onChanged: (selectedValue) {
                  print(selectedValue);
                },
              ),
              // Submit

              ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class RadioButtonTransaction extends StatelessWidget {
  final String title;
  final CategoryType type;
  RadioButtonTransaction({
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
