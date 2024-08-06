import 'package:finance_tracker/domain/models/income_expense_category.dart';
import 'package:finance_tracker/domain/repositories/category_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoryUseCase {
  final CategoryRepository categoryRepository;

  CategoryUseCase({required this.categoryRepository});

  Future<List<Category>> call() async {
    return categoryRepository.getCategories();
  }
}
