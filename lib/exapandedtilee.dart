import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: expandtilee(),));
}
class expandtilee extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: ExpansionTile(title: Text("colors"),
      subtitle: Text("Expanded this tile"),
      children: [
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.red,),
          title: Text("red"),
        ),
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.yellow,),
          title: Text("yellow"),
        ),
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.blue,),
          title: Text("blue"),
        )
      ],),
    );
  }
}
