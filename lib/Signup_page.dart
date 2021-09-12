import 'package:flutter/material.dart';
class SignUpPage extends StatefulWidget {

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            padding: const EdgeInsets.only(top: 200,left: 240,),
                            child: Text("Sign Up",style: TextStyle(
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
              SizedBox(
            height: 50,
              ),
              Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 40.0),
            child: Center(
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(60),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.black26)),
                      hintText: 'Fullname'
                  ),
                ),
              ),

            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 40.0),
            child: Center(
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(60),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabled: true,
                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.black26)),
                      hintText: 'Usernmae'
                  ),
                ),
              ),

            ),

          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 40.0),
            child: Center(
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(60),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabled: true,
                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.black26)),
                      hintText: 'Email'
                  ),
                ),
              ),

            ),

          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 40.0),
            child: Center(
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(60),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabled: true,
                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.black26)),
                      hintText: 'Password'
                  ),
                ),
              ),

            ),

          ),
          SizedBox(height: 30,),
          Container(
            height: 40,
            width: 280,
            decoration:BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.circular(30)),
            child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
          ),
          Padding(
            padding: const EdgeInsets.only(left:100.0),
            child: Row(
              children: [
                Text("Have an Account?"),
                TextButton(onPressed: (){setState(() {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                });}, child:  Text("Login",style: TextStyle(color: Colors.lightBlueAccent),),),
                // Text("Sign up",style: TextStyle(color: Colors.lightBlueAccent),),

              ],
            ),
          ),

          ],
        ),
      ),
      )
    );

  }
}
