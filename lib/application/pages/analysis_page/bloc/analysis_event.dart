part of 'analysis_bloc.dart';

@freezed
class AnalysisEvent with _$AnalysisEvent {
  const factory AnalysisEvent.started({required String name}) = _Started;
}
