import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:teary/application/ui/screens/main_tabs/main_tabs_view_model.dart';
import 'package:teary/application/ui/screens/main_tabs/notes_widget.dart';
import 'package:teary/application/ui/screens/main_tabs/help_page_widget.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _BodyWidget(),
      floatingActionButton: _buildNavigateButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _NavBarWidget(),
    );
  }
}


class _buildNavigateButton extends StatelessWidget {
  const _buildNavigateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      child: Container(
        /*child: SpeedDial(
          icon: CupertinoIcons.plus,
          activeIcon: CupertinoIcons.xmark,
          backgroundColor: AppColors.green,
          foregroundColor: AppColors.white,
          activeBackgroundColor: AppColors.white,
          activeForegroundColor: AppColors.green,
          iconTheme: IconThemeData(size: 30,),

          // backgroundColor: AppColors.green,
          // activeBackgroundColor: AppColors.white,
          // animatedIcon: AnimatedIcons.menu_close,
          children: [
            SpeedDialChild(child: SvgPicture.asset(
              'assets/images/teaars_icon.svg', color: Colors.white,),
              label: 'Слезы',
              backgroundColor: Color(0xFF8F47B7),
            ),
            SpeedDialChild(child: SvgPicture.asset(
              'assets/images/nootes_icon.svg', color: Colors.white,),
              label: 'Запись',
              backgroundColor: Color(0xFF66B749),
            )
          ],
        ),*/
      ),
    );
  }
}
//
//
// class _buildNavigateButton extends StatelessWidget {
//   const _buildNavigateButton({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       width: 60,
//       child: FloatingActionButton(
//         backgroundColor: Color(0xFF8F47B7),
//         child: SvgPicture.asset('assets/images/add_content_icon.svg', semanticsLabel: 'SVG From asset folder'),
//           onPressed: () {
//             print('Pressed');
//           }),
//     );
//   }
// }


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
    final theme = Theme
        .of(context)
        .bottomNavigationBarTheme;
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

  BottomNavigationBarItem build(int index,
      int currentIndex,
      BottomNavigationBarThemeData theme,) {
    final selectedColor = theme.selectedItemColor;
    final unselectedColor = theme.unselectedItemColor;
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

/*class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        Theme.of(context).bottomNavigationBarTheme.backgroundColor ??
            Colors.black;

    return SizedBox(
      height: 50,
      child: ColoredBox(
        color: backgroundColor,
        child: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 49,
              maxWidth: 500,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _Item(
                      imageName: AppImages.notesIcon,
                    ),
                  ),
                  Expanded(
                    child: _Item(
                      imageName: AppImages.helpIcon,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String imageName;

  const _Item({
    Key? key,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(imageName);
  }
}*/
