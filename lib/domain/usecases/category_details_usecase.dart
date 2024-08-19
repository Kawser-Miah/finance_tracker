import 'package:dartz/dartz.dart';
import 'package:finance_tracker/domain/failures/failures.dart';
import 'package:finance_tracker/domain/models/transaction_by_month_model.dart';
import 'package:finance_tracker/domain/repositories/category_details_repository.dart';
import 'package:injectable/injectable.dart';

import '../../utils/strings.dart';

@injectable
class CategoryDetailsUseCase {
  final CategoryDetailsRepository categoryDetailsRepository;

  CategoryDetailsUseCase({required this.categoryDetailsRepository});
  Future<Either<Failure, TransactionByMonthModel>> call(String category) async {
    if (category == Strings.addOrOthers) {
      category = Strings.others;
    }

    return await categoryDetailsRepository.getTransactionGroupByMonth(category);
  }
}
