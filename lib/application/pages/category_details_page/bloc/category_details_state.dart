import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_details_state.freezed.dart';

@freezed
class CategoryDetailsState with _$CategoryDetailsState {
  const factory CategoryDetailsState.initial() = _Initial;
}
