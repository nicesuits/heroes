import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import './src/hero_model.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [formDirectives],
)
class AppComponent {
  final title = 'Tutorial of the Heroes';
  Hero hero = Hero(1, 'Windstorm');
}
