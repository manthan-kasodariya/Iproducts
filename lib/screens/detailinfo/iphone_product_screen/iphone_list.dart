//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/add_to_cart.dart';
import 'package:provider/provider.dart';

import 'data_provider.dart';

class iphone_list extends StatelessWidget {
  const iphone_list({Key? key}) : super(key: key);

  static const routname = "iphone_list";

  @override
  Widget build(BuildContext context) {
    final routeargs = ModalRoute.of(context)?.settings.arguments as int;
    // final iphone_list_object = Provider.of<data_provider>(context);
    // print(iphone_list_object.iphonelist[0].id);
    // final object = iphone_list_object.iphoneitems().firstWhere((prod) => prod.id == routeargs);
    final iphone_list_object = Provider.of<data_provider>(context);
    // print(iphone_list_object.iphonelist[0].id);
    final object = iphone_list_object.iphoneitems();
    print(object[routeargs][2].title);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
         title: Text(object[routeargs][0].title),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                      image: DecorationImage(
                          image: NetworkImage(object[routeargs][index].imageurl))),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        object[routeargs][index].title,
                        style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        "> 8gb ram",
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      Text(
                        "> 12mp telephoto",
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      Text(
                        "> True Tone display",
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      Text(
                        "> 1400:1 contrastratio",
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                          onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>iphonebuy(index: index, routeargs1: routeargs)));
                                print(routeargs);
                                print(index);
                                //print(object[routeargs][index]);
                          },
                          child: Text("Buy"))
                    ],
                  ),
                )
              ],
            );
          },
          itemCount: object[routeargs].length),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       iphone11(title: object.title,imageurl: object.imageurl,),
      //       SizedBox(
      //         height: MediaQuery.of(context).size.height * 0.02,
      //       ),
      //       iphone11pro(title: object.title,imageurl: object.imageurl,),
      //       SizedBox(
      //         height: MediaQuery.of(context).size.height * 0.02,
      //       ),
      //       iphone11promax(),
      //
      //     ],
      //   ),
      // ),
    ));
  }
}

// class iphone11 extends StatelessWidget {
//   const iphone11({Key? key, required this.title, required this.imageurl})
//       : super(key: key);
//
//   final String title;
//   final String imageurl;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.3,
//       width: MediaQuery.of(context).size.width,
//       //color: Colors.black,
//       //alignment: Alignment.topLeft,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Container(
//             height: 200,
//             width: 200,
//             decoration: BoxDecoration(
//                 image: DecorationImage(image: NetworkImage(imageurl))),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               //mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style:
//                       TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.02,
//                 ),
//                 Text(
//                   "> 8gb ram",
//                   style: TextStyle(fontSize: 15.sp),
//                 ),
//                 Text(
//                   "> 12mp telephoto",
//                   style: TextStyle(fontSize: 15.sp),
//                 ),
//                 Text(
//                   "> True Tone display",
//                   style: TextStyle(fontSize: 15.sp),
//                 ),
//                 Text(
//                   "> 1400:1 contrastratio",
//                   style: TextStyle(fontSize: 15.sp),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.05,
//                 ),
//                 ElevatedButton(
//                     style: ButtonStyle(
//                         shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10)))),
//                     onPressed: () {},
//                     child: Text("Buy"))
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class iphone11pro extends StatelessWidget {
//   iphone11pro({Key? key, required this.title, required this.imageurl})
//       : super(key: key);
//   final String title;
//   final String imageurl;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.3,
//       width: MediaQuery.of(context).size.width,
//       //color: Colors.black,
//       //alignment: Alignment.topLeft,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Container(
//             height: 200,
//             width: 200,
//             decoration: BoxDecoration(
//                 image: DecorationImage(image: NetworkImage(imageurl))),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               //mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style:
//                       TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.02,
//                 ),
//                 Text(
//                   "> 8gb ram",
//                   style: TextStyle(fontSize: 15.sp),
//                 ),
//                 Text(
//                   "> 12mp telephoto",
//                   style: TextStyle(fontSize: 15.sp),
//                 ),
//                 Text(
//                   "> True Tone display",
//                   style: TextStyle(fontSize: 15.sp),
//                 ),
//                 Text(
//                   "> 1400:1 contrastratio",
//                   style: TextStyle(fontSize: 15.sp),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.05,
//                 ),
//                 ElevatedButton(
//                     style: ButtonStyle(
//                         shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10)))),
//                     onPressed: () {},
//                     child: Text("Buy"))
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class iphone11promax extends StatelessWidget {
//   const iphone11promax({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.3,
//       width: MediaQuery.of(context).size.width,
//       //color: Colors.black,
//       //alignment: Alignment.topLeft,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Container(
//             height: 200,
//             width: 200,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: NetworkImage(
//                         "https://m.media-amazon.com/images/I/61ers6OzvUL._SX522_.jpg"))),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               //mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "iphone11 promax",
//                   style:
//                       TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.02,
//                 ),
//                 Text(
//                   "> 8gb ram",
//                   style: TextStyle(fontSize: 15.sp),
//                 ),
//                 Text(
//                   "> 12mp telephoto",
//                   style: TextStyle(fontSize: 15.sp),
//                 ),
//                 Text(
//                   "> True Tone display",
//                   style: TextStyle(fontSize: 15.sp),
//                 ),
//                 Text(
//                   "> 1400:1 contrastratio",
//                   style: TextStyle(fontSize: 15.sp),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.05,
//                 ),
//                 ElevatedButton(
//                     style: ButtonStyle(
//                         shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10)))),
//                     onPressed: () {},
//                     child: Text("Buy"))
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// Text(object[routeargs][index].title),
// subtitle: Text(object[routeargs][index].desc),