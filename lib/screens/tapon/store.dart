import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/ai/add_to_cart_ai.dart';
import 'package:project1/ai/airpod_producr_list.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/add_to_cart.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/iphones.dart';
import 'package:project1/screens/detailinfo/iwatchproductscreen/iwatch.dart';
import 'package:project1/screens/detailinfo/iwatchproductscreen/iwatchproduct.dart';
import 'package:project1/screens/detailinfo/macbook_product_screen/mackbook.dart';
import 'package:project1/ai/ipad_list.dart';
import 'package:project1/screens/tapon/tv.dart';

class store extends StatefulWidget {
  const store({Key? key}) : super(key: key);

  @override
  State<store> createState() => _storeState();
}

class _storeState extends State<store> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Store'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
 //menu(),
              title(
                title1: "Store an best way to shop",
                title2: "",
              ),
              grid(),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 10,
                color: Colors.black12,
              ),
              SizedBox(
                height: 5,
              ),

              slider(),
SizedBox(
  height: 10,
),
              title(title1:"Loud & Clear , rich choice", title2: ""),
              slider2(),
              Divider(
                thickness: 10,
              ),
              //title(title1: "Accessories : finish touch", title2: ""),
              //slider3()
              
            ],
          ),
        ),
      ),
    );
  }
}

class grid extends StatelessWidget {
  const grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      //color: Colors.black,
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.8,
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ipones()));
            },
            child: Griditems(
              url: "https://m.media-amazon.com/images/I/31VjlrbE3bL.jpg",
              lable: "iphone",
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>mackbook()));
            },
            child: Griditems(
              url: "https://m.media-amazon.com/images/I/71TPda7cwUL._SL1500_.jpg",
              lable: "macbook",
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Iwatches()));
            },
            child: Griditems(
              url: "https://m.media-amazon.com/images/I/7122bjHMoFL._SX522_.jpg",
              lable: "iwatch",
            ),
          ),
          InkWell(
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ipad_list()));
          },
            child: Griditems(
                url:
                    "https://m.media-amazon.com/images/I/71ey-9D8yDL._SX522_.jpg",
                lable: "ipad"),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>airpods_list()));
            },
            child: Griditems(
                url:
                    "https://m.media-amazon.com/images/I/615ekapl+pL._SL1500_.jpg",
                lable: "airpods"),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>tv_home()));
            },
            child: Griditems(
                url:
                    "https://m.media-amazon.com/images/I/41LpF5n38kL._SX679_.jpg",
                lable: "T.V stick"),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ipones()));
            },
            child: Griditems(
                url:
                    "https://m.media-amazon.com/images/S/stores-image-uploads-eu-prod/3/AmazonStores/A21TJRUUN4KGV/c0e221835769646ede521e3457ca1849.w1500.h1500.jpg",
                lable: "Accessories"),
          )
        ],
      ),
    );
  }
}

class Griditems extends StatelessWidget {
  Griditems({Key? key, required this.url, required this.lable})
      : super(key: key);

  String url;
  String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("${url}"))),
          child: Text("${lable}"),
        ),
      ],
    );
  }
}

class title extends StatelessWidget {
  title({Key? key, required this.title1, required this.title2})
      : super(key: key);

  String title1;
  String title2;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Container(
            child: Text(
              "${title1}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              // width: MediaQuery.of(context).size.width,
              //color: Colors.blue,
              child: Text(
                "${title2}", style: TextStyle(fontSize: 18),
                overflow: TextOverflow.visible,
                // textScaleFactor: 2.0,
              ),
            ),
          ),
        ]));
  }
}

class slider extends StatelessWidget {
   slider({Key? key}) : super(key: key);

   List title1 = ['iphone 14','i-watch 8','Ipad - Mini'];
   List title2 = ['Big and Bigger','Adventure Awaits','Lovable-Drwawable-Magical'];
   List title3 = ['Rs.79900','Rs.89900','Rs.69900'];

  List img = ["https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/store-card-40-iphone-14-202209?wid=400&hei=500&fmt=jpeg&qlt=95&.v=1661890731783","https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/store-card-40-watch-s8-202209_GEO_IN?wid=400&hei=500&fmt=p-jpg&qlt=95&.v=1661792340440","https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/store-card-40-ipad-202210?wid=400&hei=500&fmt=p-jpg&qlt=95&.v=1667423432053"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        child: PageView.builder(itemBuilder: (context, index) {
          //bool isindex = true;
          Color color;
          if(index == 0 || index == 2){
            color = Colors.black;
          }
          else{
            color = Colors.white;
          }
          return InkWell(
            onTap: (){
              if(index == 0){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>iphonebuy(index: 0, routeargs1: 3)));
              }
              if(index == 1) {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>iwatchbuy(title1: 'iwatch - 8', imageurl1: 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MLYT3_VW_PF+watch-45-alum-midnight-cell-8s_VW_PF_WF_CO_GEO_GB?wid=1400&hei=1400&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1632171392000%2C1661968769713', desc1: '', price: '89900', quntity: 1)));
              }
              if(index == 2){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>airpodsbuy(id: '1', name: 'I - pad mini', imageurl: 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71d9VedmTsL._SX522_.jpg', desc: '', price: '69900', quntity: 1)));
              }
            },
            child: Stack(
              children: [
                 Container(
            //  height: 100,
            //width: 100,
            decoration: BoxDecoration(
              color: Colors.black,
            image: DecorationImage(
              fit: BoxFit.cover,
            image: NetworkImage("${img[index]}",)
            )
            ),
            ),
                Positioned(
                  top: 10,
                    left: 10,
                    child: Text(title1[index],style: TextStyle(color: color))),
                Positioned(
                    top: 29,
                    left: 10,
                    child: Text(title2[index],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: color),)),
                Positioned(
                    top: 60,
                    left: 10,
                    child: Text(title3[index],style: TextStyle(fontSize: 17,color: color),)),
              ],
            ),
          );
        },
        itemCount: 3,
        ),
      ),
    );
  }
}

// class menu extends StatelessWidget {
//   const menu({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 70,
//       width: MediaQuery.of(context).size.width,
//       color: Colors.black,
//       child: GridView.count(
//         crossAxisCount: 1,
//         childAspectRatio: 0.8,
//         scrollDirection: Axis.horizontal,
//         children: [
//           InkWell(
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=>store()));
//             },
//             child: menustrip(
//               lable: 'store',
//             ),
//           ),
//           menustrip(
//             lable: 'macbook',
//           ),
//           menustrip(
//             lable: 'iphones',
//           ),
//           menustrip(
//             lable: 'i-watch',
//           ),
//           menustrip(
//             lable: 'TV & home',
//           ),
//           menustrip(
//             lable: 'support',
//           ),
//         ],
//       ),
//     );
//   }
// }

class menustrip extends StatelessWidget {
  final String? lable;
  const menustrip({Key? key, required this.lable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          alignment: Alignment.center,
          child: Text(
            lable!,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class slider2 extends StatelessWidget {
  slider2({Key? key}) : super(key: key);

  List img = ["https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MQD83?wid=200&hei=200&fmt=jpeg&qlt=95&.v=1660803972361","https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MME73?wid=200&hei=200&fmt=jpeg&qlt=95&.v=1632861342000","https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/airpods-max-select-silver-202011?wid=200&hei=200&fmt=jpeg&qlt=95&.v=1604021221000"];
  List title1 = ['Airpods pro(2nd generation)','Airpods pro(3nd generation)','Airpods Max'];
  List title2 = ['Rs.14900','Rs.19900','Rs.59900'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        child: PageView.builder(itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              if(index == 0){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>airpodsbuy(id: '1', name: 'Airpods 2', imageurl: 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/61CVih3UpdL._AC_SS450_.jpg', desc: '', price: '14900', quntity: 1)));
              }
              if(index == 1){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>airpodsbuy(id: '2', name: 'Airpods 3', imageurl: 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/61CVih3UpdL._AC_SS450_.jpg', desc: '', price: '14900', quntity: 1)));
              }
              if(index == 2){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>airpodsbuy(id: '1', name: 'Air Max', imageurl: 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/41Ur2KJ-r6L.jpg', desc: '', price: '14900', quntity: 1)));
              }
            },
            child: Stack(
              children: [
                Container(
                  //  height: 100,
                  //width: 100,
                  decoration: BoxDecoration(
                      //color: Colors.black,
                      image: DecorationImage(
                        alignment: Alignment.topCenter,
                          fit: BoxFit.fitWidth,
                          scale: 1.0,
                          image: NetworkImage("${img[index]}",)
                      )
                  ),
                ),
                Positioned(
                    bottom: 30,
                    left: 15,
                    child: Text(title1[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
                Positioned(
                    bottom: 0.5,
                    left: 15,
                    child: Text(title2[index],style: TextStyle(fontSize: 18),)),
                Positioned(
                    bottom: 60,
                    left: 10,
                    child: Text("New",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),)),
              ],
            ),
          );
        },
          itemCount: 3,
        ),
      ),
    );
  }
}

// class slider3 extends StatelessWidget {
//   slider3({Key? key}) : super(key: key);
//
//   List mrp = ['Rs.3490','Rs.4900','Rs.5900'];
//   List title1 =  ['Air - Tags','iphone 14 leather case magsafe','iphone 14 clear case with magsafe'];
//   List img = ["https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/store-card-40-holiday-airtag-202211?wid=400&hei=500&fmt=p-jpg&qlt=95&.v=1664908175570","https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MPPN3?wid=200&hei=200&fmt=jpeg&qlt=95&.v=1660952680606","https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MPU63?wid=200&hei=200&fmt=jpeg&qlt=95&.v=1661471392701"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         height: 400,
//         width: 300,
//         child: PageView.builder(itemBuilder: (context, index) {
//           if(index == 0){
//             return
//                  Stack(
//                    children:[
//                      Container(
//                        decoration: BoxDecoration(
//                            //color: Colors.blue,
//                            image: DecorationImage(
//                                image: NetworkImage("https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/store-card-40-holiday-airtag-202211?wid=400&hei=500&fmt=p-jpg&qlt=95&.v=1664908175570")
//                            )
//                        ),
//                      ),
//                      Positioned(
//                        top: 45,
//                        left: 10,
//                        child: Text(title1[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),),
//                      Positioned(
//                          top: 78,
//                          left: 10,
//                          child: Text(mrp[index],style: TextStyle(fontSize: 18,color: Colors.white),)),
//                      Positioned(
//                          top: 15,
//                          left: 10,
//                          child: Text("New",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))
//                    ]
//             );
//           }
//           return Stack(
//             children: [
//               Container(
//                 //  height: 100,
//                 //width: 100,
//                 decoration: BoxDecoration(
//                   //color: Colors.black,
//                     image: DecorationImage(
//                         alignment: Alignment.topCenter,
//                         fit: BoxFit.fitWidth,
//                         scale: 1.0,
//                         image: NetworkImage("${img[index]}",)
//                     )
//                 ),
//               ),
//               Positioned(
//                 bottom: 30,
//                 left: 15,
//                 child: Text(title1[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
//               Positioned(
//                   bottom: 0.5,
//                   left: 15,
//                   child: Text(mrp[index],style: TextStyle(fontSize: 18),)),
//               Positioned(
//                   bottom: 60,
//                   left: 10,
//                   child: Text("New",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),))
//             ],
//           );
//         },
//           itemCount: 3,
//         ),
//       ),
//     );
//   }
// }

