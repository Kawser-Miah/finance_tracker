// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:finance_tracker/application/pages/bottom_nav/bloc/bottom_bloc.dart'
    as _i854;
import 'package:finance_tracker/application/pages/category_page/bloc/category_bloc.dart'
    as _i782;
import 'package:finance_tracker/application/pages/data_insert_page/bloc/income_expense_add_bloc.dart'
    as _i559;
import 'package:finance_tracker/application/pages/home_page/bloc/home_page_bloc.dart'
    as _i54;
import 'package:finance_tracker/application/pages/transaction_page/bloc/transaction_bloc.dart'
    as _i709;
import 'package:finance_tracker/data/datasources/db/finance_tracker_db.dart'
    as _i273;
import 'package:finance_tracker/data/repositories/category_repository_iml.dart'
    as _i25;
import 'package:finance_tracker/data/repositories/home_page_repository_iml.dart'
    as _i256;
import 'package:finance_tracker/data/repositories/insert_transaction_repository_iml.dart'
    as _i635;
import 'package:finance_tracker/data/repositories/transaction_repository_iml.dart'
    as _i338;
import 'package:finance_tracker/di/register_module.dart' as _i827;
import 'package:finance_tracker/domain/repositories/category_repository.dart'
    as _i192;
import 'package:finance_tracker/domain/repositories/home_page_repository.dart'
    as _i856;
import 'package:finance_tracker/domain/repositories/insert_transaction_repository.dart'
    as _i52;
import 'package:finance_tracker/domain/repositories/transaction_repository.dart'
    as _i163;
import 'package:finance_tracker/domain/usecases/category_usecase.dart' as _i347;
import 'package:finance_tracker/domain/usecases/home_page_usecase.dart' as _i89;
import 'package:finance_tracker/domain/usecases/insert_transaction_usecase.dart'
    as _i635;
import 'package:finance_tracker/domain/usecases/transaction_usecase.dart'
    as _i815;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i854.BottomBloc>(() => _i854.BottomBloc());
    await gh.factoryAsync<_i273.FinanceTrackerDB>(
      () => registerModule.db,
      preResolve: true,
    );
    gh.lazySingleton<_i192.CategoryRepository>(
        () => _i25.CategoryRepositoryIml());
    gh.lazySingleton<_i856.HomePageRepository>(
        () => _i256.HomePageRepositoryIml(db: gh<_i273.FinanceTrackerDB>()));
    gh.lazySingleton<_i52.InsertTransactionRepository>(() =>
        _i635.InsertTransactionRepositoryIml(gh<_i273.FinanceTrackerDB>()));
    gh.lazySingleton<_i163.TransactionRepository>(
        () => _i338.TransactionRepositoryIml(db: gh<_i273.FinanceTrackerDB>()));
    gh.factory<_i89.HomePageUseCase>(() => _i89.HomePageUseCase(
        homePageRepository: gh<_i856.HomePageRepository>()));
    gh.factory<_i347.CategoryUseCase>(() => _i347.CategoryUseCase(
        categoryRepository: gh<_i192.CategoryRepository>()));
    gh.factory<_i782.CategoryBloc>(
        () => _i782.CategoryBloc(categoryUseCase: gh<_i347.CategoryUseCase>()));
    gh.factory<_i815.TransactionUseCase>(() => _i815.TransactionUseCase(
        transactionRepository: gh<_i163.TransactionRepository>()));
    gh.factory<_i54.HomePageBloc>(
        () => _i54.HomePageBloc(homePageUseCase: gh<_i89.HomePageUseCase>()));
    gh.factory<_i635.InsertTransactionDataUseCase>(() =>
        _i635.InsertTransactionDataUseCase(
            insertTransactionRepository:
                gh<_i52.InsertTransactionRepository>()));
    gh.factory<_i709.TransactionBloc>(() => _i709.TransactionBloc(
        transactionUseCase: gh<_i815.TransactionUseCase>()));
    gh.factory<_i559.IncomeExpenseAddBloc>(() => _i559.IncomeExpenseAddBloc(
        insertTransactionDataUseCase:
            gh<_i635.InsertTransactionDataUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i827.RegisterModule {}
