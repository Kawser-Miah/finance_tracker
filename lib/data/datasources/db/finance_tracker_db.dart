import 'dart:async';

import 'package:finance_tracker/data/datasources/db/dao/expense_dao.dart';
import 'package:finance_tracker/data/datasources/db/dao/income_dao.dart';
import 'package:finance_tracker/domain/models/entity_model/expense_entity_model.dart';
import 'package:finance_tracker/domain/models/entity_model/income_entity_model.dart';
import 'package:finance_tracker/domain/models/total_balance.dart';
import 'package:floor/floor.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../../domain/models/entity_model/time_series_total_model.dart';
import 'dao/analysis_dao.dart';

part 'finance_tracker_db.g.dart';

@Database(
  version: 1,
  entities: [IncomeEntityModel, ExpenseEntityModel, BestExpense],
    views: [TimeSeriesTotal],
)
abstract class FinanceTrackerDB extends FloorDatabase {
  @injectable
  IncomeDao get incomeDao;
  ExpenseDao get expenseDao;
  AnalysisDao get analysisDao;
}
