import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/application/ui/themes/app_colors.dart';

bool toggle = true;

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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 150.0,
      child: Stack(
        children: [
          AnimatedAlign(
            duration: toggle
                ? Duration(milliseconds: 275)
                : Duration(milliseconds: 875),
            alignment: alignment1,
            curve: toggle ? Curves.easeIn : Curves.elasticOut,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 275),
              curve: toggle ? Curves.easeIn : Curves.easeOut,
              height: size1,
              width: size1,
              decoration: BoxDecoration(
                color: AppColors.violet,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: SvgPicture.asset('assets/images/action_tears_icon.svg',
                  color: AppColors.white,
                  height: 5,
                  width: 5,
                  fit: BoxFit.scaleDown),
            ),
          ),
          AnimatedAlign(
            duration: toggle
                ? Duration(milliseconds: 275)
                : Duration(milliseconds: 875),
            alignment: alignment2,
            curve: toggle ? Curves.easeIn : Curves.elasticOut,
            child: AnimatedContainer(
                duration: Duration(milliseconds: 275),
                curve: toggle ? Curves.easeIn : Curves.easeOut,
                height: size2,
                width: size2,
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: SvgPicture.asset(
                  'assets/images/action_notes_icon.svg',
                  color: AppColors.white,
                  height: 5,
                  width: 5,
                  fit: BoxFit.scaleDown,
                )
            ),
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
                            alignment1 = Alignment(-0.3, -0.7);
                            size1 = 60.0;
                          });
                          Future.delayed(Duration(milliseconds: 200), () {
                            alignment2 = Alignment(0.3, -0.7);
                            size2 = 60.0;
                          });
                        } else {
                          buttonColor = AppColors.green;
                          imgButtonColor = AppColors.white;
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
    );
  }
}
