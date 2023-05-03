import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:my_quiz_app_demo/screens/main_page.dart';
import 'categories/category_screen.dart';
import 'models/MyModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  Future<void> fetchAlbum() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if(response.statusCode==200){
      log('data: qwd');

    }
    else{
      log('data:qwd ');
    }
  }



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MainPage(),
      //home: ButtonCounter(),
    );
  }
}


class ButtonCounter extends StatefulWidget {
  const ButtonCounter({Key? key}) : super(key: key);

  @override
  State<ButtonCounter> createState() => _ButtonCounterState();
}

class _ButtonCounterState extends State<ButtonCounter> {
  var counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("count is $counter"),
          ElevatedButton(onPressed: (){
            setState((){
              counter++;
            });
          }, child: Text("Count"))
        ],
      ),
    );
  }
}




