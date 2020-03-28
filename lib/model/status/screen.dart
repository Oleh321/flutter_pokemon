import 'package:flutter/foundation.dart' as found;
import 'package:flutterpokemon/model/status/enum_property.dart';

enum ScreenStatus {
  SPLASH,
  HOME,
  SEARCH,
  DETAIL,
  POKEMON_LIST
}

class ScreenStatusProperty extends EnumProperty<ScreenStatus> {

  @override
  ScreenStatus decodeStatus(String value) {
    if (value == null) {
      return null;
    }
    var status = ScreenStatus.values
        .singleWhere((e) => encodeStatus(e) == value, orElse: () => null);

    return status;
  }

  @override
  String encodeStatus(ScreenStatus status) {
    return found.describeEnum(status);
  }

}
