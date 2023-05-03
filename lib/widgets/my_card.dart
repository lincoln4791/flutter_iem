import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/toast_helper.dart';

class MyCard extends StatelessWidget {
  String _name = "";
  String _iconPath = "";
  Color? _color ;
   MyCard(this._name,this._iconPath,this._color,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
            onTap: () {
              ToastHelper.showToast('$_name clicked');
            },
            child: Card(
                color: _color,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image(
                        width: 100,
                        height: 40,
                        image: AssetImage(_iconPath),
                      ),
                      Text(
                        _name,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ))));
  }
}
