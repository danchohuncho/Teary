import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:teary/application/ui/screens/add_new_tears_pages/first_add_new_tears_page.dart';
import 'package:teary/application/ui/screens/main_tabs/main_tabs_view_model.dart';
import 'package:teary/application/ui/screens/main_tabs/notes_widget.dart';
import 'package:teary/application/ui/screens/main_tabs/help_page_widget.dart';

import '../../widgets/action_button.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: FirstAddNewTearsPage());
/*      body: _BodyWidget(),
      floatingActionButton: ActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _NavBarWidget(),
    );*/
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex =
        context.select((MainTabsViewModel vm) => vm.currentTabIndex);
    return IndexedStack(
      index: currentIndex,
      children: const [
        NotesWidget(),
        HelpPageWidget(),
      ],
    );
  }
}

class _NavBarWidget extends StatelessWidget {
  const _NavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex =
        context.select((MainTabsViewModel vm) => vm.currentTabIndex);
    final model = context.read<MainTabsViewModel>();
    final theme = Theme.of(context).bottomNavigationBarTheme;
    final buttons = [
      _BottomNavigationBarItemFactory("assets/images/notes_icon.svg", "Записи"),
      _BottomNavigationBarItemFactory("assets/images/help_icon.svg", "Помощь"),
    ]
        .asMap()
        .map((index, value) {
          return MapEntry(index, value.build(index, currentIndex, theme));
        })
        .values
        .toList();

    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: currentIndex,
      onTap: model.setCurrentTabIndex,
      items: buttons,
    );
  }
}

class _BottomNavigationBarItemFactory {
  final String iconName;
  final String tooltip;

  _BottomNavigationBarItemFactory(this.iconName, this.tooltip);

  BottomNavigationBarItem build(
    int index,
    int currentIndex,
    BottomNavigationBarThemeData theme,
  ) {
    final color = index == currentIndex
        ? theme.selectedItemColor
        : theme.unselectedItemColor;
    return BottomNavigationBarItem(
        label: "",
        icon: SvgPicture.asset(
          iconName,
          color: color,
          semanticsLabel: 'SVG From asset folder',
        ),
        tooltip: tooltip);
  }
}
