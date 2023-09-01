import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/screens/detailinfo/macbook_product_screen/data_provider.dart';

class mackbook extends StatefulWidget {
  const mackbook({Key? key}) : super(key: key);

  @override
  State<mackbook> createState() => _mackbookState();
}

class _mackbookState extends State<mackbook> {


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
                    Text("Macbook air",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),),
                    Text("dont take it lightly",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text("from 119900.00",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold)),
                    ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)))),
                        onPressed: () {
                          var id = macbook_data_provider().macbook_list[3].id;
                          Navigator.pushNamed(context, 'mac_add_to_cart',arguments: {'exampleArgument':id});
                        },
                        child: Text("Buy now")),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 200.h,
                      width: MediaQuery.of(context).size.width.w,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://www.apple.com/newsroom/images/product/mac/standard/Apple_MacBook-Pro_14-16-inch_10182021_big.jpg.large.jpg")),
                      ),
                    ),
                    macbook13pro(),
                    SizedBox(
                      height: 20.h,
                    ),
                    macbooklist(),

                    macaccessories(),
                  ],
                ),
              ),
            ),
          ),

      ),
    );
  }
}

class macbook13pro extends StatelessWidget {
  const macbook13pro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300.h,
          width: MediaQuery.of(context).size.width.w,
          decoration: BoxDecoration(
color: Colors.black,
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                  image: NetworkImage(
                      "https://www.apple.com/v/macbook-pro-13/o/images/meta/macbook-pro-13_overview__bcsyunk73i2a_og.jpg"))),
        ),
        Positioned(
            top: 20.h,
            left: 100.w,
            child: Text(
              "Macbook 13 pro",
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
        Positioned(
            top: 47.h,
            left: 150.w,
            child: Text(
              "Pro anywhere",
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
        Positioned(
            top: 67.h,
            left: 150.w,
            child: Text(
              "from 129900.00",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
        Positioned(
          top: 90.h,
          left: 170.w,
          child: ElevatedButton(
            onPressed: () {
              var id = macbook_data_provider().macbook_list[4].id;
              Navigator.pushNamed(context, 'mac_add_to_cart',arguments: {'exampleArgument':id});
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

class macbooklist extends StatefulWidget {
  macbooklist({Key? key}) : super(key: key);

  @override
  State<macbooklist> createState() => _macbooklistState();
}

class _macbooklistState extends State<macbooklist> {
  List maclist = ["https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp14-silver-select-202110?wid=1808&hei=1680&fmt=jpeg&qlt=90&.v=1632788573000","https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp-spacegray-select-202206?wid=1280&hei=1190&fmt=jpeg&qlt=90&.v=1664497359481","https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp14-spacegray-select-202110?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1632788573000"];
  List title = ["Macbook air","Macbook pro 13","Macbook pro 14"];
  List subtitle = ["M1 chip","M2 chip","M2 chip"];
  List price = ["from 99900.00","from 129900.00","from 194900.00"];


  /*
  PageController controller =  PageController();
  var _currentpage = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      controller.addListener(() {
        _currentpage = controller.page!;
        print(_currentpage);
      });
    });
  }
*/
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.h,
      width: 250.w,
      child: PageView.builder(itemBuilder: (context, index) {
        return  Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      // fit: BoxFit.contain,
                      image: NetworkImage("${maclist[index]}")
                  )
              ),
            ),
            Positioned(
                top: 10.h,
                left: 80.w,
                child: Text("${title[index]}",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),
            Positioned(
                top: 35.h,
                left: 110.w,
                child: Text("${subtitle[index]}",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),)),
            Positioned(
                top: 55.h,
                left: 80.w,
                child: Text("${price[index]}",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),

            Positioned(
              top: 75.h,
              left: 110.w,
              child: ElevatedButton(
                onPressed: (){
                  var id = macbook_data_provider().macbook_list[index].id;

                  Navigator.pushNamed(context, 'mac_add_to_cart',arguments:
                    {'exampleArgument': id}
                    // if(index == 0){
                    //   macbook_data_provider().macbook_list[2].id,
                    // },
                    // macbook_data_provider().macbook_list[1].id,
                    // macbook_data_provider().macbook_list[3].id,
                  );
                },
                child: Text("Buy"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                ),
              ),
            )
          ],
        );
      },
       // controller:controller,
      itemCount: 3,
      ),
    );
  }
}



class macaccessories extends StatelessWidget {
  const macaccessories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300.h,
          width: MediaQuery.of(context).size.width,

          decoration: BoxDecoration(
              color: Colors.black87,
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                  //fit: BoxFit.cover,
                  image: NetworkImage("https://www.apple.com/v/mac-mini/n/images/shared/router_accessories__c3xhduwfg1km_large_2x.jpg")
              )
          ),
        ),
        Positioned(
            top: 10.h,
            left: 120.w,
            child: Text("Accessories",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.white),)),
        Positioned(
            top: 30.h,
            left: 50.w,
            child: Text("Explore mac Accessories",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,color: Colors.white),)),
      Positioned(
        top: 60.h,
        left: 150.w,
        child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
            ),
            onPressed: (){

            }, child:Text("shop"),
        ),
      )
      ],
    );
  }
}




























/*
Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      // fit: BoxFit.contain,
                      image: NetworkImage("${maclist[index]}")
                  )
              ),
            ),
            Positioned(
                top: 5.h,
                left: 80.w,
                child: Text("Macbook air",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)),
            Positioned(
                top: 25.h,
                left: 110.w,
                child: Text("M1 chip",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),)),
            Positioned(
                top: 40.h,
                left: 90.w,
                child: Text("from 11900.00",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),

            Positioned(
              top: 52.h,
              left: 110.w,
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Buy"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                ),
              ),
            )
          ],
        );
 */