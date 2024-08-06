import 'package:finance_tracker/application/core/category_enum.dart';
import 'package:finance_tracker/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/usecases/transaction_usecase.dart';
import 'transaction_state.dart';
import 'transaction_event.dart';
export 'transaction_state.dart';
export 'transaction_event.dart';

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
  }
}
