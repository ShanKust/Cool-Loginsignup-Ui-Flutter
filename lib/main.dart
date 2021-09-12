import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginuitask/Signup_page.dart';
import 'package:loginuitask/widgets/buildTextFormField.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLogin()
    );
  }
}
class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                     Stack(
                       children: [
                         Container(
                           decoration: BoxDecoration(color: Colors.lightBlueAccent,
                               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(120))),
                           height: 250,
                           width: double.infinity,
                           child: Icon(Icons.person,color: Colors.white,size: 80,),

                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 200,left: 260,),
                           child: Text("Login",style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                               color: Colors.white,
                               letterSpacing: 2.0,fontStyle: FontStyle.italic),),
                         ),
                       ],
                     )
                    ],

                  ),
                ),
                SizedBox(height: 50,),
                buildTextFormField(hintText: 'Username'),
                SizedBox(height: 30,),
                buildTextFormField(hintText: 'Password'),

                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190.0),
                  child: Row(
                    children: [
                      Text("Forgot Password ?",style: TextStyle(color: Colors.black26,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 40,
                  width: 300,
                  decoration:BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.circular(30)),
                  child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
                SizedBox(height: 90,),
                Padding(
                  padding: const EdgeInsets.only(left:100.0),
                  child: Row(
                    children: [
                      Text("Dont Have an Account?"),
                      TextButton(onPressed: (){setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                      });}, child:  Text("Sign up",style: TextStyle(color: Colors.lightBlueAccent),),),
                      // Text("Sign up",style: TextStyle(color: Colors.lightBlueAccent),),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }


}
