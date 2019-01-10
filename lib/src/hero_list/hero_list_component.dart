import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../hero_model.dart';
import '../hero_service.dart';
import '../route_paths.dart';

@Component(
    selector: 'my-hero-list',
    styleUrls: ['hero_list_component.css'],
    templateUrl: 'hero_list_component.html',
    directives: [coreDirectives],
    pipes: [commonPipes])
class HeroListComponent implements OnInit {
  final HeroService _heroService;
  final Router _router;
  List<Hero> heroes;
  Hero selected;

  HeroListComponent(this._heroService, this._router);

  Future<void> _getHeroes() async {
    heroes = await _heroService.getAll();
  }

  void ngOnInit() => _getHeroes();

  void onSelect(Hero hero) => selected = hero;

  String _heroUrl(int id) =>
      RoutePaths.hero.toUrl(parameters: {idParam: '$id'});

  Future<NavigationResult> gotoDetail() =>
      _router.navigate(_heroUrl(selected.id));
}
