import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Добро пожаловать в Teary'),
      ),
      body: ListView(
        children: [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          _FormWidget(),
          SizedBox(
            height: 25,
          ),
          Text(
              'Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой. '),
          SizedBox(height: 5,),
          ElevatedButton(onPressed: (){}, child: Text('Регистрация')),
          SizedBox(height: 25,),
          Text(
              'Если Вы зарегистрировались, но не получили письмо для подтверждения, '),
          SizedBox(height: 5,),
          ElevatedButton(onPressed: (){}, child: Text('Подтвердить почту')),
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
  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black,
    );

    const borderColor = Color(0xFF000000);

    const textFieldDecoration = InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        isCollapsed: true,
        focusColor: borderColor);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Логин', style: textStyle),
        SizedBox(
          height: 5,
        ),
        TextField(decoration: textFieldDecoration),
        SizedBox(
          height: 20,
        ),
        Text('Пароль', style: textStyle),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: textFieldDecoration,
          obscureText: true,
        ),
        SizedBox(height: 25,),
        Row(
          children: [
            TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(borderColor),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ))),
                child: Text('Войти')),
            SizedBox(width: 30,),
            TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(borderColor),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                child: Text('Сбросит пароль'))
          ],
        )
      ],
    );
  }
}
