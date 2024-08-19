import 'package:finance_tracker/domain/usecases/category_details_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'category_details_event.dart';
import 'category_details_state.dart';
export 'category_details_state.dart';
export 'category_details_event.dart';

@injectable
class CategoryDetailsBloc
    extends Bloc<CategoryDetailsEvent, CategoryDetailsState> {
  final CategoryDetailsUseCase categoryDetailsUseCase;
  CategoryDetailsBloc({required this.categoryDetailsUseCase})
      : super(const CategoryDetailsState.initial()) {
    on<CategoryDetailsEvent>((event, emit) async {
      emit(const LoadingState());

      final response = await categoryDetailsUseCase.call(event.category);
      response.fold(
          (l) => emit(const CategoryDetailsErrorState(
              errorMessage: 'Do not found any data from this category!')),
          (r) => emit(CategoryDetailsLoadedState(
              transactions: r.transactions!, months: r.months!)));
    });
  }
}
