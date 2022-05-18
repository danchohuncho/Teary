import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/application/ui/widgets/help_page_column/help_page_column_widget.dart';
import 'package:teary/application/ui/widgets/notes_page_column/notes_page_single_widget.dart';
import '../../widgets/calendar.dart';
import '../../widgets/notes_page_column/notes_page_column_widget.dart';

class NotesWidget extends StatelessWidget {
  const NotesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          // expandedHeight: 100,
          pinned: true,
          title: Row(
            children: [
              IconButton(
                onPressed: () => null,
                icon: SvgPicture.asset(
                  'assets/images/menu_icon.svg',
                  height: 100,
                  width: 100,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Записи',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () => null,
                  icon: SvgPicture.asset(
                    'assets/images/calendar_icon.svg',
                    height: 60,
                    width: 60,
                  )),
            ],
          ),
          flexibleSpace: const FlexibleSpaceBar(),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(child: const Calendar(),  color: Colors.white,),
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
    );
  }
}
