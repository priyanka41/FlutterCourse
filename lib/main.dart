import 'package:design1/pages/homepage.dart';
import 'package:design1/pages/login.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyAApp());
}

class MyAApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
      ),
     // home: HomePage(),
     initialRoute: '/login',
      routes: {
        "/" : (context) => HomePage(),
        '/login' : (context) => LoginPage(),
      },
    );
  }
}