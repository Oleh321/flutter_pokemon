import 'package:flutter/widgets.dart';
import 'package:flutterpokemon/model/status/screen.dart';
import 'package:flutterpokemon/util/service_locator.dart';
import 'package:flutterpokemon/view/screen/pokemon_list_screen.dart';
import 'package:flutterpokemon/view/screen/splash_screen.dart';

var property = serviceLocator.get<ScreenStatusProperty>();

String _getRouteName(ScreenStatus status) => property.getRouteByStatus(status);

var applicationRoutes = <String, WidgetBuilder>{
  _getRouteName(ScreenStatus.SPLASH): (context) => SplashScreen(),
  _getRouteName(ScreenStatus.POKEMON_LIST): (context) => PokemonListScreen()

};