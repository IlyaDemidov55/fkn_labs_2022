import 'package:dio/dio.dart';

import 'heroes.dart';

const publicKey = "56a18e4f1f32ab050045d168b72afe21";
const hash = "52022bb148f1779b11cd2717d365ce72";

class MarvelApi {
  Future<List<int>> getIdHeroes(int count) async {
    List<int> idHeroes = [];
    String url = "https://gateway.marvel.com:443/v1/public/characters?";

    try {
      Response response = await Dio().get(url, queryParameters: {
        "ts": 0,
        "apikey": publicKey,
        "hash": hash,
        "limit": count
      });

      for (var dataHero in response.data["data"]["results"]) {
        idHeroes.add(dataHero["id"]);
      }

      return idHeroes;
    } catch (e) {
      throw Exception("Не удалось получить список героев");
    }
  }

  Future<Heroes> getInfoHeroes(int id) async {
    String url =
        "https://gateway.marvel.com:443/v1/public/characters/${id.toString()}?";

    try {
      Response response = await Dio().get(url,
          queryParameters: {"ts": 0, "apikey": publicKey, "hash": hash});

      return Heroes.fromJson(response.data["data"]["results"][0]);
    } catch (e) {
      throw Exception("Не удалось загрузить героя");
    }
  }
}
