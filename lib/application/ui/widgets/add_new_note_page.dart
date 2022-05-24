import 'package:flutter/material.dart';
import 'package:teary/application/ui/themes/app_colors.dart';
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
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 28, 0, 8),
                          child: Text(
                            'Причина',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
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
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.8,
                  height: 51.0,
                  margin: EdgeInsets.fromLTRB(0, 28, 0, 0),
                  decoration: BoxDecoration(
                    color: AppColors.yellowTeary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'Что случилось ?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15.0, 13.0, 0, 0),
                width: 290,
                height: 210,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                'Описание',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            width: 290,
                            height: 192,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(color: Colors.black)),
                            child: TextField(),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              //BUTTON SAVE AND NEXT

              Expanded(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/2.5, 0, MediaQuery.of(context).size.width/6, 16),
                      width: 114.0,
                      height: 45.0,
                      color: AppColors.red,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.fromLTRB(43, 0, 0, 16),
                      width: 45.0,
                      height: 45.0,
                      color: AppColors.green,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
