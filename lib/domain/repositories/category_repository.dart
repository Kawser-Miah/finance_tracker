import 'package:finance_tracker/domain/models/income_expense_category.dart';

abstract class CategoryRepository{
  Future<List<Category>> getCategories();
}