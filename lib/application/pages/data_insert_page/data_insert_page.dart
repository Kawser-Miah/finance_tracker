import 'package:finance_tracker/application/pages/data_insert_page/all_field.dart';
import 'package:finance_tracker/application/pages/data_insert_page/bloc/income_expense_add_bloc.dart';
import 'package:finance_tracker/di/di.dart';
import 'package:finance_tracker/domain/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/models/theme.dart';

class DataInsertPage extends StatelessWidget {
  final String todo;
  final TransactionModel transaction;
  final String path;
  const DataInsertPage({
    super.key,
    required this.todo,
    required this.transaction, required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<IncomeExpenseAddBloc>(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          // resizeToAvoidBottomInset: false,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 40, right: 16, left: 16, bottom: 5),
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width,
                color: Theme.of(context).colorScheme.primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        // iconSize: 20,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          // size: 20,
                        )),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "$todo ${transaction.type}s",
                      style: AppTheme.lightHeadingText,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.only(top: 50, right: 40, left: 40),
                    height: MediaQuery.of(context).size.height * 0.88,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        color: Theme.of(context).colorScheme.onPrimary),
                    child: AllField(transaction: transaction, todo: todo, path: path,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
