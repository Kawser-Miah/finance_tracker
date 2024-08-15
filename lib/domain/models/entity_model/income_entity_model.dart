import 'package:floor/floor.dart';

@Entity(tableName: "incomes")
class IncomeEntityModel {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String? category;
  final String? type;
  final String? incomeTitle;
  final double? income;
  final String? description;
  final String? date;

  IncomeEntityModel(
      {this.id,
      this.incomeTitle,
      this.category,
      this.type,
      this.income,
      this.description,
      this.date});
}
