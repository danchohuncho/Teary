import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:teary/application/ui/screens/add_new_tears_pages/second_add_new_tears_page.dart';
import 'package:teary/application/ui/themes/app_colors.dart';
import 'package:teary/application/ui/utils/slider_method.dart';
import 'package:teary/resources/strings.dart';
import '../../utils/progress_bar.dart';
import '../../widgets/add_new_tears_pages_widgets/save_and_next_buttons.dart';

class FirstAddNewTearsPage extends StatelessWidget {
  FirstAddNewTearsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: GestureDetector(
        onPanUpdate: (details) {
          details.delta.dx < 0
              ? slider_forward(context, SecondAddNewTearsPage())
              : null;
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      Svg('assets/images/circle.svg', size: Size(126.0, 126.0)),
                  fit: BoxFit.none,
                  colorFilter:
                      ColorFilter.mode(AppColors.orange, BlendMode.srcIn),
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
                        width: 210.0,
                        height: 168.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              firstTitlePage,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 24, 0, 10),
                                child: Text(
                                  reason,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )),
                            Container(
                              height: 30,
                              width: 193,
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                      color: AppColors.textfieldStroke)),
                              child: TextField(
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                          ],
                        )),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.8,
                        height: 51.0,
                        margin: EdgeInsets.fromLTRB(0, 26, 0, 0),
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
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.0, 32.0, 15.0, 0),
                      width: MediaQuery.of(context).size.width,
                      height: 227,
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text(
                                      description,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    )),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  width: MediaQuery.of(context).size.width,
                                  height: 192,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color: AppColors.white,
                                      border: Border.all(
                                          color: AppColors.textfieldStroke)),
                                  child: TextField(
                                    keyboardType: TextInputType.multiline,
                                    maxLines: null,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    //BUTTON SAVE AND NEXT
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 90,
            child: Stack(
              alignment: Alignment.bottomCenter,
              fit: StackFit.passthrough,
              children: <Widget>[
                Positioned(
                  bottom: 36,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/');
                      },
                      child: SaveButton()),
                ),
                Positioned(
                  right: 36,
                  bottom: 36,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/addTearsSecondPage");
                      },
                      child: const NextButton()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
