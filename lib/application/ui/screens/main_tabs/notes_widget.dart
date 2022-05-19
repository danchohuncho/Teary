import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/application/ui/themes/app_colors.dart';
import '../../widgets/calendar.dart';
import '../../widgets/notes_page_column/notes_page_column_widget.dart';

class NotesWidget extends StatelessWidget {
  const NotesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // expandedHeight: 100,
            pinned: true,
            centerTitle: true,
            leading: IconButton(
              onPressed: () => null,
              icon: SvgPicture.asset(
                'assets/images/menu_icon.svg',
                height: 36,
                width: 36,
              ),
            ),
            title: Text(
              'Записи',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
            ),
            actions: [IconButton(
                onPressed: () => null,
                icon: SvgPicture.asset(
                  'assets/images/calendar_icon.svg',
                  height: 48,
                  width: 48,
                )),],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              child: const Calendar(),
              color: AppColors.white,
            ),
            NotesPageColumnWidget.single(),
/*          Container(color: Colors.blue, height: 150.0),
            Container(color: Colors.green, height: 150.0),
            Container(color: Colors.red, height: 150.0),
            Container(color: Colors.blue, height: 150.0),
            Container(color: Colors.indigo, height: 150.0),
            Container(color: Colors.cyan, height: 150.0),
            Container(color: Colors.grey, height: 150.0),*/
          ]))
        ],
      ),
    );
  }
}
