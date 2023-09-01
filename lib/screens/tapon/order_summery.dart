import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/add_to_cart.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/data_provider.dart';
import 'package:provider/provider.dart';


class summery extends StatefulWidget {
  const summery({Key? key}) : super(key: key);

  @override
  State<summery> createState() => _summeryState();
}



class _summeryState extends State<summery> {
  @override
  Widget build(BuildContext context) {
    final object = Provider.of<data_provider>(context);
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
          title: Text('your orders'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
    body: FutureBuilder<List>(
      future:getdata(),
          builder: (context, snapshot) {
      if(snapshot.connectionState == ConnectionState.done){
        if(snapshot.hasData){
          return Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                int a = snapshot.data?[index]['quntity'];
                String b = a.toString();
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(snapshot.data?[index]['img']),
                  ),
                  title: Text(snapshot.data?[index]['title']),
                  subtitle: Row(
                    children: [
                      Text('Price:  ${snapshot.data?[index]['price']}'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Qty : ${b}'),
                    ],
                  ),
                  trailing: ElevatedButton(onPressed: (){
                     object.final_price =  deleteorder(snapshot.data?[index]['id'],snapshot.data?[index]['price'],snapshot.data?[index]['quntity'],object.final_price);
                   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                     setState(() {
                      object.final_price;
                     });
                   });

                    }, child: Text('cancel order')),
                );
              },
                itemCount: snapshot.data?.length,
              ),

              SizedBox(
                height: 40,
              ),
              //
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(width: 6)
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text('Total Payable : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Text(object.final_price.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
              //     ],
              //   ),
              // ),
            ],
          );

        }
        else{
          return CircularProgressIndicator();
        }
      }
      else{
        return CircularProgressIndicator();
      }
    },
    ),

        )


    );
  }
}

Future<List> getdata() async {
  final user = FirebaseAuth.instance.currentUser;
  List m = [];
  DatabaseReference ref = FirebaseDatabase.instance.ref('order');
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


 double deleteorder(String id,String price,int quntity,double totalprice) {
  final user = FirebaseAuth.instance.currentUser;
  DatabaseReference ref = FirebaseDatabase.instance.ref('order');
  double? totalprice1;
  if (user != null) {
    String? email = user.email;
      if (email == email && id == id) {
        ref.child(id).remove();
        double convert = double.parse(price);
        totalprice1 = totalprice - convert * quntity ;
        print(totalprice1);

      }
    }
  return totalprice1!;
  }







// Future<List<Map>> getdata()async{
//   DatabaseReference ref = FirebaseDatabase.instance.ref('order');
//   DatabaseEvent de = await ref.once();
//   List<Map> data = [];
//   Map a = de.snapshot.value as Map;
//   a.forEach((key, value) {
//     data.add(value);
//   });
//
//   print(data);
//   return data;
//
// }

