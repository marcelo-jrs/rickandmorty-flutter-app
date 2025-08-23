import 'package:get_it/get_it.dart';
import 'package:rickandmorty/repository/character_repo.dart';
import 'package:rickandmorty/service/api_service.dart';
import 'package:rickandmorty/service/navigation_service.dart';

GetIt getIt = GetIt.instance;

void setUpLocator() {
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
  getIt.registerLazySingleton<ApiService>(() => ApiService());
  getIt.registerLazySingleton<CharacterRepository>(() => CharacterRepository(getIt<ApiService>()));
}