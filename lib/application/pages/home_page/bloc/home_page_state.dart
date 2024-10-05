import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/total_balance.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.loaded({required TotalBalance totalBalance}) =
      HomePageLoadedState;
}
