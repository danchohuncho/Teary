import 'package:provider/provider.dart';
import 'package:teary/application/ui/screens/auth_screens/login_screen.dart';
import 'package:teary/application/ui/screens/main_tabs/main_tabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:teary/application/ui/screens/main_tabs/main_tabs_view_model.dart';

class ScreenFactory {
  Widget makeMainTabs() => ChangeNotifierProvider(
        create: (_) => MainTabsViewModel(),
        child: const MainTabsScreen(),
      );

}
