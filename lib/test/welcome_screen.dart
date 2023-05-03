import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_quiz_app_demo/test/InkWellDemo.dart';
import 'package:my_quiz_app_demo/test/SizedBoxDemo.dart';
import 'package:my_quiz_app_demo/test/et_name.dart';
import 'package:my_quiz_app_demo/test/spacer_demo.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/icons/bg.svg",
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
             SafeArea(
              child: Center(
                child: Padding(padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:   [
                         Container(
                           alignment: Alignment.center,
                           width: 40,
                           height: 40,
                           child: const SizedBox(
                             child: Image(image: AssetImage('assets/icons/flag.png'))
                            ),
                         ),
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 60,
                          child: const SizedBox(
                              child: Image(image: AssetImage('assets/icons/flag.png'))
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 80,
                          height: 80,
                          child: const SizedBox(
                              child: Image(image: AssetImage('assets/icons/flag.png'))
                          ),
                        )
                      ],
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
