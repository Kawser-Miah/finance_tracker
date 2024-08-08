import 'package:finance_tracker/domain/models/entity_model/expense_entity_model.dart';
import 'package:floor/floor.dart';

import '../../../../domain/models/total_balance.dart';

@dao
abstract class ExpenseDao {



  @Query("SELECT * FROM expenses WHERE DATE(date) = DATE('now') ORDER BY date DESC")
  Future<List<ExpenseEntityModel>> getExpenseDataByCurrentDate();

  @Query("SELECT * FROM expenses WHERE DATE(date) = DATE('now', '-1 day') ORDER BY date DESC")
  Future<List<ExpenseEntityModel>> getExpenseDataByPreviousDate();

  @Query("SELECT * FROM expenses WHERE DATE(date) BETWEEN DATE('now', 'weekday 0', '-7 days') AND DATE('now', 'weekday 0') ORDER BY date DESC;")
  Future<List<ExpenseEntityModel>> getExpenseDataByCurrentWeek();

  @Query("SELECT * FROM expenses WHERE strftime('%Y-%m', date) = strftime('%Y-%m', 'now') ORDER BY date DESC;")
  Future<List<ExpenseEntityModel>> getExpenseDataByCurrentMonth();

  @Query("SELECT SUM(expense) AS total_expense FROM expenses WHERE strftime('%Y-%m', date) = strftime('%Y-%m', 'now')")
  Future<double?> getTotalExpenseByCurrentMonth();

  @Query("SELECT SUM(expense) AS total_expense FROM expenses WHERE strftime('%Y-%m', date) = strftime('%Y-%m', 'now','-1 month')")
  Future<double?> getTotalExpenseByPreviousMonth();

  @Query("SELECT category, SUM(expense) AS total_expense FROM expenses WHERE date BETWEEN date('now', '-7 days') AND date('now') GROUP BY category ORDER BY total_expense DESC LIMIT 1;")
  Future<BestExpense?>getCategoryWithHighestExpenseByLastWeek();


  @insert
  Future<void> insertExpense(ExpenseEntityModel expense);
}
