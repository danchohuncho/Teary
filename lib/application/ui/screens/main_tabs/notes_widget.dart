import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/calendar.dart';

class NotesWidget extends StatelessWidget {
  const NotesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          // expandedHeight: 100,
          pinned: true,
/*          bottom: PreferredSize(                       // Add this code
            preferredSize: Size.fromHeight(00.0),      // Add this code
            child: Text(''),                           // Add this code
          ),*/
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
          const Calendar(),

          Container(color: Colors.red, height: 150.0),
          Container(color: Colors.green, height: 150.0),
          Container(color: Colors.red, height: 150.0),
          Container(color: Colors.blue, height: 150.0),
          Container(color: Colors.indigo, height: 150.0),
          Container(color: Colors.cyan, height: 150.0),
          Container(color: Colors.grey, height: 150.0),
        ]))
      ],
    );
  }
}
