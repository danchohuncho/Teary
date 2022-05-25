import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:teary/application/ui/themes/app_colors.dart';
import 'package:teary/resources/strings.dart';
import '../../utils/progress_bar.dart';
import '../../widgets/add_new_tears_pages_widgets/save_and_next_buttons.dart';

class FirstAddNewTearsPage extends StatelessWidget {
  const FirstAddNewTearsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Svg('assets/images/circle.svg',
                color: AppColors.orange, size: Size(126.0, 126.0)),
            fit: BoxFit.none,
            alignment: Alignment.topRight,
          ),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    MyProgressBar(
                      color: AppColors.statusBarBlack,
                    ),
                    MyProgressBar(
                      color: AppColors.statusBarGrey,
                    ),
                    MyProgressBar(
                      color: AppColors.statusBarGrey,
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(15.0, 45.0, 0, 0),
                  height: 144.0,
                  width: 193.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        firstTitlePage,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 28, 0, 8),
                          child: Text(
                            reason,
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )),
                      Container(
                        height: 30,
                        width: 193,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            border:
                                Border.all(color: AppColors.textfieldStroke)),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                    ],
                  )),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.8,
                  height: 51.0,
                  margin: EdgeInsets.fromLTRB(0, 28, 0, 0),
                  decoration: BoxDecoration(
                    color: AppColors.yellowTeary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    firstAnswerPage,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15.0, 13.0, 0, 0),
                width: 290,
                height: 210,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                description,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            width: 290,
                            height: 192,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.textfieldStroke)),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              //BUTTON SAVE AND NEXT

              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  fit: StackFit.passthrough,
                  children: <Widget>[
                    Positioned(
                      bottom: 16,
                      child: SaveButton(),
                    ),
                    Positioned(
                      right: 15,
                      bottom: 16,
                      child: NextButton(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
