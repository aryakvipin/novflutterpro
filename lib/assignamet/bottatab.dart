
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:novflutterpro/assignamet/lunches.dart';

void main(){
  runApp(MaterialApp(home: bottamnav(),));
}
class bottamnav extends  StatefulWidget{
  @override
  State<bottamnav> createState() => _bottamnavState();
}

class _bottamnavState extends State<bottamnav> {
  var screen=[
    Text("home"),
    tabbabrr (),
    Text("notification"),
    Text("notification"),

  ];
  int index=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
        child: BottomNavigationBar(
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.grey,
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"home",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.category),label: "category"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label:"Account" ),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),




          ],),
      ),
      body: Center(child: screen[index]),
    );
  }
}