// //import 'dart:html';
//
// import 'package:flutter/material.dart';
// import 'package:project1/screens/home.dart';
// import 'package:project1/screens/products.dart';
// import 'package:project1/user.dart';
// import 'login.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
//
// class register extends StatefulWidget {
//   const register({Key? key}) : super(key: key);
//
//   @override
//   State<register> createState() => _registerState();
// }
//
// class _registerState extends State<register> {
//   // TextEditingController user = TextEditingController();
//
//   TextEditingController email = TextEditingController();
//
//   TextEditingController password = TextEditingController();
//   final key = GlobalKey<FormState>();
//
//
// FirebaseAuth auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           body: SingleChildScrollView(
//             child: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration:const BoxDecoration(
//               image: DecorationImage(
//                 fit: BoxFit.fill,
//                 image: NetworkImage(
//                   "https://webrfree.com/wp-content/uploads/2018/09/Dark_Abstract_52014541.jpg",
//                 ),
//               )
//   ),
//               child: Form(
//                 key: key,
//                 child: Column(
//                   children: [
//                   const  SizedBox(
//                       height: 40,
//                     ),
//                     Text("Register",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
//                    const SizedBox(
//                       height: 100,
//                     ),
//                     TextFormField(
//                        controller: email,
//                       style: TextStyle(fontSize: 18, color: Colors.white),
//                       decoration: const InputDecoration(
//                         enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white)
//                         ),
//                        // disabledBorder: InputBorder.none,
//                         //focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
//                         prefixIcon: Icon(Icons.account_box),
//                         hintStyle: TextStyle(color: Colors.white),
//                         hintText: "enter email",
//                         labelText: "email",
//                         labelStyle: TextStyle(fontSize: 25,color: Colors.white),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         ),
//                       ),
//                       validator: (value){
//               if(value!.isEmpty){
//               return 'please enter email';
//               }
//               return null;
//               },
//                     ),
//
//                     const SizedBox(
//                       height: 50,
//                     ),
//
//                     TextFormField(
//                       controller: password,
//                       style: TextStyle(fontSize: 18, color: Colors.white),
//                       decoration: const InputDecoration(
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.white)
//                         ),
//                         //disabledBorder: InputBorder.none,
//                         //focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
//                         prefixIcon: Icon(Icons.security),
//                         hintStyle: TextStyle(color: Colors.white),
//                         hintText: "enter password",
//                         labelText: "password",
//                         labelStyle: TextStyle(fontSize: 25,color: Colors.white),
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.white),
//                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                         ),
//                       ),
//                       validator: (value){
//                         if(value!.isEmpty){
//                           return 'please enter passowrd';
//                         }
//                         return null;
//                       },
//                     ),
//
//
//                     const SizedBox(
//                       height: 50,
//                     ),
//
//                     // TextFormField(
//                     //   controller: user,
//                     //   decoration: InputDecoration(
//                     //     enabledBorder: OutlineInputBorder(
//                     //         borderSide: BorderSide(color: Colors.white)
//                     //     ),
//                     //     //disabledBorder: InputBorder.none,
//                     //     //focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
//                     //     prefixIcon: Icon(Icons.security),
//                     //     hintStyle: TextStyle(color: Colors.white),
//                     //     hintText: "confirm password",
//                     //     labelText: "confirm password",
//                     //     labelStyle: TextStyle(fontSize: 25,color: Colors.white),
//                     //     border: OutlineInputBorder(
//                     //       borderSide: BorderSide(color: Colors.white),
//                     //       borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                     //     ),
//                     //   ),
//                     // ),
//                    const SizedBox(
//                       height: 50,
//                     ),
//                     InkWell(
//                       onTap: () {
//                           if(key.currentState!.validate()){
//                             auth.createUserWithEmailAndPassword(email: email.text.toString().trim(), password: password.text.toString().trim());
//                             Navigator.push(context,
//                                 MaterialPageRoute(builder: (context) => homescreen()));
//                             print('sign up successful');
//                           }
//
//                       },
//                       child: Container(
//                         //color: Colors.lightBlueAccent.shade100,
//                         height: 50,
//                         width: 150,
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(10)),
//                           color: Colors.lightBlueAccent.shade100,
//                         ),
//                         child:const Text("signup",
//                           style: TextStyle(fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                               color: Colors.white),),
//                       ),
//                     ),
//
//                     TextButton(
//                        onPressed: (){
//                          Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
//                        },
//                         child: const Text("already have account / login",
//                           style: TextStyle(fontSize: 18,
//                               color: Colors.blueGrey,
//                               fontWeight: FontWeight.bold),))
//
//                   ],
//                 ),
//               ),
//       ),
//           )),
//     );
//   }
// }

