import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:my_quiz_app_demo/utils/secure_storage_manager.dart';

class SecureStorage extends StatefulWidget {
  const SecureStorage({Key? key}) : super(key: key);



  @override
  State<SecureStorage> createState() => _SecureStorageState();
}

class _SecureStorageState extends State<SecureStorage> {

  Future<String> getName() async {
    SecureStorageManager ssm = SecureStorageManager();
    String? myData = await ssm.getName();
    return myData??'default';
    print(myData);
  }


  String? name0 = "pre defiened value";

  @override
  Widget build(BuildContext context) {

    TextEditingController _nameController = TextEditingController();


    return Scaffold(
      appBar: AppBar(title: Text('My Secure Storage')),
      body: Column(
        children:  [
          const SizedBox(height: 40,width: double.infinity,),
          Container(
            width: 150,
            child: TextField(
              controller: _nameController,
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w300,
                  color: Colors.black
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Name",
                  hintStyle: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Colors.black
                  )
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              String name = _nameController.text;
              SecureStorageManager ssm = new SecureStorageManager();
              ssm.setValue(name);
            },
            child: Text(
              "Insert Name",
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w300,
                  color: Colors.black
              ),
            ),
          ),
          SizedBox(height: 30,),
          Text(
            "$name0",
            style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w300,
                color: Colors.yellow.withOpacity(.8)
            ),
          ),
          GestureDetector(
            onTap: () async {
              print('tapped');


              SecureStorageManager ssm = SecureStorageManager();
              String? myResult = await ssm.getName();
              print(myResult);
              setState(() {
                name0 = myResult;
              });
            },
            child: Text(
              "get value",
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w300,
                  color: Colors.black
              ),
            ),
          ),
        ],
      ) ,
    );
  }
}
