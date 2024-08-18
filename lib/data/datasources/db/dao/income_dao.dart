import 'package:finance_tracker/domain/models/entity_model/income_entity_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class IncomeDao {
  @Query(
      "SELECT * FROM incomes WHERE DATE(date) = DATE('now','localtime') ORDER BY date DESC")
  Future<List<IncomeEntityModel>> getIncomeDataByCurrentDate();

  @Query(
      "SELECT * FROM incomes WHERE DATE(date) = DATE('now','-1 day','localtime') ORDER BY date DESC")
  Future<List<IncomeEntityModel>> getIncomeDataByPreviousDate();

  @Query(
      "SELECT * FROM incomes WHERE DATE(date) BETWEEN DATE('now', 'weekday 0', '-7 days','localtime') AND DATE('now', 'weekday 0','localtime') ORDER BY date DESC;")
  Future<List<IncomeEntityModel>> getIncomeDataByCurrentWeek();

  @Query(
      "SELECT * FROM incomes WHERE strftime('%Y-%m', date) = strftime('%Y-%m', 'now','localtime') ORDER BY date DESC;")
  Future<List<IncomeEntityModel>> getIncomeDataByCurrentMonth();

  @Query(
      "SELECT SUM(income) AS total_income FROM incomes WHERE strftime('%Y-%m', date) = strftime('%Y-%m', 'now','localtime')")
  Future<double?> getTotalIncomeByCurrentMonth();

  @Query(
      "SELECT SUM(income) AS total_income FROM incomes WHERE strftime('%Y-%m', date) = strftime('%Y-%m', 'now','-1 month','localtime')")
  Future<double?> getTotalIncomeByPreviousMonth();

  @Query(
      "SELECT DISTINCT strftime('%m-%Y', date) AS month_year FROM incomes WHERE category =:category")
  Future<List<String>> getMonthYear(String category);
  
  @Query("SELECT * FROM incomes WHERE category =:category")
  Future<List<IncomeEntityModel>>getIncomeByCategory(String category);

  @Query("DELETE FROM incomes WHERE id =:id")
  Future<void> deleteIncomes(int id);

  @update
  Future<void> updateIncome(IncomeEntityModel income);

  @insert
  Future<void> insertIncome(IncomeEntityModel income);
}
