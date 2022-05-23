import 'package:flutter/material.dart';
import 'package:teary/application/ui/themes/app_colors.dart';
import 'package:teary/application/ui/widgets/help_page_column/help_page_single_widget.dart';
import 'package:teary/resources/strings.dart';

abstract class HelpPageColumnWidget extends StatelessWidget {
  const HelpPageColumnWidget({Key? key}) : super(key: key);

  factory HelpPageColumnWidget.single({Key? key}) =>
      _HomePageColumnSingleWidget(
        key: key,
      );
}

class _HomePageColumnSingleWidget extends HelpPageColumnWidget {
  const _HomePageColumnSingleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HelpPageSingleWidget(
          img: "assets/images/notebook_illustration.png",
          title: title1,
          description: description1,
          backgroundColor: AppColors.violetBackground,
        ),
        HelpPageSingleWidget(
          img: "assets/images/breathing_illustration.png",
          title: title2,
          description: description2,
          backgroundColor: AppColors.yellowTeary,
        ),
      ],
    );
  }
}
