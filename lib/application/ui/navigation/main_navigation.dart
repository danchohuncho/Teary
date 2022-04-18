
import 'package:teary/application/ui/screen_factory/screen_factory.dart';
import 'package:flutter/cupertino.dart';

abstract class Screens {
  static const main = "/";
}

class MainNavigation {
  final _screenFactory = ScreenFactory();
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
    Screens.main: (_) => _screenFactory.makeMainTabs(),
  };

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return null;
  }
}