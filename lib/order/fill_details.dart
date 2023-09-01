import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project1/screens/tapon/order_summery.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:provider/provider.dart';

import '../screens/detailinfo/iphone_product_screen/data_provider.dart';

class fill_details extends StatefulWidget {
  fill_details({Key? key,required this.totalprice}) : super(key: key);

double totalprice;
  @override
  State<fill_details> createState() => _fill_detailsState();
}

TextEditingController name = TextEditingController();
TextEditingController mobileno = TextEditingController();
TextEditingController pincode = TextEditingController();
TextEditingController address = TextEditingController();
TextEditingController state = TextEditingController();
TextEditingController city = TextEditingController();
String payment = "cash on delivery";



class _fill_detailsState extends State<fill_details> {
   final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final flag = Provider.of<data_provider>(context);
    final dp = Provider.of<data_provider>(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: name,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'enter your full name',
                        labelText: 'Name',
                        prefixIcon: Icon(
                          Icons.account_box,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
                         validator: (val){
                      if(val!.isEmpty){
                        return 'please enter your name';
                      }
                      return null;
                         },

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: mobileno,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: '+91 enter mobile number',
                        labelText: 'mobile no.',
                        prefixIcon: Icon(
                          Icons.mobile_friendly,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
                    validator: (val){
                      if(val!.isEmpty){
                        return 'please enter your mobile no';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: pincode,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'enter pin code',
                        labelText: 'pincode',
                        prefixIcon: Icon(
                          Icons.code,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelStyle: TextStyle(color: Colors.white, fontSize: 20)),

                    validator: (val){
                      if(val!.isEmpty){
                        return 'please enter your pincode';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: address,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'enter your address',
                        labelText: 'Address',
                        prefixIcon: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
                    validator: (val){
                      if(val!.isEmpty){
                        return 'please enter your address';
                      }
                      return null;
                    },

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: state,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'state',
                        labelText: 'state',
                        prefixIcon: Icon(
                          Icons.drag_indicator,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
                    validator: (val){
                      if(val!.isEmpty){
                        return 'please enter your state';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    controller: city,
                    style: TextStyle(color: Colors.white),

                    decoration: InputDecoration(
                        hintText: 'city',
                        labelText: 'city',
                        prefixIcon: Icon(
                          Icons.drag_indicator,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
                    validator: (val){
                      if(val!.isEmpty){
                        return 'please enter your state';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    initialValue: 'cash on delivery',
                    readOnly: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.payment,
                          color: Colors.white,
                        ),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelStyle: TextStyle(color: Colors.white, fontSize: 20)),

                  ),
                  SizedBox(
                    height: 20,
                  ),


                  ElevatedButton(
                    onPressed: () {
                      flag.flag = true;
                      if(formkey.currentState!.validate()){
                        Future<List> a = getdata();
                        a.then((value) {

                          for (int i = 0; i < value.length; i++) {
                            add_to_order(value[i]['title'], value[i]['img'],
                                value[i]['desc'], value[i]['quntity'],value[i]['price']);
                            print('data added');
                          }
                          //widget.flag1 = 1;

                        }).then((value) {Fluttertoast.showToast(msg: 'order placed',backgroundColor: Colors.green);});
                        delete();
                        dp.update_flag(true);
                      }



                      delete();
                      dp.update_flag(true);
                    },
                    child: Text('confirm'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<List> getdata() async {
  final user = FirebaseAuth.instance.currentUser;
  List m = [];
  DatabaseReference ref = FirebaseDatabase.instance.ref('add_to_cart');
  DatabaseEvent db = await ref.once();
  List<Map> added_product = [];
  Map a = db.snapshot.value as Map;
  a.forEach((key, value) {
    added_product.add(value);
  });

  print(added_product);
  List data = [];
  if(user != null){
    String? email = user.email;
    for(int i = 0; i<added_product.length; i++){
      if( added_product[i]['email'] == email){
        print('object');
        data.add(added_product[i]);
      }

    }
  }
  print('+++++++++++++$data');
  // print(added_product);
  if(data.isNotEmpty){
    return data;
  }
  else{
    return m;
  }

}

// Future<List<Map>> getdata() async {
//   DatabaseReference ref = FirebaseDatabase.instance.ref('add_to_cart');
//   DatabaseEvent de = await ref.once();
//   List<Map> fetched_product = [];
//   Map a = de.snapshot.value as Map;
//   a.forEach((key, value) {
//     fetched_product.add(value);
//   });
//   print(fetched_product);
//   return fetched_product;
// }
void add_to_order(
    String title,
    String img,
    String desc,
    int quntity,
    String price
    // String name,
    // String mobile,
    // String pincode,
    // String address,
    // String state,
    // String city
    ) {
  DatabaseReference ref = FirebaseDatabase.instance.ref('order').push();
  final user = FirebaseAuth.instance.currentUser;
  var  email;
  if(user!=null){
    email = user!.email;
  }
  String? id = ref.key;
  ref.set(
      {'id': id,
        'title': title,
        'img': img,
        'desc': desc,
        'quntity': quntity,
        'price' : price,
        'email' : email,
        'name' : name.text.toString(),
        'mobile': mobileno.text.toString(),
        'pincode' : pincode.text.toString(),
        'address' : address.text.toString(),
        'state' : state.text.toString(),
        'city' : city.text.toString(),
        'payment' : payment,

      });
}



// void add_to_order(String title, String img, String desc, int quntity) {
//   DatabaseReference ref = FirebaseDatabase.instance.ref('order').push();
//   final user = FirebaseAuth.instance.currentUser;
//   var  email;
//   if(user!=null){
//     email = user!.email;
//   }
//   String? id = ref.key;
//   ref.set(
//       {'id': id, 'title': title, 'img': img, 'desc': desc, 'quntity': quntity,'email' : email});
// }

void delete() async{
  DatabaseReference ref = FirebaseDatabase.instance.ref('add_to_cart');
  DatabaseEvent de = await ref.once();
  ref.remove();

}












// Future<List<Map>> get_order() async {
//   DatabaseReference ref = FirebaseDatabase.instance.ref('order');
//   DatabaseEvent de = await ref.once();
//   List<Map> fetched_product = [];
//   Map a = de.snapshot.value as Map;
//   a.forEach((key, value) {
//     fetched_product.add(value);
//   });
//   print(fetched_product);
//   return fetched_product;
// }
