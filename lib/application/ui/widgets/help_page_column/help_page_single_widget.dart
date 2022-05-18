import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/application/ui/themes/app_colors.dart';
import 'package:teary/resources/app_fonts.dart';

class HelpPageSingleWidget extends StatelessWidget {

  String title;
  String description;
  String img;
  Color backgroundColor;

  HelpPageSingleWidget({Key? key, required this.img, required this.title, required this.description, required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.08),
              spreadRadius: 4,
              blurRadius: 14,
              offset: Offset(0, 5),
            )
          ]),
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      margin: const EdgeInsets.fromLTRB(25, 20, 25, 0),
      //height: 162,
      width: 270,
      child: Column(
        children: [
          Container(
            height: 111,
            padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 10,
                  left: 40,
                  child: _ImageWidget(img: img,),
                ),
                Positioned(
                  top: -4,
                  left: 204,
                  child: _FavoriteWidget(),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            //height: 51,
            width: 270,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 9),
                      _TitleWidget(title: title,),
                      SizedBox(height: 6),
                      _DescriptionWidget(description: description,),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  String title;

  _TitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.textBlack,
            fontFamily: AppFonts.montserrat,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            height: 1.25,
          ),
        )
      ],
    );
  }
}

class _FavoriteWidget extends StatelessWidget {
  const _FavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 0,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onPressed: () => null,
      icon: SvgPicture.asset(
        "assets/images/heart_icon_empty.svg",
      ),
    );
  }
}

class _DescriptionWidget extends StatelessWidget {

  String description;

  _DescriptionWidget({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        fontSize: 9,
        color: AppColors.textGrey,
        fontFamily: AppFonts.montserrat,
        fontWeight: FontWeight.w400,
        height: 1.22,
      ),
    );
  }
}

class _ImageWidget extends StatelessWidget {
  var img;

  _ImageWidget({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        img,
        height: 94,
        width: 179,
      ),
    );
  }
}
