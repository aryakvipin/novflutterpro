import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridviewextend(),));
}
class Gridviewextend extends StatelessWidget{
  var Iconss=[Icons.ac_unit,Icons.access_alarm_rounded,Icons.construction,Icons.safety_check_rounded,Icons.ac_unit,Icons.access_alarm_rounded,Icons.construction,Icons.safety_check_rounded];


  @override
  Widget build(BuildContext context) {

     return Scaffold(
       body: GridView.extent(maxCrossAxisExtent: 120,
         children:List.generate(8, (index) {
           return Card(
             child: Column(
               children: [
                 Icon(Iconss[index]),
                 Text("flutter"),
               ],
             ),
           );
         }),),
     );
  }

}