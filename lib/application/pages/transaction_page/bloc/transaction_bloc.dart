import 'package:finance_tracker/application/core/category_enum.dart';
import 'package:finance_tracker/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/usecases/transaction_usecase.dart';
import 'transaction_event.dart';
import 'transaction_state.dart';

export 'transaction_event.dart';
export 'transaction_state.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final TransactionUseCase transactionUseCase;
  TransactionBloc({required this.transactionUseCase})
      : super(const TransactionState.initial()) {
    on<HomePageTransactionDataRequestEvent>((event, emit) async {
      emit(const LoadingState());

      final response = await transactionUseCase.call(event.name);
      CategoryEnum categoryEnum = CategoryEnum.getEnum(event.name);
      response.fold(
          (l) => emit(TransactionErrorState(
              errorMessage: Utils.getErrorMessage(categoryEnum))),
          (r) => emit(HomePageTransactionDataLoadedState(transactions: r)));
    });

    on<TransactionRequestEvent>((event, emit) async {
      emit(const LoadingState());
      final response = await transactionUseCase.callForAllTransaction();

      response.fold(
          (l) => emit(const TransactionErrorState(
              errorMessage: "Did not found any data!")),
          (r) => emit(TransactionDataLoadedState(
              transaction: r.transactions!,
              months: r.months!,
              isSelect1: false,
              isSelect2: false)));
    });

    on<AllIncomesRequestEvent>((event, emit) async {
      emit(const LoadingState());
      final response = await transactionUseCase.callForAllIncomes();

      response.fold(
          (l) => emit(const TransactionErrorState(
              errorMessage: "Did not found any data!")),
          (r) => emit(TransactionDataLoadedState(
              transaction: r.transactions!,
              months: r.months!,
              isSelect1: true,
              isSelect2: false)));
    });

    on<AllExpensesRequestEvent>((event, emit) async {
      emit(const LoadingState());
      final response = await transactionUseCase.callForAllExpenses();

      response.fold(
          (l) => emit(const TransactionErrorState(
              errorMessage: "Did not found any data!")),
          (r) => emit(TransactionDataLoadedState(
              transaction: r.transactions!,
              months: r.months!,
              isSelect1: false,
              isSelect2: true)));
    });
  }
}
