import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboarding_example/home.dart';
import 'package:onboarding_example/onboard/onboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

int isviewed;
void main() async{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs =await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: isviewed != 0? OnBoard(): Home(),
    );
  }
}



