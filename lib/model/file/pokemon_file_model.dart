import 'dart:convert';

List<PokemonFileModel> pokemonFileListFromJson(String str) =>
    List<PokemonFileModel>.from(
        json.decode(str).map((x) => PokemonFileModel.fromJson(x)));

String pokemonFileListToJson(List<PokemonFileModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PokemonFileModel {
  int orderId;
  int nDex;
  String name;
  Types types;
  Abilities abilities;
  Map<String, int> stats;
  String note;
  String tier;
  String image;

  PokemonFileModel({
    this.orderId,
    this.nDex,
    this.name,
    this.types,
    this.abilities,
    this.stats,
    this.note,
    this.tier,
    this.image,
  });

  factory PokemonFileModel.fromJson(Map<String, dynamic> json) => PokemonFileModel(
        orderId: json["orderID"],
        nDex: json["nDex"],
        name: json["name"],
        types: Types.fromJson(json["types"]),
        abilities: Abilities.fromJson(json["abilities"]),
        stats:
            Map.from(json["stats"]).map((k, v) => MapEntry<String, int>(k, v)),
        note: json["note"],
        tier: json["tier"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "orderID": orderId,
        "nDex": nDex,
        "name": name,
        "types": types.toJson(),
        "abilities": abilities.toJson(),
        "stats": Map.from(stats).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "note": note,
        "tier": tier,
        "image": image,
      };
}

class Abilities {
  String ability1;
  String ability2;
  String hiddenAbility;

  Abilities({
    this.ability1,
    this.ability2,
    this.hiddenAbility,
  });

  factory Abilities.fromJson(Map<String, dynamic> json) => Abilities(
        ability1: json["ability 1"],
        ability2: json["ability 2"],
        hiddenAbility: json["hidden ability"],
      );

  Map<String, dynamic> toJson() => {
        "ability 1": ability1,
        "ability 2": ability2,
        "hidden ability": hiddenAbility,
      };
}

class Types {
  String type1;
  String type2;

  Types({
    this.type1,
    this.type2,
  });

  factory Types.fromJson(Map<String, dynamic> json) => Types(
        type1: json["type 1"],
        type2: json["type 2"],
      );

  Map<String, dynamic> toJson() => {
        "type 1": type1,
        "type 2": type2,
      };
}
