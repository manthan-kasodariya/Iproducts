import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/ai/ai_datamodel.dart';

import 'add_to_cart_ai.dart';

class airpods_list extends StatelessWidget {
   airpods_list({Key? key}) : super(key: key);

  static const routname = "iphone_list";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Airpods"),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                airpod_2nd_gen(title: 'airpod 2nd gen',imageurl: 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MME73?wid=2000&hei=2000&fmt=jpeg&qlt=95&.v=1632861342000',),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                airpod_3rd_gen(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                airpod_max()
              ],
            ),
          ),
        ));
  }
}

class airpod_2nd_gen extends StatelessWidget {
   airpod_2nd_gen({Key? key,required this.title,required this.imageurl}) : super(key: key);

  final String title;
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      //color: Colors.black,
      //alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageurl))),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: LayoutBuilder(builder: (context, constraints) {
              final width = constraints.maxWidth;
              var fontsize = 12.0;
              if(width <= 480){
                fontsize = 12.0;
              }
              else if(width > 480 && width < 960){
                fontsize = 16.0;
              }
              else{
                fontsize = 12.0;
              }

              return Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Airpods 3 gen",
                    style:
                    TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    "> 8gb ram",
                    style: TextStyle(fontSize: fontsize),
                  ),
                  Text(
                    "> 12mp telephoto",
                    style: TextStyle(fontSize: fontsize),
                  ),
                  Text(
                    "> True Tone display",
                    style: TextStyle(fontSize: fontsize),
                  ),
                  Text(
                    "> 1400:1 contrastratio",
                    style: TextStyle(fontSize: fontsize),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>airpodsbuy(id:ai_cart[1].id , name: ai_cart[1].name, imageurl:ai_cart[1].imageurl, desc:ai_cart[1].desc, price: ai_cart[1].price,quntity: ai_cart[1].quntity,)));
                      },
                      child: Text("Buy"))
                ],
              );
            }))
        ],
      ),
    );
  }
}

class airpod_3rd_gen extends StatelessWidget {
  const airpod_3rd_gen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      //color: Colors.black,
      //alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MME73?wid=2000&hei=2000&fmt=jpeg&qlt=95&.v=1632861342000"))),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: LayoutBuilder(builder: (context, constraints) {
            final width = constraints.maxWidth;
            var fontsize = 12.0;
            if(width <= 480){
              fontsize = 12.0;
            }
            else if(width > 480 && width < 960){
              fontsize = 16.0;
            }
            else{
              fontsize = 12.0;
            }

              return Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Airpods 3 gen",
                    style:
                    TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    "> 8gb ram",
                    style: TextStyle(fontSize: fontsize),
                  ),
                  Text(
                    "> 12mp telephoto",
                    style: TextStyle(fontSize: fontsize),
                  ),
                  Text(
                    "> True Tone display",
                    style: TextStyle(fontSize: fontsize),
                  ),
                  Text(
                    "> 1400:1 contrastratio",
                    style: TextStyle(fontSize: fontsize),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>airpodsbuy(id:ai_cart[1].id , name: ai_cart[1].name, imageurl:ai_cart[1].imageurl, desc:ai_cart[1].desc, price: ai_cart[1].price,quntity: ai_cart[1].quntity,)));
                      },
                      child: Text("Buy"))
                ],
              );
            }))
        ],
      ),
    );
  }
}

class airpod_max extends StatelessWidget {
  const airpod_max({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      //color: Colors.black,
      //alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/airpods-max-hero-select-202011_FMT_WHH?wid=607&hei=556&fmt=jpeg&qlt=90&.v=1633623988000"))),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:LayoutBuilder(builder: (context,c){
              final width = c.maxWidth;
              var fontsize = 12.0;
              if(width<=480){
                fontsize = 12.0;
              }else if(width >480 && width<=960){
                fontsize = 16.0;
              }else{
                fontsize = 12.0;
              }

              return Column(
//mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Airpods max",
                    style:
                    TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    "> 8gb ram",
                    style: TextStyle(fontSize: fontsize),
                  ),
                  Text(
                    "> 12mp telephoto",
                    style: TextStyle(fontSize: fontsize),
                  ),
                  Text(
                    "> True Tone display",
                    style: TextStyle(fontSize: fontsize),
                  ),
                  Text(
                    "> 1400:1 contrastratio",
                    style: TextStyle(fontSize: fontsize),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>airpodsbuy(id:ai_cart[2].id , name: ai_cart[2].name, imageurl:ai_cart[2].imageurl, desc:ai_cart[2].desc, price: ai_cart[2].price,quntity: ai_cart[2].quntity,)));
                      },
                      child: Text("Buy"))
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}


// }
/*
 Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Airpods 3 gen",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>airpodsbuy(id:ai_cart[1].id , name: ai_cart[1].name, imageurl:ai_cart[1].imageurl, desc:ai_cart[1].desc, price: ai_cart[1].price)));
                    },
                    child: Text("Buy"))
              ],
            ),
 */