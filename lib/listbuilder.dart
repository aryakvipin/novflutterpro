import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class listbuilder extends StatelessWidget{
  var title=["anu","ram","balu","arun","amal"];
   var color=[800,700,600,400,200];
   var colors=[Colors.green,Colors.red,Colors.yellow,Colors.teal,Colors.deepPurple];
  var phone=["43635656","453656356","3635635","36565365","235452452"];
  var image=["assets/iconss/facebook.png","assets/iconss/facebook.png","assets/iconss/facebook.png","assets/iconss/facebook.png","assets/iconss/facebook.png"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Listbuilder"),),
     body:  ListView.builder(itemBuilder: (context,index){
       return Card(color: colors[index],
         shadowColor: Colors.blue,
         surfaceTintColor: Colors.red,
         elevation: 20,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("${image[index]}"),),
           title: Text("${title[index]}"),
           subtitle: Text("${phone[index]}"),
           // trailing: FaIcon(magic)
         ),
       );
     },itemCount: title.length,),
   );
     
  }
  
}