import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpacerDemo extends StatelessWidget {
  const SpacerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60 ,
          width : 60,
          color: Colors.green,
        ),
        const Spacer(flex: 2,),
        Container(
          height: 60 ,
          width : 60,
          color: Colors.blue,
        ),
        const Spacer(flex: 3,),
        Container(
          height: 60 ,
          width : 60,
          color: Colors.red,
        )
      ],
    );
  }
}
