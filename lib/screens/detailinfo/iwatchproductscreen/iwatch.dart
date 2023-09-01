import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/main.dart';
import 'package:project1/screens/detailinfo/iwatchproductscreen/iwatchproduct.dart';
import 'package:project1/screens/detailinfo/iwatchproductscreen/iwatchbuydeclaration.dart';

class Iwatches extends StatefulWidget {
  const Iwatches({Key? key}) : super(key: key);

  @override
  State<Iwatches> createState() => _IwatchesState();
}

class _IwatchesState extends State<Iwatches> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  Text(
                    "iwatch",
                    style:
                        TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                  ),
                  Text("Adventure awaits",
                      style: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("from 89900.00",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold)),
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>iwatchbuy(title1: data[0].title,imageurl1: data[0].imageurl,desc1: data[0].desc,price: data[0].price,quntity: data[0].quntity)));
                      },
                      child: Text("Buy now")),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 250.h,
                    width: MediaQuery.of(context).size.width.w,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.apple.com/newsroom/images/product/watch/standard/Apple-Watch-S8-2up-hero-220907.jpg.landing-big_2x.jpg")),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  iwatchse(),
                  iwatchrow()
                  //iwatchgrid()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class iwatchse extends StatelessWidget {
  const iwatchse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 170.h,
          width: MediaQuery.of(context).size.width.w,
          decoration: BoxDecoration(
              //color: Colors.black87,
              image: DecorationImage(
                  alignment: Alignment.centerRight,
                  image: NetworkImage(
                      "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/watch-se-shop-202209_GEO_IN_FMT_WHH?wid=592&hei=534&fmt=jpeg&qlt=90&.v=1663352131172"))),
        ),
        Positioned(
            //top: MediaQuery.of(context).size.height*0.1,
            left:  MediaQuery.of(context).size.width*0.1,
            child: Row(
              children: [
                Icon(
                  Icons.apple,
                  size: 30.sp,
                ),
                Text("watch SE"),
              ],
            )),
        Positioned(
            top:  MediaQuery.of(context).size.height*0.06,
            left:  MediaQuery.of(context).size.width*0.05,
            child: Text("A great deal to",
                style:
                    TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold))),
        Positioned(
            top:  MediaQuery.of(context).size.height*0.11,
            left:  MediaQuery.of(context).size.width*0.15,
            child: Text("Love",
                style:
                    TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold))),
        Positioned(
          top: MediaQuery.of(context).size.height*0.16,
          left: MediaQuery.of(context).size.width*0.16,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>iwatchbuy(title1: data[1].title,imageurl1: data[1].imageurl,desc1: data[1].desc,price:data[1].price,quntity: data[1].quntity)));
            },
            child: Text("Buy"),
          ),
        )
      ],
    );
  }
}

class iwatchrow extends StatelessWidget {
  const iwatchrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              height:  MediaQuery.of(context).size.height*0.5,
              width: 175.w,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      //fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                      image: NetworkImage("https://www.apple.com/newsroom/images/product/watch/standard/Apple_delivers-apple-watch-series-6_09152020_big.jpg.large.jpg")
                  )
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*0.013,
                left: 40.w,
                child: Text("Watch os 6",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20.sp,color: Colors.white),)),
            Positioned(
                top: MediaQuery.of(context).size.height*0.075,
                left: 20.w,
                child: Text(("Extremely insightful"),style: TextStyle(fontWeight: FontWeight.bold,fontSize:15.sp,color: Colors.white),)),
            
            Positioned(
              top: 90.h,
              left: MediaQuery.of(context).size.width*0.2,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                  ),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>iwatchbuy(title1: data[2].title,imageurl1: data[2].imageurl,desc1: data[2].desc,price: data[2].price,quntity: data[2].quntity)));
                  }, child: Text("Buy")
              ),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              width: 175.w,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      //fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                      image: NetworkImage("https://images.wsj.net/im-618170?width=1280&size=1.33333333")
                  )
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*0.013,
                left: 40.w,
                child: Text("Watch os 9",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20.sp,color: Colors.white),)),
            Positioned(
                top: MediaQuery.of(context).size.height*0.075,
                left: 20.w,
                child: Text(("Extremely insightful"),style: TextStyle(fontWeight: FontWeight.bold,fontSize:15.sp,color: Colors.white),)),

            Positioned(
              top: 90.h,
              left: MediaQuery.of(context).size.width*0.2,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                  ),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>iwatchbuy(title1: data[3].title,imageurl1: data[3].imageurl,desc1: data[3].desc,price: data[3].price,quntity: data[3].quntity,)));
                  }, child: Text("Buy")
              ),
            ),
          ],
        )
      ],
    );
  }
}



/*
class iwatchgrid extends StatelessWidget {
  const iwatchgrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
            );
          }),
    );
  }
}


 */