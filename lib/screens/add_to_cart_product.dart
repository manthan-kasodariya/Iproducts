import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class add_to_cart_product extends StatefulWidget {
  add_to_cart_product({Key? key, required this.index, required this.category1,required this.index_of_clicked_item1})
      : super(key: key);
  String index;
  String category1;
  int index_of_clicked_item1;
  @override
  State<add_to_cart_product> createState() => _add_to_cart_productState();
}

class _add_to_cart_productState extends State<add_to_cart_product> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.category1),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          body: FutureBuilder<List<Map>>(
              future: Mydata(widget.category1, widget.index),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    if (snapshot.data?[widget.index_of_clicked_item1]['id'] == widget.index){
                      return Column(
                        children: [
                          Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            decoration:  BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(snapshot.data?[widget.index_of_clicked_item1]['img'])
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(snapshot.data?[widget.index_of_clicked_item1]['title'],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 20,
                          ),
                          Text(snapshot.data?[widget.index_of_clicked_item1]['desc']),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                fixedSize: const Size(240, 80),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))
                            ),

                            onPressed: (){
                              final user = FirebaseAuth.instance.currentUser;
                               String? email = user!.email;
                                add_to_cart(
                                    snapshot.data?[widget.index_of_clicked_item1]['title'],
                                    'https://m.media-amazon.com/images/I/71GLMJ7TQiL._SL1500_.jpg',
                                    'Apple launched the iPhone 13 in different storage variants along with iPhone 13 mini' ,
                                    snapshot.data?[widget.index_of_clicked_item1]['price'] ,
                                    1,
                                    email
                                );
                            },
                            icon: Icon(Icons.add),
                            label: Text('ADD TO CART'),
                          )
                        ],
                      );






















                      // return ListView.builder(
                      //   itemBuilder: (context, index) {
                      //     return ListTile(
                      //       leading: CircleAvatar(
                      //         foregroundImage: NetworkImage(snapshot.data?[widget.index_of_clicked_item1]['img']),
                      //       ),
                      //       subtitle: Text(snapshot.data?[widget.index_of_clicked_item1]['title']),
                      //       trailing: ElevatedButton(onPressed: (){}, child: Text('Add to cart')),
                      //     );
                      //   },
                      //   itemCount: 1,
                      // );
                    }else{
                      Text('no data found');
                    }

                  } else
                    return Text('no data found');
                } else {
                  return Container();
                }
                return Container();
              }),
        ));
  }
}

Future<List<Map>> Mydata(String category, String id) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref(category);
  DatabaseEvent da = await ref.once();
  List<Map> products = [];
  Map m = da.snapshot.value as Map;
  m.forEach((key, value) {
    products.add(value);
  });
  print(products);
  return products;
}

void add_to_cart(String title, String imageurl, String desc, String price,
    int quntity,String? email) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref('add_to_cart').push();
  String? id = ref.key;
  ref.set({
    'id': id,
    'title': title,
    'img': imageurl,
    'desc': desc,
    'price': price,
    'quntity': quntity,
    'email' : email
  });
}