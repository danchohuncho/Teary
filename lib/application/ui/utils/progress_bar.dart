import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyProgressBar extends StatelessWidget {
  var color;

  MyProgressBar({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          height: 20,
          width: MediaQuery.of(context).size.width / 3.2,
          padding: EdgeInsets.fromLTRB(0, 0, 13, 0),
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width / 3,
          ),
          child: SvgPicture.asset(
            'assets/images/line.svg',
            color: color,
          )),
    );
  }
}
