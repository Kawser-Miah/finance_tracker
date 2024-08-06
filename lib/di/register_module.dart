import 'package:injectable/injectable.dart';
import '../data/datasources/db/finance_tracker_db.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<FinanceTrackerDB> get db =>
      $FloorFinanceTrackerDB.databaseBuilder('finance_tracker.db').build();
}
