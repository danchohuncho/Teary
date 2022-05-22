import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teary/resources/resources.dart';

import '../utils/progress_bar.dart';

class AddNewNotePage extends StatelessWidget {
  const AddNewNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.circle),
            fit: BoxFit.none,
            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  MyProgressBar(),
                  MyProgressBar(),
                  MyProgressBar(),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15.0, 45.0, 0, 0),
                height: 144.0,
                width: 193.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Расскажи, почему ты плакала сегодня ?',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 28, 0, 8),
                        child: Text(
                          'Причина',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black),
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
                )),
          ],
        ),
      ),
    );
  }
}
