import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridveweg(),));
}
class gridveweg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
         mainAxisSpacing: 20,crossAxisSpacing: 20),
       children: [
         Container(color: Colors.cyan,child: Icon(Icons.construction),),
         Container(color: Colors.red,child: Icon(Icons.ac_unit),),
         Container(color: Colors.green,child: Icon(Icons.access_alarm),),
         Container(color: Colors.yellow,child: Icon(Icons.access_alarm_outlined),),
         Container(color: Colors.greenAccent,child: Icon(Icons.accessible_forward),),
         Container(color:Colors.deepPurpleAccent, child: Icon(Icons.construction)),
         Container(color: Colors.deepOrange,child: Icon(Icons.access_alarm_rounded),),
         Container(color: Colors.amber,child: Icon(Icons.add_card),),
         Container(color: Colors.cyan,child: Icon(Icons.ac_unit),),
         Container(color: Colors.tealAccent,child: Icon(Icons.construction),),

       ],),
   );
  }

}