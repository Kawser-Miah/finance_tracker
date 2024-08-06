import 'package:dartz/dartz.dart';
import 'package:finance_tracker/domain/failures/failures.dart';
import 'package:finance_tracker/domain/models/transaction_model.dart';
import 'package:injectable/injectable.dart';
import '../../application/core/category_enum.dart';
import '../repositories/transaction_repository.dart';

@injectable
class TransactionUseCase {
  final TransactionRepository transactionRepository;

  TransactionUseCase({required this.transactionRepository});

  Future<Either<Failure, List<TransactionModel>>> call(String name) {
    CategoryEnum categoryEnum = CategoryEnum.getEnum(name);
    switch (categoryEnum) {
      case CategoryEnum.daily:
        return transactionRepository.getTransactionDataByCurrentDate();
      case CategoryEnum.weekly:
        return transactionRepository.getTransactionDataByCurrentWeek();
      case CategoryEnum.monthly:
        return transactionRepository.getTransactionDataByCurrentMonth();
      default:
        return transactionRepository.getTransactionDataByCurrentDate();
    }
  }
}
