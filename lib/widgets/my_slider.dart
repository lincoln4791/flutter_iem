import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_quiz_app_demo/utils/toast_helper.dart';
import 'package:my_quiz_app_demo/widgets/card_with_text.dart';
import 'package:my_quiz_app_demo/widgets/my_card.dart';

import 'my_card2.dart';

class MySlider extends StatelessWidget {

  void myFunction() {
    print('Hello from myFunction!');
  }

  final List<String> imageUrls = [
    'https://firebasestorage.googleapis.com/v0/b/dailyexpensemanager-16f91.appspot.com/o/banner%2Fcover_3.png?alt=media&token=2bcd2f1f-b5c6-46d8-abfb-2c8ea3259fcd',
    'https://firebasestorage.googleapis.com/v0/b/dailyexpensemanager-16f91.appspot.com/o/banner%2Ffeatured_gold_calculator_bd.png?alt=media&token=2e6f85ef-37be-4341-a869-5599b2dff3ae',
    'https://firebasestorage.googleapis.com/v0/b/dailyexpensemanager-16f91.appspot.com/o/banner%2Fcover_1.png?alt=media&token=dc866b43-c46b-4ca9-8425-0e2bd62361d2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider Example')),
      body: Stack(
        children:[
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: CarouselSlider(
                      items: imageUrls.map((url) {
                        return Image.network(url, fit: BoxFit.cover);
                      }).toList(),
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 7,
                        viewportFraction: 0.8,

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children:  [
                      MyCard('All\nTransactions','assets/icons/transactions.png',Colors.white),
                      MyCard('Full\nReport','assets/icons/report.png',Colors.white),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children:  [
                      MyCard('Daily\nReport','assets/icons/daily.png',Colors.white),
                      MyCard('Monthly\nReport','assets/icons/monthly.png',Colors.white),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children:  [
                      MyCard2('Add\nIncome','assets/icons/add_income.png',Colors.green),
                      MyCard2('Add\nExpense','assets/icons/add_expense.png',Colors.pinkAccent),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Positioned(
            bottom: 10,
              left: 10,
              right: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(width: double.infinity,height: 60,
                    alignment: Alignment.center,
                    color: Colors.yellow,
                    child: Text("BackUp & Restore",textAlign: TextAlign.center,)),
              ))
      ]
      ),
    );
  }
}