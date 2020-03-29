import 'package:flutter/material.dart';
import 'package:flutterpokemon/model/status/enum_property.dart';
import 'package:flutter/foundation.dart' as found;

enum PokemonTypeStatus {
  BUG,
  DARK,
  DRAGON,
  ELECTRIC,
  FAIRY,
  FIGHTING,
  FIRE,
  FLYING,
  GHOST,
  GRASS,
  GROUND,
  ICE,
  NORMAL,
  POISON,
  PSYCHIC,
  ROCK,
  STEEL,
  WATER
}

class ScreenStatusProperty extends EnumProperty<PokemonTypeStatus> {

  Map<PokemonTypeStatus, Color> _primaryColorMap = {
    PokemonTypeStatus.BUG: Color(0xff4bcfb2),
    PokemonTypeStatus.DARK: Color(0xff9bbfbf),
    PokemonTypeStatus.DRAGON: Color(0xff094be8),
    PokemonTypeStatus.ELECTRIC: Color(0xffe8dd09),
    PokemonTypeStatus.FAIRY: Color(0xff784abd),
    PokemonTypeStatus.FIGHTING: Color(0xff72ab22),
    PokemonTypeStatus.FIRE: Color(0xfffc6b6d),
    PokemonTypeStatus.FLYING: Color(0xFF429BC0),
    PokemonTypeStatus.GHOST: Color(0xff42206E),
    PokemonTypeStatus.GRASS: Color(0xff68c724),
    PokemonTypeStatus.GROUND: Color(0xffcf9b48),
    PokemonTypeStatus.ICE: Color(0xff1bcfe3),
    PokemonTypeStatus.NORMAL: Color(0xff9AB8AC),
    PokemonTypeStatus.POISON: Color(0xff094be8),
    PokemonTypeStatus.PSYCHIC: Color(0xffbc6ee0),
    PokemonTypeStatus.ROCK: Color(0xffbbc7d1),
    PokemonTypeStatus.STEEL: Color(0xffd5e1eb),
    PokemonTypeStatus.WATER: Color(0xFF429BED),
  };

  Color getColorByStatus(PokemonTypeStatus status) {
    return _primaryColorMap[status];
  }

  String getImagePathByStatus(PokemonTypeStatus status){
    return "assets/images/type/${encodeStatus(status)}.png";
  }

  @override
  PokemonTypeStatus decodeStatus(String value) {
    if (value == null) {
      return null;
    }
    var status = PokemonTypeStatus.values.singleWhere(
        (e) => encodeStatus(e).toLowerCase() == value.toLowerCase(),
        orElse: () => null);

    return status;
  }

  @override
  String encodeStatus(PokemonTypeStatus status) {
    return found.describeEnum(status);
  }
}
