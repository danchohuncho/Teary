import 'package:flutter/material.dart';

import '../../../../resources/strings.dart';
import '../../themes/app_colors.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 134.0,
        height: 49.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.12),
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 4),
            )
          ],
          color: AppColors.white,
        ),
        child: Center(
            child: Text(
          saveButton,
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: AppColors.textBlack),
        )),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 49.0,
        height: 49.0,
        decoration: BoxDecoration(
          color: AppColors.darkViolet,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Center(
            child: Icon(
          Icons.arrow_forward_ios_rounded,
          color: AppColors.white,
        )),
      ),
    );
  }
}
