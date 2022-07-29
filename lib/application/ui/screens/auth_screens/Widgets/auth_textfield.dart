import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    Key? key,
    required TextEditingController textController,
    required this.obscureText,
    required this.labelText,
  })  : _loginTextController = textController,
        super(key: key);

  final TextEditingController _loginTextController;
  final bool obscureText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    const borderColor = AppColors.white;

    const textFieldBorderStyle = OutlineInputBorder(
      borderSide: BorderSide(width: 0, style: BorderStyle.none),
      borderRadius: BorderRadius.all(Radius.circular(24)),
    );

    const contentPadding = EdgeInsets.symmetric(horizontal: 14, vertical: 18);

    return Container(
      width: 270,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        boxShadow: [
          BoxShadow(
              color: AppColors.shadowColorTextField,
              blurRadius: 8,
              spreadRadius: 0,
              offset: Offset(0.0, 4.0)),
        ],
      ),
      child: TextField(
        cursorColor: AppColors.black,
        controller: _loginTextController,
        decoration: InputDecoration(
            border: textFieldBorderStyle,
            filled: true,
            fillColor: AppColors.white,
            focusedBorder: textFieldBorderStyle,
            enabledBorder: textFieldBorderStyle,
            contentPadding: contentPadding,
            isCollapsed: true,
            focusColor: borderColor,
            labelText: labelText,
            labelStyle: TextStyle(color: AppColors.greyText7C)),
        obscureText: obscureText,
      ),
    );
  }
}
