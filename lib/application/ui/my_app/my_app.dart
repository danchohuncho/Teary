

import 'package:flutter/services.dart';
import 'package:teary/application/ui/navigation/main_navigation.dart';
import 'package:teary/application/ui/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:teary/application/ui/widgets/auth/auth_widget.dart';

class MyApp extends StatelessWidget {
  final mainNavigation = MainNavigation();
  MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Teary',
      theme: AppTheme.light,
      home: AuthWidget(),
/*
      routes: mainNavigation.routes,
      onGenerateRoute: mainNavigation.onGenerateRoute,
*/

    ) ;
  }
}