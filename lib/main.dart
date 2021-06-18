import 'package:design1/pages/homepage.dart';
import 'package:design1/pages/login.dart';
import 'package:design1/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyAApp());
}

class MyAApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
      ),
     // home: HomePage(),
     initialRoute: MyRoutes.homeRoute,
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
      },
    );
  }
}