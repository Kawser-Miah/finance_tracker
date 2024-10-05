import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/usecases/category_usecase.dart';
import 'category_event.dart';
import 'category_state.dart';

export 'category_event.dart';
export 'category_state.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryUseCase categoryUseCase;
  CategoryBloc({required this.categoryUseCase})
      : super(const CategoryState.initial()) {
    on<CategoryRequestEvent>((event, emit) async {
      final result = await categoryUseCase.call();
      emit(CategoryLoadedState(categories: result));
    });
  }
}
