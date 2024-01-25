import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: expandedd(),));
}
class expandedd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         Container(
           color: Colors.red,
            height: 100,
           width: 100,
         ),
         Container(
           color: Colors.green,
           height: 100,
           width: 100,

         ),
         Container(
           color: Colors.yellow,
           height: 100,
           width: 100,
         ),
       ],
     ),
   );
  }

}