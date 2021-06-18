import 'package:design1/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
     int days = 30;
    String name = 'Priyanka';
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
        body: Center(
          child: Container(
            child: Text('welcome to $days days flutter course by $name'),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}