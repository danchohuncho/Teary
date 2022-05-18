import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/application/ui/themes/app_colors.dart';

class NotesPageSingleWidget extends StatelessWidget {
  const NotesPageSingleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.08),
          spreadRadius: 4,
          blurRadius: 14,
          offset: Offset(0, 5),
        )]
      ),
      padding: const EdgeInsets.fromLTRB(0, 22, 0, 0),
      margin: const EdgeInsets.fromLTRB(25, 20, 25, 0),
      height: 162,
      width: 320,
      child: Column(
        children: [
          HeaderLineWidget(),
          DescriptionWidget(),
        ],
      ),
    );
  }
}

class HeaderLineWidget extends StatelessWidget {
  const HeaderLineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 320,
      color: AppColors.headerGreyBlock,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: SvgPicture.asset(
              "assets/images/color_tears_icon.svg",
            ),
          ),
          Expanded(
            flex: 6,
            child: Text(
              "Завал на учебе",
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                "assets/images/open_button.svg",
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(24, 14, 0, 0),
          child: Text(
            "Описание",
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: AppColors.textBlack),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(24, 4, 24, 0),
          child: Text(
            "У меня не получается сфокусироваться ни на чем. Такое чувство, что я хуже всех в группе. Просрочила уже 3 дедлайна, боюсь, что меня просто отчислят. Иногда хочется, чтобы это ...",
            style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w400,
                color: Color(0xFF424141)),
          ),
        )
      ],
    );
  }
}
