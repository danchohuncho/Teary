import 'package:flutter/material.dart';
import 'package:teary/application/ui/screen_factory/screen_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:teary/application/ui/screens/add_new_notes_pages/first_tears_page.dart';
import 'package:teary/application/ui/screens/add_new_tears_pages/first_add_new_tears_page.dart';
import 'package:teary/application/ui/screens/add_new_tears_pages/second_add_new_tears_page.dart';
import 'package:teary/application/ui/screens/add_new_tears_pages/third_add_new_tears_page.dart';
import 'package:teary/application/ui/screens/auth_screens/login_screen.dart';

import '../screens/main_tabs/main_tabs_screen.dart';

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
        "/mainTabsScreen": (_) => const MainTabsScreen(),
        "/addTearsFirstPage": (_) => FirstAddNewTearsPage(),
        "/addTearsSecondPage": (_) => SecondAddNewTearsPage(),
        "/addTearsThirdPage": (_) => ThirdAddNewTearsPage(),
        "/firstTearsPage": (_) => FirstTearsPage(),
        "/loginScreen": (_) => LoginScreen(),


      };

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      return Text('null exception screen');
    });
  }
}