import 'package:flutter/material.dart';

Widget buildTextFormField({String? hintText,}) {
  return Padding(
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
            prefixIcon: Icon(Icons.vpn_key_sharp,color: Colors.blueAccent,),
            hintText: hintText,
          ),
        ),
      ),

    ),

  );
}