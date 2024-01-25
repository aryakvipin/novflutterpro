import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
void main(){
  runApp(MaterialApp(home: sveg(),));
}
class sveg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child:   IconButton(
         onPressed: () {},
         icon: SvgPicture.asset(
           'assets/svg/newsvg.svg',
           height: 10,
         ),
       ),
     ),
   );
  }

}