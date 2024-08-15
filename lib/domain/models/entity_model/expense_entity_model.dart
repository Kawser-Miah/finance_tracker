import 'package:floor/floor.dart';

@Entity(tableName: "expenses")
class ExpenseEntityModel {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String? category;
  final String? type;
  final String? expenseTitle;
  final double? expense;
  final String? description;
  final String? date;

  ExpenseEntityModel(
      {this.id,
      this.category,
      this.type,
      this.expenseTitle,
      this.expense,
      this.description,
      this.date});
}
