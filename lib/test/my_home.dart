import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_quiz_app_demo/prod/my_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';



class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('AppBar Demo',
          style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold)),
      backgroundColor: Colors.blue,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          tooltip: 'Go to the next page',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Next page'),
                  ),
                  body: const Center(
                    child: Text(
                      'This is the next page',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              },
            ));
          },
        ),
      ],
    ),
      drawer: Drawer(
          child: ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
      backgroundColor: Colors.blue,),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white
        ),
        child: Column(
          children: [
            Expanded(
                child: Center(
                  child: Image.asset(
                  'assets/icons/flag.png',
                  height: double.infinity,
                  width: double.infinity,
                ),
                  /*child: SvgPicture.asset(
                    "assets/icons/bg.svg",
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: double.infinity,
                  ),*/
                ),flex: 1,),
            Expanded(
              child: Center(
                  child: (Row(
                children: [
                  Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Enter your username'),
                      ),
                      ElevatedButton(
                        child: Text('ewdw'),
                        onPressed: () => Fluttertoast.showToast(
                            msg: "This is Center Short Toast",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0),
                      ),
                    ],
                  ),
                ],
              ))),
              flex: 3,
            )
          ],
        ),
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );

  }
}
