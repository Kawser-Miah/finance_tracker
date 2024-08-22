import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/transaction_model.dart';

part 'transaction_state.freezed.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = Initial;
  const factory TransactionState.dataLoaded({required List<TransactionModel> transactions}) = HomePageTransactionDataLoadedState;
  const factory TransactionState.dataLoading() = LoadingState;
  const factory TransactionState.allDataLoaded({required List<TransactionModel> transaction, required List<String>months,required bool isSelect1,required bool isSelect2}) = TransactionDataLoadedState;
  const factory TransactionState.error({required String errorMessage}) = TransactionErrorState;
}
