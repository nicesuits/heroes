import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import './src/hero_model.dart';
import './src/mock_heroes.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [coreDirectives, formDirectives],
)
class AppComponent {
  final title = 'Tutorial of the Heroes';
  List<Hero> heroes = mockHeroes;
}
