import 'dart:async';

import './hero_model.dart';
import './mock_heroes.dart';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;
}
