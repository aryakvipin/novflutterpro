import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listviewcustm extends StatelessWidget{
  var title=["anu","ram","balu","arun","amal"];
  var color=[800,700,600,400,200];
  var colors=[Colors.green,Colors.red,Colors.yellow,Colors.teal,Colors.deepPurple];
  var phone=["43635656","453656356","3635635","36565365","235452452"];
  var image=["assets/iconss/facebook.png","assets/iconss/facebook.png","assets/iconss/facebook.png","assets/iconss/facebook.png","assets/iconss/facebook.png"];
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: ListView.custom(
            childrenDelegate: SliverChildBuilderDelegate(
            (context,index){
              return Card(
                child: ListTile(
                  tileColor: colors[index],
                  leading: Image(image: AssetImage("${image[index]}"),),
                      title:Text("${title[index]}") ,
                  subtitle: Text("${phone[index]}"),
                  trailing: Icon(Icons.call),
                ),
              );
            },childCount: title.length,
        )),
      );
  }
  
}