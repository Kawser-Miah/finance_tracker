import 'package:finance_tracker/domain/usecases/home_page_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/models/total_balance.dart';
import 'home_page_event.dart';
import 'home_page_state.dart';

export 'home_page_event.dart';
export 'home_page_state.dart';

@injectable
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final HomePageUseCase homePageUseCase;
  HomePageBloc({required this.homePageUseCase})
      : super(HomePageState.loaded(
            totalBalance: TotalBalance(
                totalExpense: 0,
                totalIncome: 0,
                bestExpense:
                    BestExpense(category: "category", total_expense: 0),
                savingsLastMonth: 0))) {
    on<HomePageEvent>((event, emit) async {
      final response = await homePageUseCase.call();
      response.fold(
          (l) => emit(HomePageLoadedState(
              totalBalance: TotalBalance(
                  totalExpense: 0,
                  totalIncome: 0,
                  bestExpense:
                      BestExpense(category: 'category', total_expense: 0),
                  savingsLastMonth: 0))),
          (r) => emit(HomePageLoadedState(totalBalance: r)));
    });
  }
}
