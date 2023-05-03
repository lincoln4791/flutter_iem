import 'package:flutter/material.dart';
import 'package:my_quiz_app_demo/test/my_list.dart';
import 'package:my_quiz_app_demo/widgets/my_page_view.dart';

class SecondActivity extends StatelessWidget {

  goBack(BuildContext context){

    Navigator.pop(context);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),

      body: Column(
        children: [
          Container(
            height: 200,
              width: double.infinity,
              child: MyPageView()
          ),
          Expanded(
              child: MyList()
          )
        ],
      ),
    );
  }
}
