import 'package:flutter/foundation.dart' as found;
import 'package:flutterpokemon/model/status/enum_property.dart';

enum ScreenStatus {
  SPLASH,
  ABOUT,
  SEARCH,
  DETAIL,
  POKEMON_LIST
}

class ScreenStatusProperty extends EnumProperty<ScreenStatus> {

  Map<ScreenStatus, String> _routeMap = {
    ScreenStatus.SPLASH: "/",
    ScreenStatus.ABOUT: "/about",
    ScreenStatus.SEARCH: "/search",
    ScreenStatus.DETAIL: "/detail",
    ScreenStatus.POKEMON_LIST: "/pokemon_list"
  };


  String getRouteByStatus(ScreenStatus status){
    return _routeMap[status];
  }

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
