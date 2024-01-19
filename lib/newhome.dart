import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: newhome(),
  debugShowCheckedModeBanner: false,));
}
class newhome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       actions: [],
     ),
     body: ListView(children: [

       Card(color: Colors.cyan,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/facebook.png"),),
           title:Text("Arya") ,
           subtitle: Text("934657437534"),
           trailing: Icon(Icons.call),
         ),
       ),
       Card(color: Colors.yellow,
         child: ListTile(
           leading: Image(image: AssetImage("assets/iconss/facebook.png"),),
           title:Text("Arya") ,
           subtitle: Text("934657437534"),
           trailing: Icon(Icons.call),
         ),
       ),
       Card(color: Colors.green,
         child: ListTile(
           leading: Image(image: AssetImage("assets/iconss/facebook.png"),),
           title:Text("Arya") ,
           subtitle: Text("934657437534"),
           trailing: Icon(Icons.call),
         ),
       ),
       Card(color: Colors.red,
         child: ListTile(
           leading: Image(image: AssetImage("assets/iconss/facebook.png"),),
           title:Text("Arya") ,
           subtitle: Text("934657437534"),
           trailing: Icon(Icons.call),
         ),
       ),

       Card(color: Colors.cyan,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/facebook.png"),),
           title:Text("Arya") ,
           subtitle: Text("934657437534"),
           trailing: Icon(Icons.call),
         ),
       ),
       Card(color: Colors.yellow,
         child: ListTile(
           leading: Image(image: AssetImage("assets/iconss/facebook.png"),),
           title:Text("Arya") ,
           subtitle: Text("934657437534"),
           trailing: Icon(Icons.call),
         ),
       ),
       Card(color: Colors.green,
         child: ListTile(
           leading: Image(image: AssetImage("assets/iconss/facebook.png"),),
           title:Text("Arya") ,
           subtitle: Text("934657437534"),
           trailing: Icon(Icons.call),
         ),
       ),
       Card(color: Colors.red,
         child: ListTile(
           leading: Image(image: AssetImage("assets/iconss/facebook.png"),),
           title:Text("Arya") ,
           subtitle: Text("934657437534"),
           trailing: Icon(Icons.call),
         ),
       ),
       Card(color: Colors.cyan,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/iconss/facebook.png"),),
           title:Text("Arya") ,
           subtitle: Text("934657437534"),
           trailing: Icon(Icons.call),
         ),
       ),
       Card(color: Colors.yellow,
         child: ListTile(
           leading: Image(image: AssetImage("assets/iconss/facebook.png"),),
           title:Text("Arya") ,
           subtitle: Text("934657437534"),
           trailing: Icon(Icons.call),
         ),
       ),
       Card(color: Colors.green,
         child: ListTile(
           leading: Image(image: AssetImage("assets/iconss/facebook.png"),),
           title:Text("Arya") ,
           subtitle: Text("934657437534"),
           trailing: Icon(Icons.call),
         ),
       ),
       Card(color: Colors.red,
         child: ListTile(
           leading: Image(image: AssetImage("assets/iconss/facebook.png"),),
           title:Text("Arya") ,
           subtitle: Text("934657437534"),
           trailing: Icon(Icons.call),
         ),
       )



     ],)
   );

  }

}