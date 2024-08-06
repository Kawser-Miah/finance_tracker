import '../../utils/strings.dart';

enum CategoryEnum {
  daily,
  weekly,
  monthly,
  yearly;

  String getName() {
    switch (this) {
      case daily:
        return Strings.daily;
      case weekly:
        return Strings.weekly;
      case monthly:
        return Strings.monthly;
      case yearly:
        return Strings.yearly;
    }
  }

  static CategoryEnum getEnum(String name) =>
      CategoryEnum.values.firstWhere((element) => element.getName() == name);
}
