import 'package:angular/angular.dart';

import './src/hero_model.dart';
import './src/mock_heroes.dart';
import './src/hero_service.dart';
import './src/hero/hero_component.dart';

@Component(
    selector: 'my-app',
    styleUrls: ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: [coreDirectives, HeroComponent],
    providers: [ClassProvider(HeroService)])
class AppComponent implements OnInit {
  final title = 'Tutorial of the Heroes';
  final HeroService _heroService;
  List<Hero> heroes;
  Hero selected;

  AppComponent(this._heroService);

  void onSelect(Hero hero) => selected = hero;

  Future<void> _getHeroes() async {
    heroes = await _heroService.getAll();
  }

  void ngOnInit() => _getHeroes();
}
