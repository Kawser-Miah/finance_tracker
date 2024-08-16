import 'package:freezed_annotation/freezed_annotation.dart';

part 'income_expense_add_state.freezed.dart';

@freezed
class IncomeExpenseAddState with _$IncomeExpenseAddState {
  const factory IncomeExpenseAddState.initial() = _Initial;
  const factory IncomeExpenseAddState.amountNull(
      {required String errorMessage}) = AmountNullState;
  const factory IncomeExpenseAddState.titleNull(
      {required String errorMessage}) = TitleNullState;
  const factory IncomeExpenseAddState.allValid(
      {required String category,
      required String type,
      required String title,
      required double amount,
      required String description,
      required String date}) = AllValidState;
  const factory IncomeExpenseAddState.success() = SuccessedState;

}
