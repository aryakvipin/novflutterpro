import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Listviewcutm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate([
        Card(
          color: Colors.cyan,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/iconss/facebook.png"),
            ),
            title: Text("Arya"),
            subtitle: Text("934657437534"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/iconss/facebook.png"),
            ),
            title: Text("Arya"),
            subtitle: Text("934657437534"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(
          color: Colors.green,
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/iconss/facebook.png"),
            ),
            title: Text("Arya"),
            subtitle: Text("934657437534"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(
          color: Colors.red,
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/iconss/facebook.png"),
            ),
            title: Text("Arya"),
            subtitle: Text("934657437534"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(
          color: Colors.cyan,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/iconss/facebook.png"),
            ),
            title: Text("Arya"),
            subtitle: Text("934657437534"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(
          color: Colors.yellow,
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/iconss/facebook.png"),
            ),
            title: Text("Arya"),
            subtitle: Text("934657437534"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(
          color: Colors.green,
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/iconss/facebook.png"),
            ),
            title: Text("Arya"),
            subtitle: Text("934657437534"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(
          color: Colors.red,
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/iconss/facebook.png"),
            ),
            title: Text("Arya"),
            subtitle: Text("934657437534"),
            trailing: Icon(Icons.call),
          ),
        ),
        const Card(
          color: Colors.cyan,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/iconss/facebook.png"),
            ),
            title: Text("Arya"),
            subtitle: Text("934657437534"),
            trailing: Icon(Icons.call),
          ),
        ),
        const Card(
          color: Colors.yellow,
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/iconss/facebook.png"),
            ),
            title: Text("Arya"),
            subtitle: Text("934657437534"),
            trailing: Icon(Icons.call),
          ),
        ),
        const Card(
          color: Colors.green,
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/iconss/facebook.png"),
            ),
            title: Text("Arya"),
            subtitle: Text("934657437534"),
            trailing: Icon(Icons.call),
          ),
        ),
        const Card(
          color: Colors.red,
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/iconss/facebook.png"),
            ),
            title: Text("Arya"),
            subtitle: Text("934657437534"),
            trailing: Icon(Icons.call),
          ),
        )
      ])),
    );
  }
}
