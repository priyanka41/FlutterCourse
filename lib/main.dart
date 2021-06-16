import 'package:design1/homepage.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyAApp());
}

class MyAApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}