import 'package:flutter/material.dart';

import 'loginwithvalid.dart';
import 'newhome.dart';


class Registerpage extends StatefulWidget {
  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {

  GlobalKey<FormState> formley=GlobalKey();
  bool showpass =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow[300],
        child: Form(
          key:formley ,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                "Register page",
                style: TextStyle(
                    color: Colors.red, fontSize: 30, fontWeight: FontWeight.w800),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 60, bottom: 20, top: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Name",
                      labelText: "Name"),
                  validator: (username){
                    if(username!.isEmpty ) {
                      return " Enter  a  Name";
                    }
                    else
                    {
                      return null;
                    }
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 60, bottom: 20,),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Email",
                      labelText: "Email"),
                  validator: (email){
                    if(email!.isEmpty || !email.contains("@") || !email.contains(".")) {
                      return " Enter  a valid  email";
                    }
                    else
                    {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 60, top: 10, bottom: 30),
                child: TextFormField(
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
                  validator: (password){
                    if(password!.isEmpty || password.length<8){
                      return "Enter valid password";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  final valid=formley.currentState!.validate();
                  if(valid){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>newhome()));
                  }
                },
                child: Text("Register"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.green),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
                  },
                  child: Text(" Already a user ! Login"))
            ],
          ),
        ),
      ),
    );
  }
}
