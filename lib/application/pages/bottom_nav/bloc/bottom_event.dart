import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_event.freezed.dart';

@freezed
abstract class BottomEvent with _$BottomEvent {
  const factory BottomEvent.changeTab(int tabIndex) = ChangeBottomEvent;
}
