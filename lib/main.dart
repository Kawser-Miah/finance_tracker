import 'package:finance_tracker/application/core/services/routing/app_router.dart';
import 'package:finance_tracker/application/pages/bottom_nav/bloc/bottom_bloc.dart';
import 'package:finance_tracker/data/datasources/db/finance_tracker_db.dart';
import 'package:finance_tracker/di/di.dart';
import 'package:finance_tracker/utils/models/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/models/entity_model/expense_entity_model.dart';
import 'domain/models/entity_model/income_entity_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  final database = await $FloorFinanceTrackerDB
      .databaseBuilder('finance_tracker.db')
      .build();
  // for (var i in A.list) {
  //   await database.incomeDao.insertIncome(i);
  // }
  // for (var i in A.list1) {
  //   await database.expenseDao.insertExpense(i);
  // }
try {
  final db = await database.expenseDao.getExpenseDataByCurrentMonth();



  // if(db.isNotEmpty){throw Exception();}
  for(var i in db){

    print(i.date);
  }
}catch(e){
  print("Hello");
}


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BottomBloc>()..add(const ChangeBottomEvent(3)),
      child: MaterialApp.router(
        routeInformationParser: AppRouter.router.routeInformationParser,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
        routerDelegate: AppRouter.router.routerDelegate,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.instance.lightTheme(),
      ),
    );
  }
}

class A {
  static List<IncomeEntityModel> list = [
    IncomeEntityModel(
        category: 'Salary',
        type: 'Income',
        income: 40000,
        description: "Demo",
        date: '2024-07-04'),
    IncomeEntityModel(
        category: 'Money Owed',
        type: 'Income',
        income: 10000,
        description: 'Demo',
        date: '2024-06-04'),
  ];
  static List<ExpenseEntityModel> list1 = [
    ExpenseEntityModel(
        category: "Food",
        type: "Expense",
        expense: 1000,

        date: '2024-08-03'),
    // ExpenseEntityModel(
    //     category: "Rent",
    //     type: "Expense",
    //     expense: 200,
    //     description: "Demo",
    //     date: '2024-08-30'),
  ];
}
