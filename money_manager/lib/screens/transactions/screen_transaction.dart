// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_manager/db/category/category_db.dart';
import 'package:money_manager/db/transaction/transaction_db.dart';
import 'package:money_manager/models/transaction/transaction_model.dart';

import '../../models/category/category_model.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    TransactionDB.instance.refresh();
    CategoryDB.instance.refreshUI();
    return ValueListenableBuilder(
      valueListenable: TransactionDB.instance.transactionListNotifier,
      builder: (BuildContext ctx, List<TransactionModel> newList, Widget? _) {
        return ListView.separated(
          padding: EdgeInsets.all(10),
          //values
          itemBuilder: (ctx, index) {
            final _value = newList[index];
            return Card(
              elevation: 0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  child: Text(
                    parseDate(_value.date),
                    textAlign: TextAlign.center,
                  ),
                  backgroundColor: _value.type == CategoryType.income
                      ? Colors.green
                      : Colors.red,
                ),
                title: Text('Rs ${_value.amount}'),
                subtitle: Text(_value.category.name),
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: newList.length,
        );
      },
    );
  }

  String parseDate(DateTime date) {
    final _date  = DateFormat.MMMd().format(date);
    final _splitedDate= _date.split(' ');
    return '${_splitedDate.last}\n${_splitedDate.first}';
    // return '${date.day}\n${date.month}';
  }
}
