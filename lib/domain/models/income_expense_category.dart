import 'package:freezed_annotation/freezed_annotation.dart';

part 'income_expense_category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required String img,
    required String name
}) = _Category;

}