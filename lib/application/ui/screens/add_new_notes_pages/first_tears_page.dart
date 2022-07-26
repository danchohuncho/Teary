import 'package:flutter/material.dart';
import 'package:teary/application/ui/utils/progress_bar.dart';
import 'package:teary/resources/strings.dart';

import '../../themes/app_colors.dart';

class FirstTearsPage extends StatelessWidget {
  const FirstTearsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 81,
                decoration: const BoxDecoration(color: AppColors.orange),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 13, top: 5),
                          child: Row(
                            children: [
                              MyProgressBar(color: AppColors.statusBarBlack),
                              MyProgressBar(color: AppColors.statusBarGrey),
                              MyProgressBar(color: AppColors.statusBarGrey),
                            ],
                          ),
                        ),
                        const Center(
                          child: const Text(
                            '11 Февраля',
                            style: const TextStyle(
                                fontSize: 20, color: AppColors.white),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'Описание',
                            style: const TextStyle(
                                fontSize: 14, color: AppColors.black),
                          ),
                        ),
                      ],
                    ),
                    const Positioned.fill(
                      right: 26,
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.close_sharp,
                          size: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 32),
                width: 322,
                height: 52,
/*                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.red),
                ),*/
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 51,
                      height: 51,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyBorder),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Container(
                      width: 51,
                      height: 51,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyBorder),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Container(
                      width: 51,
                      height: 51,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyBorder),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Container(
                      width: 51,
                      height: 51,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyBorder),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Container(
                      width: 51,
                      height: 51,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyBorder),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 36, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(reason),
                    SizedBox(
                      width: 200,
                      height: 36,
                      child: TextField(
                        readOnly: true,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(description),
                      SizedBox(
                        width: 320,
                        height: 200,
                        child: TextField(
                          readOnly: false,
                          cursorColor: AppColors.black,
                          textCapitalization: TextCapitalization.sentences,
                          keyboardType: TextInputType.multiline,
                          maxLines: 8,
                          minLines: 5,
                          style: TextStyle(fontSize: 16),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  color: AppColors.red),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  color: AppColors.red),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
