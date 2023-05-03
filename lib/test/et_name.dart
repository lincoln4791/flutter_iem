import 'package:flutter/material.dart';

class ETName extends StatelessWidget {
  const ETName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child:  Card(
        child: TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter your username',
          ),
        ),
      ),
    );
  }
}
