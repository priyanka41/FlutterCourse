import 'package:design1/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   final _formkey = GlobalKey<FormState>();

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
                child: Form(
                  key: _formkey,
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
                        validator: (value){
                          if(value.isEmpty){
                            return "enter username" ;
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                       
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Password',
                        ),
                        validator: (value){
                          if(value.isEmpty){
                            return "password is required";
                          }else  if (value.length<8){
                            return "password must be more than 8 character" ;
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(_formkey.currentState.validate()){
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                          }
                        },
                        child: Text('Login'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
