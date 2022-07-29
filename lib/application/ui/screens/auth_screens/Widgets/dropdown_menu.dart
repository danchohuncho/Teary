import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/application/ui/themes/app_colors.dart';

class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  final items = ['Мужской', 'Женский', 'Обращение на Вы'];
  String? value;

  @override
  Widget build(BuildContext context) {
    const borderColor = AppColors.white;

    const textFieldBorderStyle = OutlineInputBorder(
      borderSide: BorderSide(width: 0, style: BorderStyle.none),
      borderRadius: BorderRadius.all(Radius.circular(24)),
    );

    const contentPadding = EdgeInsets.symmetric(horizontal: 14, vertical: 0);

    return Center(
      child: Container(
        width: 270,
        height: 40,
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          boxShadow: [
            BoxShadow(
                color: AppColors.shadowColorTextField,
                blurRadius: 8,
                spreadRadius: 0,
                offset: Offset(0.0, 4.0)),
          ],
        ),
        child: Theme(
          data: ThemeData(
            splashFactory: NoSplash.splashFactory,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: DropdownButtonFormField<String>(
            decoration: const InputDecoration(
                border: textFieldBorderStyle,
                filled: true,
                fillColor: AppColors.white,
                contentPadding: contentPadding,
                focusColor: borderColor,
                labelStyle: TextStyle(color: AppColors.greyText7C)),
            value: value,
            focusColor: Colors.transparent,
            autofocus: true,
            isExpanded: true,
            icon: Container(
              margin: const EdgeInsets.fromLTRB(0, 4, 16, 0),
              child: SvgPicture.asset(
                'images/dropdown_arrow.svg',
                color: AppColors.textBlack,
              ),
            ),
            hint: const Text(
              'Пол',
              style: TextStyle(
                  color: AppColors.greyText7C,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            items: items.map(buildMenuItem).toList(),
            onChanged: (value) => setState(() => this.value = value),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Theme(
          data: ThemeData(splashFactory: NoSplash.splashFactory),
          child: Text(
            item,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.greyText41),
          ),
        ),
      );
}
