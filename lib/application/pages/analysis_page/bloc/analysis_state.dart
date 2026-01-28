part of 'analysis_bloc.dart';

@freezed
class AnalysisState with _$AnalysisState {
  const factory AnalysisState.initial() = AnalysisInitialState;
  const factory AnalysisState.loading() = AnalysisLoadingState;
  const factory AnalysisState.dataLoaded({required List<TimeSeriesTotal> data}) = AnalysisDataLoadedState;
  const factory AnalysisState.error({required String errorMessage}) = AnalysisErrorState;

}
