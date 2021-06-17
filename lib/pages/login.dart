import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset('assets/login.png' ,
           fit: BoxFit.cover,
           ),
           SizedBox(height: 20,),
           Text('Welcome', 
           style: TextStyle(
             fontSize: 22,
             fontWeight: FontWeight.bold,
             color: Colors.deepPurple,
           ),
           ),
           SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
             child: Column(
               children: [
                 TextFormField(
               decoration: InputDecoration(
                 labelText: 'UserName',
                 hintText: 'Enter username',
               ),
             ),
              TextFormField(
                obscureText: true,
               decoration: InputDecoration(
                 labelText: 'Password',
                 hintText: 'Enter Password',
               ),
             ),
             SizedBox(height: 20,),
             ElevatedButton(
               onPressed: (){
                 print('Hi Priyanka');
               },
              child: Text('Login'),
              ),
            ],
             ),
           )
        ],
      )
    );
  }
}