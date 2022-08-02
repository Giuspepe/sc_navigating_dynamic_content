import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sc_navigating_dynamic_content/init_dependency_injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void initDependencyInjection() {
  $initGetIt(getIt);
}
