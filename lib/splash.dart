import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(DevicePreview(
    isToolbarVisible: true,

    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Splash(),
    ),
  ));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.yellow,
        backgroundColor: Colors.red,
        title: Text("sample page"),
      ),
      body: Container(height: double.infinity,width: double.infinity,
               decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd"
                   "9GcT3kboZAFjqMJxwjUZbYSyrW9OLztG5pmZH7Q&usqp=CAU"),fit:BoxFit.cover )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Image(image: AssetImage("assets/Iconss/facebook.png"),height: 100,width: 100,),
            Text(
              "flutter",
              style: TextStyle(color: Colors.teal, fontSize: 50,fontWeight:FontWeight.w600,fontStyle:FontStyle.italic ),
            ),
          ],
        ),
      ),
    );
  }
}
