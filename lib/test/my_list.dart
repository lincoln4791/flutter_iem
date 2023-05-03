import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '../models/MyModel.dart';

class MyList extends StatefulWidget {

  MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  //final myList = List<String>.generate(10, (i) => 'Person$i');
  List<MyModel> myList  = [];

  Future<List<MyModel>> fetchAlbum() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if(response.statusCode==200){
       print('data 200');
      for(Map element in data){
        myList.add(MyModel.fromJson(element));
      }
    }
    else{
      print('not 200');
    }
    return myList;
  }

  late Future<List<MyModel>> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }



  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<MyModel>>(
      future: futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (BuildContext context, int index){
              return GestureDetector(
                child: ListTile(
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.call),
                  title: Text('${snapshot.data?[index].body}'),
                ),onTap: (){
                Fluttertoast.showToast(
                    msg: '${myList[index]} clicked',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
              );
            },
          );;
        }
        else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );

/*    return ListView.builder(
        itemCount: 5,
      itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            child: ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.call),
              title: Text('Person'),
            ),onTap: (){
            Fluttertoast.showToast(
                msg: '${myList[index]} clicked',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          },
          );
      },
    );*/
  }
}
