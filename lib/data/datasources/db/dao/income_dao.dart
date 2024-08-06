import 'package:finance_tracker/domain/models/entity_model/income_entity_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class IncomeDao {
  
  @Query("SELECT * FROM incomes WHERE DATE(date) = DATE('now') ORDER BY date DESC")
  Future<List<IncomeEntityModel>> getIncomeDataByCurrentDate();

  @Query("SELECT * FROM incomes WHERE DATE(date) = DATE('now','-1 day') ORDER BY date DESC")
  Future<List<IncomeEntityModel>> getIncomeDataByPreviousDate();

  @Query("SELECT * FROM incomes WHERE DATE(date) BETWEEN DATE('now', 'weekday 0', '-7 days') AND DATE('now', 'weekday 0') ORDER BY date DESC;")
  Future<List<IncomeEntityModel>> getIncomeDataByCurrentWeek();
  
  @Query("SELECT * FROM incomes WHERE strftime('%Y-%m', date) = strftime('%Y-%m', 'now') ORDER BY date DESC;")
  Future<List<IncomeEntityModel>> getIncomeDataByCurrentMonth();


  @insert
  Future<void> insertIncome(IncomeEntityModel income);
  
}
