import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_details_event.freezed.dart';

@freezed
class CategoryDetailsEvent with _$CategoryDetailsEvent {
  const factory CategoryDetailsEvent.started() = _Started;
}
