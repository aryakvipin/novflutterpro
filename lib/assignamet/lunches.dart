import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class tabbabrr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:AppBar(backgroundColor: Colors.green,

          bottom: TabBar(

            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.teal,
            labelColor: Colors.yellow,
            tabs: [
              Tab(

                child: Text("Lunches", ),
              ),
              Tab(

                child: Text("Cart"
                ),

              ),

            ],),
        ) ,
        body: ListView(
          children: [
            Row(
              children: [
                Container( width: 100,height: 80,color: Colors.red,
                 child: Center(child: Column(
                   children: [
                     Text("1"),
                     Text("hooo"),
                   ],
                 )),
                ),
                Container(
                  child: Text("Burgers"),
                ),
                Divider(

                )
              ],
            )
          ],
        )
      ),
    );
  }

}