import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/transaction_model.dart';

part 'category_details_state.freezed.dart';

@freezed
class CategoryDetailsState with _$CategoryDetailsState {
  const factory CategoryDetailsState.initial() = _Initial;
  const factory CategoryDetailsState.dataLoaded({required List<TransactionModel> transactions,required List<String> months}) = CategoryDetailsLoadedState;
  const factory CategoryDetailsState.dataLoading() = LoadingState;
  const factory CategoryDetailsState.error({required String errorMessage}) = CategoryDetailsErrorState;
}
