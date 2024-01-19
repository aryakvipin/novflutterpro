import 'dart:async';

import 'package:flutter/material.dart';
import 'package:novflutterpro/homescreen.dart';
void main(){
  runApp(MaterialApp(home: myscplash(),));
}
class  myscplash extends StatefulWidget{
  @override
  State<myscplash> createState() => _myscplashState();
}

class _myscplashState extends State<myscplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.yellow,
        backgroundColor: Colors.red,
        title: Text("sample page"),
      ),
      body: Container(height: double.infinity,width: double.infinity,



        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage("assets/iconss/facebook.png")),
              Text(
              "flutter",
              style: TextStyle(color: Colors.teal, fontSize: 50,fontWeight:FontWeight.w600,fontStyle:FontStyle.italic ),
            ),
          ],
        ),
      ),
    );

  }
}