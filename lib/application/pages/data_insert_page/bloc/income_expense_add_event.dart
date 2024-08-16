import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/transaction_model.dart';

part 'income_expense_add_event.freezed.dart';

@freezed
class IncomeExpenseAddEvent with _$IncomeExpenseAddEvent {
  const factory IncomeExpenseAddEvent.textChanged(
      {required String category,
      required String type,
      required String title,
      required String amount,
      required String description,
      required String date}) = TextFieldTextChangeEvent;
  const factory IncomeExpenseAddEvent.submitted(
      {required TransactionModel transaction}) = SubmitToDataBaseEvent;

}
