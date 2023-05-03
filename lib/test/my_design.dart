import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyDesign extends StatelessWidget {
  const MyDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          SvgPicture.asset(
            "assets/icons/bg.svg",
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                child: Center(child: Text('hi')),
                flex: 1,
              ),
              Flexible(
                child: Center(
                    child: Row(
                      children: [
                        Flexible(child: Center(child: Text('Liza'),),flex: 2,),
                        Flexible(child: Center(child:
                        ElevatedButton(
                            child: Text(
                                "Buy now".toUpperCase(),
                                style: TextStyle(fontSize: 14)
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                        side: BorderSide(color: Colors.red)
                                    )
                                )
                            ),
                            onPressed: () => showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Alert"),
                                  content: Text("This is an alert dialog"),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      child: Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    ElevatedButton(
                                      child: Text("Cancel"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    )
                                  ],
                                );
                              },
                            ),
                        ),),flex: 1,),
                      ],
                    )
                ),
                flex: 1,
              )
            ],
          ),
        ),
        ],
      ),
    );
  }
}
