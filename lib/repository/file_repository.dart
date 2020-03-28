import 'package:flutter/services.dart';
import 'package:flutterpokemon/model/file/pokemon_file_model.dart';

class FileRepository {

  static const String POKEMON_LIST_FILE_PATH = "assets/data/pokemon_list.json";


  Future<List<PokemonFileModel>> getPokemonListFromFile() async {
    var resultString = await rootBundle.loadString(POKEMON_LIST_FILE_PATH);
    return pokemonFileListFromJson(resultString);
  }



}