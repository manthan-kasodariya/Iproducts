import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:project1/order/fill_details.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/data_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class buy_now extends StatefulWidget {
  const buy_now({Key? key}) : super(key: key);

  @override
  State<buy_now> createState() => _buy_nowState();
}

class _buy_nowState extends State<buy_now> {
  // num? final_price=0;

  DatabaseReference ref = FirebaseDatabase.instance.ref('add_to_cart');

  @override
  Widget build(BuildContext context) {
    final object = Provider.of<data_provider>(context);
    setState(() {
     print(object.final_price);
    });
    void total_price(double final_price, double fina) {
      setState(() {
        final_price = final_price + fina;
        print('++++++$final_price');
      });
      object.final_price = final_price;
      print('+++++++++++++++++++++++$final_price');
    }

    void second(double final_price, double fina) {
      setState(() {
        final_price = final_price - fina;
      });
      print('++++$final_price');
      object.final_price = final_price;
    }



    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('your cart'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              FutureBuilder<List>(
                future: getdata(),
                builder: (context, snapshot) {

                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          int qunt = snapshot.data?[index]['quntity'];
                          String? price;
                          double? convert;

                          if (object.final_price == 0) {
                            for (int i = 0; i < snapshot.data!.length; i++) {
                              price = snapshot.data?[i]['price'];
                              convert = double.parse(price!);
                                object.final_price =
                                    convert! + object.final_price!;

                            }

                            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                              setState(() {
                               object.final_price;
                              });
                            });

                             print('final price is ${object.final_price}');

                          }



                          return ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    snapshot.data?[index]['img'],
                                    scale: 10),
                                radius: 30,
                              ),
                              title: Text(snapshot.data?[index]['title']),
                              subtitle: Text(snapshot.data?[index]['price']),
                              trailing: InputQty(
                                initVal: snapshot.data?[index]['quntity'],
                                minVal: 0,
                                plusBtn: InkWell(
                                    onTap: () {
                                      String price =
                                          snapshot.data?[index]['price'];
                                      double changed = double.parse(price);
                                      print('++++++++++++++++$convert');
                                      total_price(object.final_price, changed);
// double price1 = changed * (qunt + 1);
// String price2 = price1.toString();
                                      String database_id =
                                          snapshot.data?[index]['id'];
                                      ref.child(database_id).update({
// 'price' : price2,
                                        'quntity': qunt = qunt + 1
                                      });

                                    },
                                    child: Icon(Icons.add_circle)),
                                btnColor1: Colors.green,
                                minusBtn: InkWell(
                                    onTap: () {
                                      String price =
                                          snapshot.data?[index]['price'];
                                      double changed = double.parse(price);
//double changed2 = changed/2;
                                      second(object.final_price, changed);

//update

//  double price1 = object.final_price;
// String price2 = price1.toString();
                                      String database_id =
                                          snapshot.data?[index]['id'];

                                      ref.child(database_id).update({
//'price' : price2,
                                        'quntity': qunt = qunt - 1
                                      });
                                      print(snapshot.data?[index]['quntity']);
                                      if(qunt == 0){
                                        String database_id =
                                        snapshot.data?[index]['id'];
                                        ref.child(database_id).remove();
                                      }
                                    },
                                    child: Icon(Icons.remove_circle)),
                                onQtyChanged: (num? value) {
                                  //print(value);
                                },
                              ));
                        },
                        itemCount: snapshot.data?.length,
                      );
                    } else {
                      return Text('no data found');
                    }
                  } else {
                    return Text('no data found');
                  }
                },
              ),
              // Consumer<dataa>(builder: (context,dataa,child){
              //   return Text(dataa.final_price.toString());

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Total Price : ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text('Rs.${object.final_price.toString()}',
                        style: TextStyle(fontSize: 30))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fixedSize: Size(200, 50)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => fill_details(totalprice: object.final_price)));
                  },
                  child: Text(
                    'Place Order',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ))
            ],
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
  if (user != null) {
    String? email = user.email;
    for (int i = 0; i < added_product.length; i++) {
      if (added_product[i]['email'] == email) {
        // print('object');
        data.add(added_product[i]);
      }
    }
  }
  //print('+++++++++++++$data');
  // print(added_product);
  if (data.isNotEmpty) {
    return data;
  } else {
    return m;
  }
}

// class dataa extends ChangeNotifier{
//   num? final_price=0;
//
//   void total_price(num fina){
//
//     final_price = final_price! + fina;
//     print(final_price);
//   }
//
//   void second(num fina){
//     final_price = final_price! - fina;
//     print(final_price);
//   }
//
//   num? get getpr => final_price;
//   @override
// void notifyListeners() {
//   // TODO: implement notifyListeners
//   super.notifyListeners();
// }
//
//
// }
//
//
// ElevatedButton(
// onPressed: () {
// String price =
// snapshot.data?[index]['price'];
// double changed = double.parse(price);
// print('++++++++++++++++$convert');
// total_price(object.final_price, changed);
// // double price1 = changed * (qunt + 1);
// // String price2 = price1.toString();
// String database_id = snapshot.data?[index]['id'];
// ref
//     .child(database_id)
//     .update({
// // 'price' : price2,
// 'quntity': qunt = qunt + 1});
// },
// child: Icon(Icons.add)),

//
// ElevatedButton(
// onPressed: () {
// String price = snapshot.data?[index]['price'];
// double changed = double.parse(price);
// //double changed2 = changed/2;
// second(object.final_price, changed);
//
//
// //update
//
// //  double price1 = object.final_price;
// // String price2 = price1.toString();
// String database_id = snapshot.data?[index]['id'];
//
// ref.child(database_id).update({
// //'price' : price2,
// 'quntity': qunt = qunt - 1});
// print(snapshot.data?[index]['quntity']);
// },
// child: Icon(Icons.remove)),
