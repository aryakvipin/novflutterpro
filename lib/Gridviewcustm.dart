import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridviwcustm()));
}
class Gridviwcustm extends StatelessWidget{
  var images=["assets/iconss/facebook.png",
    "assets/iconss/facebook.png",
  "assets/iconss/facebook.png",
    "assets/iconss/facebook.png",
    "assets/iconss/facebook.png",
    "assets/iconss/facebook.png",
    "assets/iconss/facebook.png"
  ];
  var tittle=["1","2","3","4","5","6","7"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate: SliverChildBuilderDelegate((context, index){
            return Card(
                child: Column(
                  children: [
                    Image(image: AssetImage(images[index]),height: 80,width: 80,),
                    Text(tittle[index]),
                  ],
                ),
            );


          }
          ,childCount: images.length)),
    );
  }

}