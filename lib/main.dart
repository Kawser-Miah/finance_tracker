import 'package:finance_tracker/application/core/services/routing/app_router.dart';
import 'package:finance_tracker/application/pages/bottom_nav/bloc/bottom_bloc.dart';
import 'package:finance_tracker/data/datasources/db/finance_tracker_db.dart';
import 'package:finance_tracker/di/di.dart';
import 'package:finance_tracker/utils/models/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  final database = await $FloorFinanceTrackerDB
      .databaseBuilder('finance_tracker.db')
      .build();

  final db = await database.expenseDao.getAnalysisDataByMonth();
// await database.expenseDao.deleteExpense(3);
for(var i in db){
// print(db);
print(i.time);
print(i.total_amount);}

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BottomBloc>()..add(const ChangeBottomEvent(0)),
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
