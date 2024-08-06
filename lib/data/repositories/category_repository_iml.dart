import 'package:finance_tracker/domain/models/income_expense_category.dart';
import 'package:finance_tracker/utils/utils.dart';
import '../../domain/repositories/category_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CategoryRepository)
class CategoryRepositoryIml extends CategoryRepository{
  @override
  Future<List<Category>> getCategories() async{
    return Utils.categoriesList;
  }
}