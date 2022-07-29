import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/application/ui/screens/auth_screens/Widgets/auth_textfield.dart';
import 'package:teary/application/ui/screens/auth_screens/Widgets/dropdown_menu.dart';
import 'package:teary/application/ui/themes/app_colors.dart';

class RegisterSecondScreen extends StatelessWidget {
  const RegisterSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [AppColors.mainBackground, AppColors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            SvgPicture.asset(
              "assets/images/tears_icon.svg",
              semanticsLabel: 'SVG From asset folder',
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 16,
            ),
            const _FormWidget(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 40),
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Уже есть аккаунт?',
                      style: TextStyle(
                          color: AppColors.greyText41,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Войти',
                          style: TextStyle(
                              color: AppColors.orange,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _nameTextController = TextEditingController();
  final _genderTextController = TextEditingController();
  final _phoneNumberTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Познакомимся?',
          style: TextStyle(color: AppColors.black, fontSize: 20),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 16,
        ),
        AuthTextField(
            textController: _nameTextController,
            obscureText: false,
            labelText: 'Имя'),
        const SizedBox(
          height: 30,
        ),
        const DropdownMenu(),
        const SizedBox(
          height: 30,
        ),
        AuthTextField(
            textController: _phoneNumberTextController,
            obscureText: false,
            labelText: 'Телефон'),
        const SizedBox(height: 60),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 207,
            height: 49,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.circular(50)),
            child: const Text(
              'Далее',
              style: TextStyle(color: AppColors.white),
            ),
          ),
        ),
      ],
    );
  }
}
