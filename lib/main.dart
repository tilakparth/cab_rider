import 'package:cab_rider/screens/loginPage.dart';
import 'package:cab_rider/screens/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
      name: 'db2',
      options: const FirebaseOptions(
        apiKey: "AIzaSyBF-IpjTPUeYh09Eo8c_Yp13LUI0d-O3Vs",
        appId: "1:536217535308:android:9f79f09aa75121c55b05e9",
        messagingSenderId: "536217535308",
        projectId: "geetaxi-6903e",
        databaseURL: "https://geetaxi-6903e-default-rtdb.firebaseio.com",
      ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Brand-Regular',
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
