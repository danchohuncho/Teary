import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/application/ui/widgets/helppage_column/helppage_column_widget.dart';

class HelpPageWidget extends StatelessWidget {
  const HelpPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 0,
          pinned: true,
          title: Row(
            children: [
              Flexible(
                flex: 1,
                child: IconButton(
                  onPressed: () => null,
                  icon: SvgPicture.asset(
                    'assets/images/menu_icon.svg',
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              const Flexible(
                flex: 3,
                child: Center(
                  child: Text(
                    'Помощь',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          HelpPageColumnWidget.single(),
          Container(color: Colors.red, height: 150.0),
          Container(color: Colors.green, height: 150.0),
          Container(color: Colors.red, height: 150.0),
          Container(color: Colors.blue, height: 150.0),
        ]))
      ],
    );
  }
}
