import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
 // final imageUrl = "https://pbs.twimg.com/profile_images/881859768154849280/J_F-9Ys5_400x400.jpg" ;
 
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
               
                accountName: Text('Priyanka'),
                 accountEmail: Text('priyankapoudel@gmail.com'),
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: AssetImage('assets/girl.png'),
                 ),
                 ),
              ),
              ListTile(
               leading: Icon(CupertinoIcons.home, color: Colors.white,),
               title: Text('Home', 
               textScaleFactor: 1.2,
               style: TextStyle(
                 color: Colors.white,
               ),),
              ),
              ListTile(
               leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
               title: Text('Profile', 
               textScaleFactor: 1.2,
               style: TextStyle(
                 color: Colors.white,
               ),),
              ),
              ListTile(
               leading: Icon(CupertinoIcons.mail, color: Colors.white,),
               title: Text('Email', 
               textScaleFactor: 1.2,
               style: TextStyle(
                 color: Colors.white,
               ),),
              ),
          ],
        ),
      ),
    );
  }
}