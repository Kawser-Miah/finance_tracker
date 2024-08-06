import 'package:finance_tracker/domain/models/entity_model/expense_entity_model.dart';
import 'package:floor/floor.dart';

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

  @insert
  Future<void> insertExpense(ExpenseEntityModel expense);
}
