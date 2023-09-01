import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/ai/add_to_cart_ai.dart';
import 'package:project1/ai/ai_datamodel.dart';

class ipad_list extends StatelessWidget {
  const ipad_list({Key? key}) : super(key: key);

  static const routname = "iphone_list";

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("ipads"),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ipadmini(title: 'ipad -  mini',imageurl: 'https://m.media-amazon.com/images/I/71qV9xzdxzL._SX522_.jpg',),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ipad_pro(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ipad_air()
              ],
            ),
          ),
        ));
  }
}

class ipadmini extends StatelessWidget {
  const ipadmini({Key? key,required this.title,required this.imageurl}) : super(key: key);

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
              if(width < 480){
                fontsize = 12.0;
              }
              else if(width > 480 && width <= 960){
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
                    title,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>airpodsbuy(id: ai_cart1[0].id, name:  ai_cart1[0].name, imageurl:  ai_cart1[0].imageurl, desc:  ai_cart1[0].desc, price:  ai_cart1[0].price,quntity: ai_cart1[0].quntity,)));
                      },
                      child: Text("Buy"))
                ],
              );
            })
          )
        ],
      ),
    );
  }
}

class ipad_pro extends StatelessWidget {
  const ipad_pro({Key? key}) : super(key: key);

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
                        "https://m.media-amazon.com/images/I/81+N4PFF7jS._SL1500_.jpg"))),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:LayoutBuilder(builder: (context, constraints) {
              final width = constraints.maxWidth;
              var fontsize = 12.0;
              if(width < 480){
                fontsize = 12.0;
              }
              else if(width > 480 && width <= 960){
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
                    'ipad pro',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>airpodsbuy(id: ai_cart1[1].id, name:  ai_cart1[1].name, imageurl:  ai_cart1[1].imageurl, desc:  ai_cart1[1].desc, price:  ai_cart1[1].price,quntity: ai_cart1[0].quntity)));
                      },
                      child: Text("Buy"))
                ],
              );
            })
          )
        ],
      ),
    );
  }
}

class ipad_air extends StatelessWidget {
  const ipad_air({Key? key}) : super(key: key);

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
                        "https://m.media-amazon.com/images/I/71VbHaAqbML._SX522_.jpg"))),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:LayoutBuilder(builder: (context, constraints) {
              final width = constraints.maxWidth;
              var fontsize = 12.0;
              if(width < 480){
                fontsize = 12.0;
              }
              else if(width > 480 && width <= 960){
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
                    'ipad-Air',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>airpodsbuy(id: ai_cart1[2].id, name:  ai_cart1[2].name, imageurl:  ai_cart1[2].imageurl, desc:  ai_cart1[2].desc, price:  ai_cart1[2].price,quntity: ai_cart1[0].quntity)));
                      },
                      child: Text("Buy"))
                ],
              );
            })
          )
        ],
      ),
    );
  }
}