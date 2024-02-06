import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novflutterpro/loginwithvalid.dart';

import 'homescreen.dart';
void main(){
  runApp(MaterialApp(home: namedroots(),
    routes: {
    'loginpage':(context)=>loginpage(),
     'homepage' :(context)=>Home()
    },
  ));
}
class namedroots extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Column(
        children: [

          ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed('loginpage');
          }, child: Text("loginpage")),
          ElevatedButton(onPressed: (){

            Navigator.of(context).pushNamed('homepage');

          }, child: Text("Homepage"))

        ],
      ),
    ),
  );

  }

}