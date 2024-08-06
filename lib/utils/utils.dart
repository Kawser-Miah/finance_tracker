import 'package:finance_tracker/utils/strings.dart';

import '../application/core/category_enum.dart';

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
}
