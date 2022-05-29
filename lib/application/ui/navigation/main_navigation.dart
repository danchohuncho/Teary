import 'package:flutter/material.dart';
import 'package:teary/application/ui/screen_factory/screen_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:teary/application/ui/screens/add_new_tears_pages/first_add_new_tears_page.dart';
import 'package:teary/application/ui/screens/add_new_tears_pages/second_add_new_tears_page.dart';
import 'package:teary/application/ui/screens/add_new_tears_pages/third_add_new_tears_page.dart';

abstract class Screens {
  static const main = "/";
/*  static const addTearsFirstPage = "/addTearsFirstPage";
  static const addTearsSecondPage = "/addTearsSecondPage";
  static const addTearsThirdPage = "/addTearsThirdPage";*/

}

class MainNavigation {
  final _screenFactory = ScreenFactory();

  Map<String, WidgetBuilder> get routes =>
      <String, WidgetBuilder>{
        Screens.main: (_) => _screenFactory.makeMainTabs(),
        "/addTearsFirstPage": (_) => FirstAddNewTearsPage(),
        "/addTearsSecondPage": (_) => SecondAddNewTearsPage(),
        "/addTearsThirdPage": (_) => ThirdAddNewTearsPage(),


      };

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      return Text('null exception screen');
    });
  }
}