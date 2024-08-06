import 'package:finance_tracker/domain/models/income_expense_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.categoryLoaded(
      {required List<Category> categories}) = CategoryLoadedState;
}
