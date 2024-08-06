import 'package:finance_tracker/di/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: false,
asExtension: true
)

Future<void> configureDependencies() async => getIt.init();