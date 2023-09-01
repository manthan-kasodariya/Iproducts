import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project1/screens/home.dart';
import 'package:project1/user.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool animation = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final key = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: Image.network(
                "https://th.bing.com/th/id/R.18030a87d8370ab68eb276782ba9c2e1?rik=nQkB0%2fKppQxP6Q&riu=http%3a%2f%2fcdn.boldomatic.com%2fresource%2fweb%2fv2%2fimages%2fprofile-dummy-2x.png%3fwidth%3d34%26height%3d34%26format%3djpg%26quality%3d90&ehk=MACwbCb8S86uhONawzckySavDRXhtFrXIQYcYkruH90%3d&risl=&pid=ImgRaw&r=0",
                width: MediaQuery.of(context).size.width,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Form(
              key: key,
              child: TextFormField(
                controller: email,
                style: TextStyle(fontSize: 18, color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  // disabledBorder: InputBorder.none,
                  //focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  prefixIcon: Icon(Icons.account_box),
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: "enter email",
                  labelText: "email",
                  labelStyle: TextStyle(fontSize: 25, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'please enter email';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
                controller: password,
              style: TextStyle(fontSize: 18, color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  // disabledBorder: InputBorder.none,
                  //focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  prefixIcon: Icon(Icons.security),
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: "enter password",
                  labelText: "password",
                  labelStyle: TextStyle(fontSize: 25, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              validator: (value){
                if(value!.isEmpty){
                  return 'please enter password';
                }
                return null;
              },
                ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                if (key.currentState!.validate()) {
                  auth.signInWithEmailAndPassword(
                      email: email.text.toString().trim(),
                      password: password.text.toString()).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()))).onError((error, stackTrace) {print(error);});

                }
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
              },
              child: AnimatedContainer(
                //color: Colors.lightBlueAccent.shade100,
                height: 50,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.lightBlueAccent.shade100,
                ),
                duration: Duration(seconds: 1),
                child: Text(
                  "login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
