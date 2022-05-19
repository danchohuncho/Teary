import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/application/ui/widgets/help_page_column/help_page_column_widget.dart';

class HelpPageWidget extends StatelessWidget {
  const HelpPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 2,
            pinned: true,
            centerTitle: true,
            leading: IconButton(
                onPressed: () => null,
                icon: SvgPicture.asset(
                  'assets/images/menu_icon.svg',
                  height: 36,
                  width: 36,
                )),
            title: Text(
              'Помощь',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            HelpPageColumnWidget.single(),
          ]))
        ],
      ),
    );
  }
}
