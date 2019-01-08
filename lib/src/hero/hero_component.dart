import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import '../hero_model.dart';

@Component(
    selector: 'my-hero',
    styleUrls: ['hero_component.css'],
    templateUrl: 'hero_component.html',
    directives: [coreDirectives, formDirectives])
class HeroComponent {
  @Input()
  Hero hero;
}
