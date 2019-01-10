import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import './hero_model.dart';

class HeroService {
  static const _heroesUrl = 'api/heroes';
  final Client _http;

  HeroService(this._http);

  Future<List<Hero>> getAll() async {
    try {
      final response = await _http.get(_heroesUrl);
      final heroes = (_extractData(response) as List)
          .map((json) => Hero.fromJson(json))
          .toList();
      return heroes;
    } catch (e) {
      throw _handleError(e);
    }
  }

  dynamic _extractData(Response response) => json.decode(response.body)['data'];

  Exception _handleError(dynamic e) {
    print(e);
    return Exception('Server error; cause: $e');
  }

  Future<Hero> get(int id) async =>
      (await getAll()).firstWhere((hero) => hero.id == id);
}
