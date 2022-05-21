import 'package:flutter/material.dart';

class AddNewNotePage extends StatelessWidget {
  const AddNewNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(15.0, 45.0, 0, 0),
              height: 144.0,
              width: 193.0,
              child: Text(
                'Расскажи, почему ты плакала сегодня ?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              )),
          Container(
              padding: EdgeInsets.fromLTRB(15, 28, 0, 0),
              height: 20,
              width: 60,
              child: Text(
                'Причина',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              )),
          Container(
            height: 30,
            width: 193,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.black)),
            child: TextField(),
          )
        ],
      ),
    );
  }
}
