import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:teary/application/ui/screens/add_new_tears_pages/second_add_new_tears_page.dart';
import 'package:teary/application/ui/themes/app_colors.dart';
import 'package:teary/application/ui/utils/slider_method.dart';
import 'package:teary/resources/strings.dart';
import '../../utils/progress_bar.dart';
import '../../widgets/add_new_tears_pages_widgets/save_and_next_buttons.dart';

class ThirdAddNewTearsPage extends StatelessWidget {
 ThirdAddNewTearsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: GestureDetector(
        onPanUpdate: (details) {
          details.delta.dx < 0 ? null : slider_back(context, SecondAddNewTearsPage());
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Svg('assets/images/circle.svg', size: Size(126.0, 126.0)),
                  fit: BoxFit.none,
                  colorFilter: ColorFilter.mode(AppColors.violet, BlendMode.srcIn),
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
                                      Border.all(color: AppColors.textFieldBorder),
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
                                          color: AppColors.textFieldBorder),
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
                        Navigator.of(context).pushNamed("/");
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