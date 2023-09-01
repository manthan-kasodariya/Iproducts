import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/buy_now.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/data_provider.dart';
import 'package:provider/provider.dart';
import 'iwatchbuydeclaration.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';

class iwatchbuy extends StatefulWidget {
  iwatchbuy({Key? key, required this.title1,required this.imageurl1,required this.desc1,required this.price,required this.quntity
  }) : super(key: key);

  final String title1;
  final String imageurl1;
  final String desc1;
  final String price;
  final int quntity;

  @override
  State<iwatchbuy> createState() => _iwatchbuyState();
}
showtoast(String msg) {
  Fluttertoast.showToast(
      msg: msg,
      backgroundColor: Colors.red,
      toastLength: Toast.LENGTH_LONG,
      fontSize: 20,
      textColor: Colors.white);
}
void add_to_cart(
    String title,
    String imageurl,
    String desc,
    String price,
    int quntity,
    String email,

    ) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref('add_to_cart').push();

  String? id = ref.key;
  ref.set({
    'id': id,
    'title': title,
    'img': imageurl,
    'desc': desc,
    'price': price,
    'quntity' : quntity,
    'email' : email
  });
}

Future<List<Map>> getdata(
    String name, String imageurl, String desc, String price,int quntity,String email) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref('add_to_cart');
  DatabaseEvent db = await ref.once();
  List<Map> added_product = [];
  Map a = db.snapshot.value as Map;
  a.forEach((key, value) {
    added_product.add(value);
  });
  int i;
  for (i = 0; i < added_product.length; i++) {
    if (added_product[i]['title'] == name && added_product[i]['email'] == email) {
      showtoast('item already there in cart');
      break;
    }
    print('i is $i');
  }
  if (i == added_product.length) {
    add_to_cart(name, imageurl, desc, price,quntity,email);
    showtoast('item added to cart');
  }


  print(added_product);
  return added_product;
}

class _iwatchbuyState extends State<iwatchbuy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            iimage(imageurl2: widget.imageurl1,),
            idesc(title2: widget.title1),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ibuttons(title1: widget.title1, imageurl1: widget.imageurl1, desc1: widget.desc1, price: widget.price,quntity: widget.quntity,),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

          ],
        ),
      ),
    ));
  }
}

class iimage extends StatelessWidget {
  iimage({Key? key,required this.imageurl2}) : super(key: key);

  final String imageurl2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "${imageurl2}"))),
    );
  }
}

class idesc extends StatelessWidget {
   idesc({Key? key,required this.title2}) : super(key: key);

   String title2;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            title2,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                  "Apple Watch Series   have a water resistance rating of 50 metres under ISO standard 22810:2010. This means that they may However, the For additional information, see support.apple.com/en-in/HT205000. Series 8 is also rated IP6X dust resistant.",
                  style: TextStyle(
                      fontSize: 17,
                      foreground: Paint()
                        ..color = Colors.blueGrey.withOpacity(1.0)))),
        ],
      ),
    );
  }
}

class ibuttons extends StatelessWidget {
   ibuttons({Key? key,required this.title1,required this.imageurl1,required this.desc1,required this.price,required this.quntity}) : super(key: key);
  final String title1;
  final String imageurl1;
  final String desc1;
  final String price;
  final int quntity;
  @override
  Widget build(BuildContext context) {
    final flag = Provider.of<data_provider>(context);
    final pro_price = Provider.of<data_provider>(context);
    return Column(
      children: [
        ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.black,
                fixedSize: Size(240, 80),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(50))),
            onPressed: () {
              pro_price.update_price(0);
              print('__________________${pro_price.final_price}');
              final user = FirebaseAuth.instance.currentUser;
              var email;
              if(user!= null){
                email = user.email;
              }
              if(flag.flag){
                add_to_cart(title1, imageurl1, desc1, price, quntity, email);
                flag.update_flag(false);
              }
              else{
                getdata(title1,imageurl1,desc1,price,quntity,email);
              }

            },
            icon: Icon(Icons.add),
            label: Text("Add to cart")),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        // ElevatedButton.icon(
        //     style: ElevatedButton.styleFrom(
        //         onPrimary: Colors.white,
        //         primary: Colors.black,
        //         fixedSize: Size(240, 80),
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadiusDirectional.circular(50))),
        //     onPressed: () {},
        //     icon: Icon(Icons.favorite),
        //     label: Text("whishlist")),
      ],
    );
  }
}

// class istraps extends StatelessWidget {
//   const istraps({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           height: MediaQuery.of(context).size.height * 0.5,
//           width: MediaQuery.of(context).size.width,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               image: DecorationImage(
//                   fit: BoxFit.fitWidth,
//                   scale: 1.9,
//                   alignment: Alignment.bottomCenter,
//                   image: NetworkImage(
//                       "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/watch-bands-header-202209_FMT_WHH?wid=650&hei=420&fmt=jpeg&qlt=90&.v=1660679592861"))),
//         ),
//         Positioned(
//             top: MediaQuery.of(context).size.height * 0.012,
//             left: MediaQuery.of(context).size.width * 0.29,
//             child: Text(
//               "I watch straps",
//               style: TextStyle(
//                   fontSize: 25.sp,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black),
//             )),
//         Positioned(
//           top: MediaQuery.of(context).size.height * 0.09,
//           left: MediaQuery.of(context).size.width * 0.43,
//           child: ElevatedButton(
//             onPressed: () {},
//             child: Text("Buy"),
//             style: ButtonStyle(
//               shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30))),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
