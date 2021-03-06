import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:teary/application/ui/screens/auth_screens/register_second_screen.dart';
import 'package:teary/application/ui/screens/main_tabs/main_tabs_view_model.dart';

class ScreenFactory {
  Widget makeMainTabs() => ChangeNotifierProvider(
        create: (_) => MainTabsViewModel(),
        child: const RegisterSecondScreen(),
      );

}
