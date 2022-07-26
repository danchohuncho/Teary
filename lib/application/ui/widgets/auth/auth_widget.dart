import 'package:flutter/material.dart';
import 'package:teary/application/ui/themes/app_colors.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*      appBar: AppBar(
        title: const Text('Добро пожаловать в Teary'),
      ),*/
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFE845C),
                Color(0xFFAE7CEE),
              ],
            ),
          ),
          child: const _HeaderWidget()),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          const _FormWidget(),
          /*const SizedBox(
            height: 25,
          ),
          const Text('---'),
          const SizedBox(
            height: 5,
          ),
          TextButton(
              onPressed: () {},
              style: AppButtonStyle.linkButton,
              child: const Text('Регистрация')),
          const SizedBox(
            height: 25,
          ),
          const Text('==='),
          const SizedBox(
            height: 5,
          ),
          TextButton(
              onPressed: () {},
              style: AppButtonStyle.linkButton,
              child: const Text('Подтвердить почту')),*/
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

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;
      print('open app');
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

    const borderColor = Color(0xFF000000);

    const textFieldBorderStyle = OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.green));

    final errorText = this.errorText;
    return Container(
      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
      width: 333.00,
      height: 402.00,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (errorText != null)
            Container(
              child: Text(
                errorText,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
            ),
/*          const Text('Логин', style: textStyle),
          const SizedBox(
            height: 5,
          ),*/
          SizedBox(
            width: 264.00,
            height: 35.00,
            child: TextField(
              controller: _loginTextController,
              decoration: InputDecoration(
                  border: textFieldBorderStyle,
                  focusedBorder: textFieldBorderStyle,
                  enabledBorder: textFieldBorderStyle,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  isCollapsed: true,
                  focusColor: borderColor,
                  labelText: 'Логин',
                  labelStyle: TextStyle(color: AppColors.greyText7C)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
/*          const Text('Пароль', style: textStyle),
          const SizedBox(
            height: 5,
          ),*/
          SizedBox(
            width: 264.00,
            height: 35.00,
            child: TextField(
              controller: _passwordTextController,
              decoration: InputDecoration(
                  border: textFieldBorderStyle,
                  focusedBorder: textFieldBorderStyle,
                  enabledBorder: textFieldBorderStyle,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  isCollapsed: true,
                  focusColor: borderColor,
                  labelText: 'Пароль',
                  labelStyle: TextStyle(color: AppColors.greyText7C)),
              obscureText: true,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: _auth,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.white),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.white),
                      ),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ))),
                  child: const Text('Войти', style: TextStyle(color: AppColors.black),)),
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(
                  onPressed: _resetPassword,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.white),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  child: const Text('Сбросить пароль', style: TextStyle(color: AppColors.black),))
            ],
          )
        ],
      ),
    );
  }
}
