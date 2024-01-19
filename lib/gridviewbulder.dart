import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridbulder(),));
}
class gridbulder extends StatelessWidget{
  var Iconss=[Icons.ac_unit,Icons.access_alarm_rounded,Icons.construction,Icons.safety_check_rounded,Icons.ac_unit,Icons.access_alarm_rounded,Icons.construction,Icons.safety_check_rounded];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),
    itemBuilder: (context,index){
       return Container(
         child: Icon(Iconss[index]),
       );

    }
    ,itemCount: Iconss.length,),
   );
  }
  
}