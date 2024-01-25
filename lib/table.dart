import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: tables(),));
}
class tables extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(10),
         border: Border.all()
        ),
          child: DataTable(
            border: TableBorder.all(
              width: 2.0,

              color: Colors.red,

            ),
            columns: const [
              DataColumn(label: Text("name"
              ,style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ),)),
              DataColumn(label: Text("age"
                ,style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ),)),

              DataColumn(label: Text("salery",
                  style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ),)),


            ],


            rows: const [
              DataRow(cells:
              [
              DataCell(Text("anu")),
                DataCell(Text("25"))  ,
                DataCell(Text("25000"))

              ]),
              DataRow(cells:
              [
                DataCell(Text("manu")),
                DataCell(Text("30"))  ,
                DataCell(Text("35000"))


              ]),
              DataRow(cells:
              [
                DataCell(Text("arjun")),
                DataCell(Text("28"))  ,
                DataCell(Text("20000"))




              ]),

            ],),
        ),
      ),
    );
  }

}