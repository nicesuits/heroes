import 'package:angular/angular.dart';

import './src/hero_model.dart';
import './src/mock_heroes.dart';
import './src/hero/hero_component.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [coreDirectives, HeroComponent],
)
class AppComponent {
  final title = 'Tutorial of the Heroes';
  List<Hero> heroes = mockHeroes;
  Hero selected;

  void onSelect(Hero hero) => selected = hero;
}
