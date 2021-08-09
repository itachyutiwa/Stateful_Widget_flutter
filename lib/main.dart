 import 'package:flutter/material.dart';
import 'package:smart_calk/screens/flash_demo_of_statefulwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
    debugShowCheckedModeBanner: false,
        title : 'SmartCalk',
      home:TextfieldDemo());

  }

}

