import 'package:floor/floor.dart';

class TotalBalance{
  final double? totalIncome;
  final double? totalExpense;
  final BestExpense? bestExpense;
  final double? savingsLastMonth;

  TotalBalance({required this.totalExpense, required this.totalIncome, required this.bestExpense, required this.savingsLastMonth});
}


@Entity(tableName: 'expenses')
class BestExpense{
  @primaryKey
  final String category;
  final double total_expense;

  BestExpense({required this.category, required this.total_expense});

}