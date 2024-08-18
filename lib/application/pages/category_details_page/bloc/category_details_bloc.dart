import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'category_details_event.dart';
import 'category_details_state.dart';
export 'category_details_state.dart';
export 'category_details_event.dart';

@injectable
class CategoryDetailsBloc extends Bloc<CategoryDetailsEvent, CategoryDetailsState> {
  CategoryDetailsBloc() : super(const CategoryDetailsState.initial()) {
    on<CategoryDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
