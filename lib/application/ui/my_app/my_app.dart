import 'package:teary/application/ui/navigation/main_navigation.dart';
import 'package:teary/application/ui/themes/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final mainNavigation = MainNavigation();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Teary',
      theme: AppTheme.light,
      // home: AuthWidget(),
      routes: mainNavigation.routes,
/*      routes: {
        '/': (context) => MainTabsScreen(),
        '/add_tears': (context) => FirstAddNewTearsPage(),

      },
      initialRoute: '/',*/
      initialRoute: '/',
      // onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
