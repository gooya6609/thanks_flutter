import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'toast message',
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('toast message'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: MyToastBtn(),
    );
  }
}

class MyToastBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          flutterToast();
        },
        child: Text(
          'Show me',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        color: Colors.blue,
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
    msg: 'Hello',
    textColor: Colors.white,
    backgroundColor: Colors.amber,
    gravity: ToastGravity.BOTTOM,
    fontSize: 20.0,
    toastLength: Toast.LENGTH_SHORT,
  );
}
