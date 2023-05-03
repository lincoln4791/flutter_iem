import 'package:flutter/material.dart';

//Click Effect

class InkWellDemo extends StatelessWidget {
  const InkWellDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: Container(
        width: 200,
        height: 200,
        color: Colors.transparent,
      ),
    );
  }
}
