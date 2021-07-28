import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: MaterialButton(
          height: 50.0,
          minWidth: 300.0,
          color: Colors.green,
          child: Text('Test Connection'),
          onPressed: () {
            DatabaseReference dbref =
                FirebaseDatabase.instance.reference().child('Test');
            dbref.set('IsConnected');
          },
        ),
      ),
    );
  }
}
