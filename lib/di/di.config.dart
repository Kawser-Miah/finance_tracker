// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:finance_tracker/application/pages/bottom_nav/bloc/bottom_bloc.dart'
    as _i3;
import 'package:finance_tracker/application/pages/transaction_page/bloc/transaction_bloc.dart'
    as _i8;
import 'package:finance_tracker/data/datasources/db/finance_tracker_db.dart'
    as _i4;
import 'package:finance_tracker/data/repositories/transaction_repository_iml.dart'
    as _i6;
import 'package:finance_tracker/di/register_module.dart' as _i9;
import 'package:finance_tracker/domain/repositories/transaction_repository.dart'
    as _i5;
import 'package:finance_tracker/domain/usecases/transaction_usecase.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.BottomBloc>(() => _i3.BottomBloc());
    await gh.factoryAsync<_i4.FinanceTrackerDB>(
      () => registerModule.db,
      preResolve: true,
    );
    gh.lazySingleton<_i5.TransactionRepository>(
        () => _i6.TransactionRepositoryIml(db: gh<_i4.FinanceTrackerDB>()));
    gh.factory<_i7.TransactionUseCase>(() => _i7.TransactionUseCase(
        transactionRepository: gh<_i5.TransactionRepository>()));
    gh.factory<_i8.TransactionBloc>(() =>
        _i8.TransactionBloc(transactionUseCase: gh<_i7.TransactionUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
