import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  final List<Widget> pages = [
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ];

  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: pages,
      scrollDirection: Axis.horizontal,
      pageSnapping: true,
      physics: BouncingScrollPhysics(),
    );
  }
}