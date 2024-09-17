import 'dart:async';
import 'package:finance_tracker/data/datasources/db/dao/expense_dao.dart';
import 'package:finance_tracker/data/datasources/db/dao/income_dao.dart';
import 'package:finance_tracker/domain/models/entity_model/expense_entity_model.dart';
import 'package:finance_tracker/domain/models/entity_model/income_entity_model.dart';
import 'package:finance_tracker/domain/models/total_balance.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:injectable/injectable.dart';

import '../../../domain/models/analysis_model.dart';

part 'finance_tracker_db.g.dart';

@Database(version: 1, entities: [IncomeEntityModel, ExpenseEntityModel, BestExpense,SingleAnalysis])
abstract class FinanceTrackerDB extends FloorDatabase {
  @injectable
  IncomeDao get incomeDao;
  ExpenseDao get expenseDao;
}
