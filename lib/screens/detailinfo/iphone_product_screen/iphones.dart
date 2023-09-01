import 'dart:ui';
import 'package:project1/widgets/items.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/add_to_cart.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/data_provider.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/iphone_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ipones extends StatefulWidget {
  const ipones({Key? key}) : super(key: key);


  @override
  State<ipones> createState() => _iponesState();
}

class _iponesState extends State<ipones> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                //color: Colors.blue,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      iphonelist(),
                      SizedBox(
                        height: 20.h,
                      ),
                      iphone14(),
                      SizedBox(
                        height: 20.h,
                      ),
                      ihone14pro(),
                      SizedBox(
                        height: 20.h,
                      ),

                      iphonese(),
                      SizedBox(
                        height: 20.h,
                      ),
                      iphoneaccessories(),
                    ],
                  ),
                ),
              ),
            ),


        ),
      );
  }
}

class iphone14 extends StatelessWidget {
  const iphone14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 450.h,
          width: MediaQuery.of(context).size.width.w,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                      "https://m.media-amazon.com/images/I/31VjlrbE3bL.jpg"))),
        ),
        Positioned(
            top: 20.h,
            left: 130.w,
            child: Text(
              "iphone 14",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
        Positioned(
            top: 60.h,
            left: 50.w,
            child: Text(
              "The ultimate phone",
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  //color: Colors.white,
                  foreground: Paint()..shader = LinearGradient(colors: [Colors.grey,Colors.blueGrey]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 200.0))
              ),
            )),
        Positioned(
            top: 100.h,
            left: 140.w,
            child: Text(
              "from 129900.00",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )),
        Positioned(
          top: 130.h,
          left: 160.w,
          child: ElevatedButton(
            onPressed: () {
              print(data_provider().item[0].id);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>iphonebuy(index: 0, routeargs1: 3)));
            },
            child: Text("Buy"),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
            ),
          ),
        )
      ],
    );
  }
}
class ihone14pro extends StatelessWidget {
  const ihone14pro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400.h,
          width: MediaQuery.of(context).size.width.w,
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: NetworkImage(
                      "https://www.apple.com/v/iphone-14-pro/c/images/meta/iphone-14-pro_overview__e414c54gtu6a_og.png?202212150113"))),
        ),
        Positioned(
            top: 20.h,
            left: 120.w,
            child: Text(
              "iphone 14 pro",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
        Positioned(
            top: 60.h,
            left: 110.w,
            child: Text(
              "Pro beyond",
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  //color: Colors.white,
                 foreground: Paint()..shader = LinearGradient(colors: [Colors.purple,Colors.purpleAccent]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
              ),
            )),
        Positioned(
            top: 100.h,
            left: 140.w,
            child: Text(
              "from 129900.00",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
        Positioned(
          top: 130.h,
          left: 160.w,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>iphonebuy(index: 1, routeargs1: 3)));
            },
            child: Text("Buy"),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
            ),
          ),
        )
      ],
    );
  }
}


class iphonese extends StatelessWidget {
  const iphonese({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 450.h,
          width: MediaQuery.of(context).size.width.w,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWjv4pFA-Yb0I5DNZx_qJXwGL4bsGCjOPlsg&usqp=CAU"))),
        ),
        Positioned(
            top: 20.h,
            left: 120.w,
            child: Text(
              "iphone 13 pro",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
        Positioned(
            top: 60.h,
            left: 50.w,
            child: Text(
              "As amazing as ever",
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  //color: Colors.white,
                  foreground: Paint()..shader = LinearGradient(colors: [Colors.green,Colors.green.shade300]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 200.0))
              ),
            )),
        Positioned(
            top: 100.h,
            left: 140.w,
            child: Text(
              "from 129900.00",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )),
        Positioned(
          top: 130.h,
          left: 160.w,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>iphonebuy(index: 1, routeargs1: 2)));
            },
            child: Text("Buy"),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
            ),
          ),
        )
      ],
    );
  }
}






class iphoneaccessories extends StatelessWidget {
  const iphoneaccessories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300.h,
          width: MediaQuery
              .of(context)
              .size
              .width,

          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQilwwlvPKCKRRo6ASXupWJR0c1pndZCCtmZg&usqp=CAU")
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          ),
        ),
        Positioned(
            top: 10.h,
            left: 120.w,
            child: Text("Accessories", style: TextStyle(fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),)),
        Positioned(
            top: 30.h,
            left: 30.w,
            child: Text("Explore iphone Accessories", style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),)),
        Positioned(
          top: 60.h,
          left: 150.w,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
            ),
            onPressed: () {}, child: Text("shop"),
          ),
        ),

      ],
    );
  }
}

class iphonelist extends StatelessWidget {
  const iphonelist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: GridView.count(crossAxisCount: 1,
      childAspectRatio: 1.0,
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'iphone_list',arguments: 0);
                },
                child: Container(
                  height: 150,
                  width: 200,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    //color: Colors.black,
                    image: DecorationImage(
                     // fit: BoxFit.fitWidth,
                      image: NetworkImage("https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-11-pro-midnight-green-2019?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1611101526000"),
                    ),
                  ),

                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text("ipone 11 series",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'iphone_list',arguments: 1);
                },
                child: Container(
                  height: 150,
                  width: 200,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    //color: Colors.black,
                    image: DecorationImage(
                     // fit: BoxFit.fitWidth,
                      image: NetworkImage("https://cdn.cimri.io/image/320x320/apple-iphone-12-5g-64gb-4gb-ram-61-inc-12mp-akilli-cep-telefonu-yesil_309416811.jpg"),
                    ),
                  ),

                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text("ipone 12 series",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'iphone_list',arguments: 2);
                },
                child: Container(
                  height: 150,
                  width: 200,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    //color: Colors.black,
                    image: DecorationImage(
                      //fit: BoxFit.fitWidth,
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuhDzG0fIu4E-MAhUpGaTBZb4RdPze_qXFInQ4XmX0kCm1Jo_0qWmJa1PrU5F6lkGbfjE&usqp=CAU"),
                    ),
                  ),

                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text("ipone 13 series",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
            ],
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, 'iphone_list',arguments: 3);
            },
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 200,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage("https://m.media-amazon.com/images/I/31VjlrbE3bL.jpg"),
                    ),
                  ),

                ),
                SizedBox(
                  height: 5.h,
                ),
                Text("ipone 14 series",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
              ],
            ),
          ),

        ],
      ),
    );
  }
}


