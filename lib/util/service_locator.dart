import 'package:flutterpokemon/model/status/pokemon_type.dart';
import 'package:flutterpokemon/model/status/screen.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

void setUpLocator(){
  serviceLocator.registerLazySingleton(() => ScreenStatusProperty());
  serviceLocator.registerLazySingleton(() => PokemonTypeStatusProperty());
}