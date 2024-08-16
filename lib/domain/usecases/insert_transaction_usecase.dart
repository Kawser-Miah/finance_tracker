import 'package:finance_tracker/domain/models/transaction_model.dart';
import 'package:finance_tracker/domain/repositories/insert_transaction_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class InsertTransactionDataUseCase {
  final InsertTransactionRepository insertTransactionRepository;

  InsertTransactionDataUseCase({required this.insertTransactionRepository});

  Future<void> callForInsert(TransactionModel transaction) async {
    return await insertTransactionRepository.insertTransaction(transaction);
  }
}
