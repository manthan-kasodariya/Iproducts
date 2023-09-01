import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class drawer extends StatefulWidget {
   drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

final user = FirebaseAuth.instance.currentUser;
var email;
void hasemail(){
  if(user!=null){
    email = user!.email;
  }
  print(email);
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:ElevatedButton(onPressed: (){
        hasemail();
      }, child: Text('click here'))
    ));
  }
}