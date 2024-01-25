import 'package:flutter/material.dart';
void main(){
  MaterialApp(home: dismisbble(),);
}
class dismisbble extends StatelessWidget{
  var datas =<String>["Data 1", "Data 2", "Data 3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount:datas.length ,
          itemBuilder: (context,index){


          return Dismissible
            (key: ValueKey(datas),
            background: Container(color: Colors.red,),
            secondaryBackground: Container(color: Colors.green,),
              child: ListTile(
                title: Center(child: Text(datas[index]),),
              )

          ,
          );
      }),
    );
  }

}