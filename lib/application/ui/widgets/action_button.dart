import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/application/ui/themes/app_colors.dart';

import '../../../resources/strings.dart';

bool toggle = true;
double blurRatio = 0.001;
double opacityRatio = 0.0;

class ActionButton extends StatefulWidget {
  const ActionButton({Key? key}) : super(key: key);

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 350),
        reverseDuration: Duration(milliseconds: 275));

    _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeIn);

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  Alignment alignment1 = Alignment.bottomCenter;
  Alignment alignment2 = Alignment.bottomCenter;
  double size1 = 50.0;
  double size2 = 50.0;
  var buttonColor = AppColors.green;
  var imgButtonColor = AppColors.white;
  bool visibilityTag = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.black.withOpacity(opacityRatio),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 34),
          height: 200,
          width: 200,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blurRatio, sigmaY: blurRatio),
            child: Stack(
              children: [
                _ActionButtonItem(
                  alignment: alignment1,
                  size: size1,
                  imgSource: 'assets/images/action_tears_icon.svg',
                  label: addTears,
                  color: AppColors.violet,
                  visibility: visibilityTag,
                ),
                _ActionButtonItem(
                  alignment: alignment2,
                  size: size2,
                  imgSource: 'assets/images/action_notes_icon.svg',
                  label: addNotes,
                  color: AppColors.green,
                  visibility: visibilityTag,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Transform.rotate(
                    angle: _animation.value * pi * (3 / 4),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 375),
                      curve: Curves.easeOut,
                      height: toggle ? 70.0 : 60.0,
                      width: toggle ? 70.0 : 60.0,
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(color: imgButtonColor),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: IconButton(
                          splashColor: Colors.black54,
                          splashRadius: 31.0,
                          onPressed: () {
                            setState(() {
                              if (toggle) {
                                toggle = !toggle;
                                _controller.forward();
                                buttonColor = AppColors.white;
                                imgButtonColor = AppColors.green;

                                Future.delayed(Duration(milliseconds: 200), () {
                                  visibilityTag = true;
                                  alignment1 = Alignment(-0.9, -0.3);
                                  size1 = 60.0;
                                  blurRatio = 2;
                                  opacityRatio = 0.4;
                                });
                                Future.delayed(Duration(milliseconds: 200), () {
                                  alignment2 = Alignment(0.9, -0.3);
                                  size2 = 60.0;
                                });
                              } else {
                                visibilityTag = false;
                                buttonColor = AppColors.green;
                                imgButtonColor = AppColors.white;
                                blurRatio = 0.001;
                                opacityRatio = 0.0;
                                toggle = !toggle;
                                _controller.reverse();
                                alignment1 = Alignment.bottomCenter;
                                alignment2 = Alignment.bottomCenter;
                                size1 = size2 = 30.0;
                              }
                            });
                          },
                          icon: Icon(
                            CupertinoIcons.plus,
                            size: 40.0,
                            color: imgButtonColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionButtonItem extends StatelessWidget {
  const _ActionButtonItem({
    Key? key,
    required this.alignment,
    required this.size,
    required this.imgSource,
    required this.label,
    required this.color,
    required this.visibility,
  }) : super(key: key);

  final Alignment alignment;
  final double size;
  final String imgSource;
  final String label;
  final color;
  final visibility;

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
      duration:
          toggle ? Duration(milliseconds: 275) : Duration(milliseconds: 875),
      alignment: alignment,
      curve: toggle ? Curves.easeIn : Curves.elasticOut,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 275),
          curve: toggle ? Curves.easeIn : Curves.easeOut,
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: SvgPicture.asset(imgSource,
              color: AppColors.white, fit: BoxFit.scaleDown),
        ),
        Visibility(
          child: Text(label, style: TextStyle(color: Colors.black)),
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: visibility,
        ),
      ]),
    );
  }
}
