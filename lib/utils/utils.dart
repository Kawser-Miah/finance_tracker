import 'package:finance_tracker/utils/strings.dart';

import '../application/core/category_enum.dart';
import '../domain/models/income_expense_category.dart';
import '../generated/assets.dart';

class Utils {
  static String getGreeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return 'Good Morning!';
    } else if (hour < 17) {
      return 'Good Afternoon!';
    } else {
      return 'Good Evening!';
    }
  }

  static String getErrorMessage(CategoryEnum categoryEnum) {
    switch (categoryEnum) {
      case CategoryEnum.daily:
        return Strings.todayErrorMsg;
      case CategoryEnum.weekly:
        return Strings.weekErrorMsg;
      case CategoryEnum.monthly:
        return Strings.monthErrorMsg;
      default:
        return Strings.todayErrorMsg;
    }
  }

  static final List<Category> categoriesList=[
    const Category(id: 1, img: Assets.categoryFood, name: 'Food'),
    const Category(id: 2, img: Assets.categoryTransport, name: 'Transport'),
    const Category(id: 3, img: Assets.categoryGroceries, name: 'Groceries'),
    const Category(id: 4, img: Assets.categoryMedicine, name: 'Medicine'),
    const Category(id: 5, img: Assets.categoryRent, name: 'Rent'),
    const Category(id: 6, img: Assets.categoryGifts, name: 'Gifts'),
    const Category(id: 7, img: Assets.categoryEntertainment, name: 'Entertainment'),
    const Category(id: 8, img: Assets.homeSalary, name: 'Savings'),
    const Category(id: 9, img: Assets.categoryMore, name: 'Add')
  ];
}
