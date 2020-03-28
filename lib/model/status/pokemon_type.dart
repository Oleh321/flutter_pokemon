import 'package:flutterpokemon/model/status/enum_property.dart';
import 'package:flutter/foundation.dart' as found;

enum PokemonTypeStatus {
  BUG,
  DARK,
  DRAGON,
  ELECTRIC,
  FAIRY,
  FIGHT,
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
  @override
  PokemonTypeStatus decodeStatus(String value) {
    if (value == null) {
      return null;
    }
    var status = PokemonTypeStatus.values
        .singleWhere((e) => encodeStatus(e) == value, orElse: () => null);

    return status;
  }

  @override
  String encodeStatus(PokemonTypeStatus status) {
    return found.describeEnum(status);
  }

}