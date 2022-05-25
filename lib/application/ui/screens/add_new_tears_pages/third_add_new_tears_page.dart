import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:teary/application/ui/themes/app_colors.dart';
import 'package:teary/resources/strings.dart';
import '../../utils/progress_bar.dart';
import '../../widgets/add_new_tears_pages_widgets/save_and_next_buttons.dart';

class ThirdAddNewTearsPage extends StatelessWidget {
  const ThirdAddNewTearsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Svg('assets/images/circle.svg',
                color: AppColors.violet, size: Size(126.0, 126.0)),
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
                      color: AppColors.statusBarGrey,
                    ),
                    MyProgressBar(
                      color: AppColors.statusBarGrey,
                    ),
                    MyProgressBar(
                      color: AppColors.statusBarBlack,
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(15, 45, 15, 0),
                  height: 208,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 193,
                        height: 44,
                        child: Text(
                          thirdTitlePage,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            border:
                                Border.all(color: AppColors.textfieldStroke),
                            color: AppColors.white),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      )
                    ],
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(15, 29, 0, 0),
                width: 290,
                child: Text(
                  thirdAnswerPage,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15.0, 13.0, 15.0, 0),
                width: MediaQuery.of(context).size.width,
                height: 210,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            width: MediaQuery.of(context).size.width,
                            height: 192,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                    color: AppColors.textfieldStroke),
                                color: AppColors.white),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
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
