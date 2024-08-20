import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_event.freezed.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.requestForHomePage(String name) = HomePageTransactionDataRequestEvent;
  const factory TransactionEvent.requestForAllTransaction() = TransactionRequestEvent;
  const factory TransactionEvent.requestForAllIncomes() = AllIncomesRequestEvent;
  const factory TransactionEvent.requestForAllExpenses() = AllExpensesRequestEvent;
}
