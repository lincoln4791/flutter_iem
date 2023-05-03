import 'package:flutter/material.dart';
import 'package:my_quiz_app_demo/constants/app_constants.dart';
import 'package:my_quiz_app_demo/screens/secure_storage.dart';
import 'package:my_quiz_app_demo/test/second_activity.dart';
import 'package:my_quiz_app_demo/widgets/left_bar.dart';
import 'package:my_quiz_app_demo/widgets/my_page_view.dart';
import 'package:my_quiz_app_demo/widgets/my_slider.dart';
import 'package:my_quiz_app_demo/widgets/right_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _result = 0.0;
  String _resultText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My BMI",
          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  child: TextField(
                    controller: _heightController,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8)
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8)
                      )
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: TextField(
                    controller: _weightController,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8)
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Weight",
                        hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8)
                        )
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text(
              "$_result",
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w300,
                  color: Colors.yellow.withOpacity(.8)
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                double h = double.parse(_heightController.text);
                double w = double.parse(_weightController.text);
                double r = h*w;
                setState((){
                  {
                    _result=r;
                    if(_result>25){
                      _resultText = "Fat";
                    }
                    else if(_result<35){
                      _resultText= "Low";
                    }
                    else{
                      _resultText = "Normal";
                    }
                  }
                });
              },
              child: Text(
                "Calculate",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w300,
                  color: Colors.white.withOpacity(.8)
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondActivity()),
              );
            },
                child: Text('Go To Second Activity')),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MySlider()),
              );
            }, child: Text('Go To ViewPager Activity')),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecureStorage()),
              );
            }, child: Text('Flutter Secure Storage'))

          ],
        ),
      ),
      backgroundColor: Colors.black.withOpacity(.8),

    );
  }
}
