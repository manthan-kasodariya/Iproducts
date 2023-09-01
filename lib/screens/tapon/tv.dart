import 'package:flutter/material.dart';
import 'package:project1/screens/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class tv_home extends StatefulWidget {
  const tv_home({Key? key}) : super(key: key);

  @override
  State<tv_home> createState() => _tv_homeState();
}

class _tv_homeState extends State<tv_home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
             ttv(),
              text(),
              SizedBox(
                height: 10,
              ),
              applehome(),
              tvrow()
            ],
          ),
        ),
      ),
    ));
  }
}

class ttv extends StatelessWidget {
  const ttv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage("https://www.apple.com/newsroom/images/product/tv/standard/Apple-TV-4K-hero-221018.jpg.og.jpg?202212091547")
          )
      ),
    );
  }
}

class text extends StatelessWidget {
  const text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.h,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          alignment: Alignment.center,
          child:  Text("The future hits home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35.sp),),
        ),
        Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            alignment: Alignment.center,
            child: Text("Simply connect your favourite devices and transform your house into a remarkably smart, convenient and entertaining home. Control lights, locks and thermostats with your iPhone — or just your voice. Play any song, in any room, from anywhere. And elevate movie night with theatre-like picture and sound. All with the security and privacy of Apple.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp,foreground: Paint()..color = Colors.blueGrey.withOpacity(0.6))))
      ],
    );
  }
}

class applehome extends StatelessWidget {
  const applehome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage("https://www.apple.com/v/tv-home/i/images/meta/tv-home_wechat__es3wm0y2v10m_og.png")
          )
      ),
    );
  }
}

class tvrow extends StatelessWidget {
  const tvrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              height: 300.h,
              width: 175.w,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      fit: BoxFit.none,
                      scale: 2.8,
                      alignment: Alignment.bottomCenter,
                      image: NetworkImage("https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/homepod-mini-og-202110?wid=1200&hei=630&fmt=jpeg&qlt=95&.v=1632930650000")
                  )
              ),
            ),
            Positioned(
                top: 20.h,
                left: 40.w,
                child: Text("Home pod",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20.sp,color: Colors.white),)),
            Positioned(
                top: 50.h,
                left: 20.w,
                child: Text(("Room filling sound "),style: TextStyle(fontWeight: FontWeight.bold,fontSize:15.sp,color: Colors.white),)),

            Positioned(
              top: 90.h,
              left: 50.w,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                  ),
                  onPressed: (){}, child: Text("Buy")
              ),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              height: 300.h,
              width: 175.w,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                      image: NetworkImage("https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/apple-tv-4k-hero-select-202210_FMT_WHH?wid=940&hei=1112&fmt=p-jpg&qlt=95&.v=1664896361164")
                  )
              ),
            ),
            Positioned(
                top: 20.h,
                left: 65.w,
                child: Text("T.v",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20.sp,color: Colors.white),)),
            Positioned(
                top: 50.h,
                left: 20.w,
                child: Text(("experiance apple t.v"),style: TextStyle(fontWeight: FontWeight.bold,fontSize:15.sp,color: Colors.white),)),

            Positioned(
              top: 90.h,
              left: 60.w,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                  ),
                  onPressed: (){}, child: Text("Buy")
              ),
            ),
          ],
        )
      ],
    );
  }
}




