import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  bool showpass =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow[300],
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "Login page",
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 60, right: 60, bottom: 20, top: 60),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "username",
                    labelText: "Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 60, right: 60, top: 10, bottom: 30),
              child: TextField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        if(showpass){
                          showpass=false;
                        }
                        else{
                          showpass=true;
                        }
                      });
                    }, icon: Icon(showpass== true ? Icons.visibility_off : Icons.visibility),),
                    hintText: "password",
                    labelText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, foregroundColor: Colors.green),
            ),
            TextButton(
                onPressed: () {},
                child: Text("Not a user ! create  a new account"))
          ],
        ),
      ),
    );
  }
}
