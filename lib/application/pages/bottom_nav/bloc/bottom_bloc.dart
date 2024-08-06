import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'bottom_state.dart';
import 'bottom_event.dart';
export 'bottom_state.dart';
export 'bottom_event.dart';

@injectable
class BottomBloc extends Bloc<BottomEvent, BottomState> {
  BottomBloc() : super(const BottomState.currentTab(0)) {
    on<ChangeBottomEvent>((event, emit) {
      emit(ChangeBottomState(event.tabIndex));
    });
  }
}
