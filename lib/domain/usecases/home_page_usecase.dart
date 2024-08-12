import 'package:dartz/dartz.dart';
import 'package:finance_tracker/domain/failures/failures.dart';
import 'package:finance_tracker/domain/models/total_balance.dart';
import 'package:finance_tracker/domain/repositories/home_page_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomePageUseCase {
  final HomePageRepository homePageRepository;
  HomePageUseCase({required this.homePageRepository});

  Future<Either<Failure, TotalBalance>> call() =>
      homePageRepository.getIncomeExpenseData();
}
