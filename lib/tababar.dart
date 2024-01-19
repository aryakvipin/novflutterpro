import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'lisrviewcust2.dart';
import 'lisrviewcustem.dart';
import 'listbuilder.dart';
void main(){
  runApp(MaterialApp(home:tabbabrr() ,
  debugShowCheckedModeBanner: false,)
  );
}
class tabbabrr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar:AppBar(backgroundColor: Colors.green,
          title:  Text("tabbar"),
          actions: [
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(child: Text("settings")) ,
                PopupMenuItem(child: Text("Logout")),
                PopupMenuItem(child: Text("invite")),
              ];
            })
          ],
          bottom: TabBar(

            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.teal,
            labelColor: Colors.yellow,
            tabs: [
              Tab(

icon: FaIcon(FontAwesomeIcons.whatsapp),
                child: Text("camera", style: GoogleFonts.lato(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),),
              ),
            Tab(

            child: Text("chat",style: GoogleFonts.b612Mono(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            )),

            ),
            Tab(
              child: Text("status",style: TextStyle(fontFamily:"assets/fonts/Noto_Serif/NotoSerif-Italic-VariableFont_wdth,wght.ttf" ),),
            ),
            Tab(
              child: Text("contact"),
            )
          ],),
        ) ,
        body: TabBarView(children: [

          Listviewcustm(),
          Listviewcutm(),
          Container(
            child: FaIcon(FontAwesomeIcons.arrowUpLong),
          )
        ],

        ),
      ),
    );
  }

}