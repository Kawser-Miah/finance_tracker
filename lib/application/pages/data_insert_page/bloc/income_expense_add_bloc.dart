import 'package:finance_tracker/domain/usecases/insert_transaction_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'income_expense_add_state.dart';
import 'income_expense_add_event.dart';
export 'income_expense_add_event.dart';
export 'income_expense_add_state.dart';

@injectable
class IncomeExpenseAddBloc
    extends Bloc<IncomeExpenseAddEvent, IncomeExpenseAddState> {
  final InsertTransactionDataUseCase insertTransactionDataUseCase;
  IncomeExpenseAddBloc({required this.insertTransactionDataUseCase})
      : super(const IncomeExpenseAddState.initial()) {
    on<TextFieldTextChangeEvent>((event, emit) {
      if (event.amount == "") {
        emit(const AmountNullState(errorMessage: "Null Field Not Applicable!"));
      } else if (RegExp(r'[!@#\$%\^&\*\(\)_\+\-=\[\]\{\};:"\\|,<>\/?]')
          .hasMatch(event.amount)) {
        emit(const AmountNullState(
            errorMessage: "Special Characters Not Applicable!"));
      } else if (event.title == "") {
        emit(const TitleNullState(errorMessage: "Null Field Not Applicable!"));
      } else {
        String? description;
        String? category;
        if (event.category == 'Add/Others') {
          category = 'Others';
        } else {
          category = event.category;
        }
        if (event.description == "") {
          description = "You do not add any descriptions...!";
        } else {
          description = event.description;
        }
        double amount = double.parse(event.amount);
        emit(AllValidState(
            category: category,
            type: event.type,
            title: event.title,
            amount: amount,
            description: description,
            date: event.date));
      }
    });

    on<SubmitToDataBaseEvent>((event, emit) async {
      await insertTransactionDataUseCase.callForInsert(event.transaction);
      emit(const SuccessedState());
    });
  }
}
