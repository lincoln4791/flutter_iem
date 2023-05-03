import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizedBoxDemo extends StatelessWidget {
  const SizedBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
              "hi"
          ),
        ),
      ),
    );
  }
}
