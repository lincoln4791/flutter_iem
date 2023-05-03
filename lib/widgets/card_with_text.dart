import 'package:flutter/material.dart';

class CardWithText extends StatelessWidget {

  final VoidCallback onPressed;
  var name = "";

  CardWithText(this.onPressed,this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Expanded(
          child: Card(
            child: Text(name),
          ),
        ),
      ),
    );
  }
}
