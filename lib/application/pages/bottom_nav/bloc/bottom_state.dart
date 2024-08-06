import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_state.freezed.dart';

@freezed
class BottomState with _$BottomState {
  const factory BottomState.currentTab(int currentIndex) = ChangeBottomState;
}
