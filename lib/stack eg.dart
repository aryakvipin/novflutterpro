 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  
  runApp(MaterialApp(home: stackeg(),));
}
class stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Stack(
         children: [
            Container(color: Colors.white,height: double.infinity, width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 230,left: 220),
              child: ListView(
                children: [
                  Text("data"),
                ],
              ),
            ),),
             Positioned(child:
             ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),

                 child: Container(color: Colors.yellow,))
             ,height: 150,width: 500,
             ),
             Positioned(child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),
               child: Container(color: Colors.blue,
               child: Image(image: AssetImage("assets/iconss/images.jpeg"),fit: BoxFit.fill,),),
             ),
             height: 100,width: 100,
             top: 110,left: 200,)




         ],
       ),
     ),
   );
  }

}