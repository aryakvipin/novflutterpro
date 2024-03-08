import 'package:flutter/material.dart';

//imported googles material design library
void main() {
  runApp(
    /**Our App Widget Tree Starts Here**/
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
          backgroundColor: Colors.greenAccent[400],
          centerTitle: true,
        ), //AppBar
        body: Center(
          /** ConstrainedBox Widget **/
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 100,
              minHeight: 80,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 200,
                minHeight: 30,
              ),
              child: ElevatedButton(

                child: Text('Woolha', style: TextStyle(color: Colors.white)),
                onPressed: () {},
              ),
            ),
          ) //ConstrainedBox
      ), //Center
    ), //Scaffold
  ), //MaterialApp
  );
}
