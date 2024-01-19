import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novflutterpro/homescreen.dart';
void main(){
  runApp(MaterialApp(home:drawereg() ,));
}
class drawereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("drawer"),
       ),
       drawer: Drawer(backgroundColor: Colors.cyan,
         child: ListView(
           children: [
            UserAccountsDrawerHeader(decoration:BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/iconss/rain.jpg",),fit: BoxFit.fill)
            ),
                accountName: Text("arya"), accountEmail: Text("arya@gmail.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/iconss/facebook.png"),

              ),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: AssetImage("assets/iconss/facebook.png")),
              ],
            ),
             GestureDetector(onTap: (){},
               child: ListTile(
                 leading: Icon(Icons.home),
                 title: Text("Home"),

               ),
             ),
             ListTile(
               leading: Icon(Icons.person),
               title: Text("Profile"),

             ),
             ListTile(
               leading: Icon(Icons.update),
               title: Text("Update"),


             ),ListTile(
               leading: Icon(Icons.logout),
               title: Text("Logout"),

             )
           ],
         ),
       ),
     );
  }
  
}