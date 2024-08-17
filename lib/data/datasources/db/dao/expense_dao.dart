import 'package:finance_tracker/domain/models/entity_model/expense_entity_model.dart';
import 'package:floor/floor.dart';

import '../../../../domain/models/total_balance.dart';

@dao
abstract class ExpenseDao {



  @Query("SELECT * FROM expenses WHERE DATE(date) = DATE('now','localtime') ORDER BY date DESC")
  Future<List<ExpenseEntityModel>> getExpenseDataByCurrentDate();

  @Query("SELECT * FROM expenses WHERE DATE(date) = DATE('now', '-1 day','localtime') ORDER BY date DESC")
  Future<List<ExpenseEntityModel>> getExpenseDataByPreviousDate();

  @Query("SELECT * FROM expenses WHERE DATE(date) BETWEEN DATE('now', 'weekday 0', '-7 days','localtime') AND DATE('now', 'weekday 0','localtime') ORDER BY date DESC;")
  Future<List<ExpenseEntityModel>> getExpenseDataByCurrentWeek();

  @Query("SELECT * FROM expenses WHERE strftime('%Y-%m', date) = strftime('%Y-%m', 'now','localtime') ORDER BY date DESC;")
  Future<List<ExpenseEntityModel>> getExpenseDataByCurrentMonth();

  @Query("SELECT SUM(expense) AS total_expense FROM expenses WHERE strftime('%Y-%m', date) = strftime('%Y-%m', 'now','localtime')")
  Future<double?> getTotalExpenseByCurrentMonth();

  @Query("SELECT SUM(expense) AS total_expense FROM expenses WHERE strftime('%Y-%m', date) = strftime('%Y-%m', 'now','-1 month','localtime')")
  Future<double?> getTotalExpenseByPreviousMonth();

  @Query("SELECT category, SUM(expense) AS total_expense FROM expenses WHERE date BETWEEN date('now', '-7 days','localtime') AND date('now','localtime') GROUP BY category ORDER BY total_expense DESC LIMIT 1;")
  Future<BestExpense?>getCategoryWithHighestExpenseByLastWeek();
  
  @Query("DELETE FROM expenses WHERE id =:id")
  Future<void> deleteExpense(int id);

  @update
  Future<void> updateExpense(ExpenseEntityModel expense);

  @insert
  Future<void> insertExpense(ExpenseEntityModel expense);
}
