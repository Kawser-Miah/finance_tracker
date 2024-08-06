import 'package:floor/floor.dart';

@Entity(tableName: "incomes")
class IncomeEntityModel {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String? category;
  final String? type;
  final double? income;
  final String? description;
  final String? date;

  IncomeEntityModel(
      {this.id,
      this.category,
      this.type,
      this.income,
      this.description,
      this.date});
}
