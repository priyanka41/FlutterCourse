import 'package:design1/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/login.png',
                height: 250,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome $name',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'UserName',
                        hintText: 'Enter username',
                      ),
                        onChanged: (value) {
                        name= value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                     
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter Password',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text('Login'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
