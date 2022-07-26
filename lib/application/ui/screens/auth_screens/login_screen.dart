import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/application/ui/themes/app_colors.dart';
import 'package:teary/application/ui/utils/textfield_padding.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          _FormWidget(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 40),
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Нет аккаунта ?',
                    style: TextStyle(
                        color: AppColors.greyText41,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
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

  String? errorText = null;

  _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;
      print('open app');
      Navigator.of(context).pushNamed("/");
    } else {
      errorText = 'Не верный логин или пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('Сбросить');
  }

  @override
  Widget build(BuildContext context) {
    const borderColor = AppColors.white;

    const textFieldBorderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(24)),
      borderSide: BorderSide(color: AppColors.greyText7C),
    );

    final errorText = this.errorText;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Вход',
            style: TextStyle(color: AppColors.black, fontSize: 20),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 16,
          ),
          SizedBox(
            width: 270,
            height: 40,
            child: TextField(
              cursorColor: AppColors.black,
              controller: _loginTextController,
              decoration: InputDecoration(
                  border: textFieldBorderStyle,
                  focusedBorder: textFieldBorderStyle,
                  enabledBorder: textFieldBorderStyle,
                  contentPadding: contentPadding.input,
                  isCollapsed: true,
                  focusColor: borderColor,
                  labelText: 'E-mail',
                  labelStyle: TextStyle(color: AppColors.greyText7C)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 270.00,
            height: 40.00,
            child: TextField(
              cursorColor: AppColors.black,
              controller: _passwordTextController,
              decoration: InputDecoration(
                  border: textFieldBorderStyle,
                  focusedBorder: textFieldBorderStyle,
                  enabledBorder: textFieldBorderStyle,
                  contentPadding: contentPadding.input,
                  isCollapsed: true,
                  focusColor: borderColor,
                  labelText: 'Пароль',
                  labelStyle: TextStyle(color: AppColors.greyText7C)),
              obscureText: true,
            ),
          ),
          Container(
            width: 270,
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Забыли пароль ?',
                  style: TextStyle(color: AppColors.greyText7C),
                )),
          ),
          SizedBox(height: 33),
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
              child: Text(
                'Далее',
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ),
          if (errorText != null)
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              alignment: Alignment.center,
              child: Text(
                errorText,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
