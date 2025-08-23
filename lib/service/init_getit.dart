import 'package:get_it/get_it.dart';
import 'package:mvvm_statemanagements/repository/character_repo.dart';
import 'package:mvvm_statemanagements/service/api_service.dart';
import 'package:mvvm_statemanagements/service/navigation_service.dart';

GetIt getIt = GetIt.instance;

void setUpLocator() {
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
  getIt.registerLazySingleton<ApiService>(() => ApiService());
  getIt.registerLazySingleton<CharacterRepository>(() => CharacterRepository(getIt<ApiService>()));
}