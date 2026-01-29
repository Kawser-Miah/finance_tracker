import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/models/entity_model/time_series_total_model.dart';
import '../../../../domain/usecases/analysis_use_case.dart';

part 'analysis_bloc.freezed.dart';
part 'analysis_event.dart';
part 'analysis_state.dart';

@injectable
class AnalysisBloc extends Bloc<AnalysisEvent, AnalysisState> {
  final AnalysisUseCase analysisUseCase;
  AnalysisBloc(this.analysisUseCase) : super(const AnalysisState.initial()) {
    on<AnalysisEvent>((event, emit) async {
      emit(const AnalysisState.loading());
      try {
        final result = await analysisUseCase.call(event.name);
        result.fold(
          (l) => emit(
            const AnalysisState.error(errorMessage: "Data Not Found...!"),
          ),
          (r) => emit(AnalysisState.dataLoaded(data: r)),
        );
      } catch (e) {
        emit(const AnalysisState.error(errorMessage: "Something went wrong"));
      }
    });
  }
}
