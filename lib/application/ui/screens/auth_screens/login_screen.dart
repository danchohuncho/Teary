import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/application/ui/themes/app_colors.dart';
import 'Widgets/auth_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                      'Нет аккаунта ?',
                      style: TextStyle(
                          color: AppColors.greyText41,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Регистрация',
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
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  String? errorText;

  _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;
      Navigator.of(context).pushNamed("/");
    } else {
      errorText = 'Не верный логин или пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    //print('Сбросить');
  }

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Вход',
          style: TextStyle(color: AppColors.black, fontSize: 20),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 16,
        ),
        AuthTextField(
          labelText: 'E-mail',
          textController: _loginTextController,
          obscureText: false,
        ),
        const SizedBox(
          height: 30,
        ),
        AuthTextField(
          labelText: 'Пароль',
          textController: _passwordTextController,
          obscureText: true,
        ),
        Container(
          width: 270,
          alignment: Alignment.centerRight,
          child: TextButton(
              onPressed: () {},
              child: const Text(
                'Забыли пароль ?',
                style: TextStyle(color: AppColors.greyText7C),
              )),
        ),
        const SizedBox(height: 33),
        GestureDetector(
          onTap: () {
            _auth();
          },
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
        if (errorText != null)
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            alignment: Alignment.center,
            child: Text(
              errorText,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
          ),
      ],
    );
  }
}
