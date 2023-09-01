import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project1/ai/airpod_producr_list.dart';
import 'package:project1/ai/ipad_list.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/add_to_cart.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/buy_now.dart';
import 'package:project1/screens/products.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/iphones.dart';
import 'package:project1/screens/detailinfo/iwatchproductscreen/iwatch.dart';
import 'package:project1/screens/detailinfo/macbook_product_screen/mackbook.dart';
import 'package:project1/screens/tapon/order_summery.dart';
import 'package:project1/screens/tapon/store.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/screens/tapon/tv.dart';

import '../login.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int _currentindex = 0;
  String? email;
  @override
  Widget build(BuildContext context) {
    setState(() {
      final user = FirebaseAuth.instance.currentUser;
      email = user!.email;
    });



    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.sell), label: "products"),
        //  BottomNavigationBarItem(icon: Icon(Icons.explore), label: "explore"),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
          if (_currentindex == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => products()));
            _currentindex = 0;
          }
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.network(
              "https://th.bing.com/th/id/R.fa5e67376018e06bd8ffb06b3129a717?rik=7G91umXpvhJBjg&riu=http%3a%2f%2f1000logos.net%2fwp-content%2fuploads%2f2016%2f10%2fapple-emblem.jpg&ehk=oZn9asOkaHE7jnq1KK2bsdCC3PpQvx52gN9eXh7e294%3d&risl=&pid=ImgRaw&r=0",
              height: 30,
            ),
            Text("Store")
          ],
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>buy_now()));
          }, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            //padding: EdgeInsets.all(10),
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0.5),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://rapidpayusa.com/src/img/contact-form-img.png"),
                  ),
                  accountName: Text(""),
                  accountEmail: Text(email!),
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>summery()));
                },
                leading: Icon(
                  Icons.sell,
                  color: Colors.white,
                ),
                title: Text(
                  "Orders",
                  style: TextStyle(color: Colors.white),
                ),
              ),

              InkWell(
                onTap: () async{
                  await auth.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login1()));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Sign out",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Lets see what to shop',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
                    )),
              ),
              menu(),
              offslider(),
              Divider(
                thickness: 20,
              ),
              SizedBox(
                height: 20,
              ),
              airpods(),
              Divider(
                thickness: 20,
              ),
              SizedBox(
                height: 20,
              ),
              ipad(),
              Divider(
                thickness: 20,
              ),
              SizedBox(
                height: 20,
              ),
              iwatch(),
              Divider(
                thickness: 20,
              ),
              SizedBox(
                height: 20,
              ),
              macbook(),
              Divider(
                thickness: 20,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.8,
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => store()));
            },
            child: menustrip(
              lable: 'store',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => mackbook()));
            },
            child: menustrip(
              lable: 'macbook',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ipones()));
            },
            child: menustrip(
              lable: 'iphones',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Iwatches()));
            },
            child: menustrip(
              lable: 'i-watch',
            ),
          ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => tv_home()));
          //   },
          //   child: menustrip(
          //     lable: 'TV & home',
          //   ),
          // ),
          menustrip(
            lable: 'support',
          ),
        ],
      ),
    );
  }
}

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

class offslider extends StatelessWidget {
  offslider({Key? key}) : super(key: key);

  List imageurl = [
    'https://dealntechcdn.b-cdn.net/wp-content/uploads/2021/06/Apple-iPhone-14-Pro-Max-represents.jpg',
    'https://m.media-amazon.com/images/I/61XO4bORHUL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/71xb2xkN5qL._SX466_.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      height: 300,
      width: 300,
      color: Colors.blueGrey,
      child: PageView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              if(index == 0){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>iphonebuy(index: 2, routeargs1: 1)));
              }
              if(index == 1){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>iphonebuy(index: 2, routeargs1: 3)));
              }
              if(index == 2){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>iphonebuy(index: 0, routeargs1: 3)));
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imageurl[index]), fit: BoxFit.cover)),
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}

class airpods extends StatelessWidget {
  const airpods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => airpods_list()));
      },
      child: Stack(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://media.sketchfab.com/models/d670b14fcb044b928ab7b5f57e13ec2f/thumbnails/6f585c8714f9400da0de8b3df8114432/50fdbd59fffd473ba1807879eff20b73.jpeg"))),
          ),
          Positioned(
              bottom: 0,
              left: 150.w,
              child: Text(
                "Airpods",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ))
        ],
      ),
    );
  }
}

class ipad extends StatelessWidget {
  const ipad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ipad_list()));
      },
      child: Stack(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        "https://www.apple.com/newsroom/images/product/ipad/standard/Apple-iPad-10th-gen-hero-221018_Full-Bleed-Image.jpg.large.jpg"))),
          ),
          Positioned(
              bottom: 0,
              left: 150.w,
              child: Text(
                "Ipads",
                style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

class iwatch extends StatelessWidget {
  const iwatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Iwatches()));
      },
      child: Stack(
        children: [
          Container(
            height: 250.h,
            width: MediaQuery.of(context).size.width.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        "https://i.gadgets360cdn.com/large/apple_watch_wwdc2020_apple_1592852906295.jpg?downsize=950:*&output-quality=80"))),
          ),
          Positioned(
              bottom: 0.h,
              left: 150.w,
              child: Text(
                "iwatch 7",
                style: TextStyle(color: Colors.black, fontSize: 25.sp,fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

class macbook extends StatelessWidget {
  const macbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => mackbook()));
      },
      child: Stack(
        children: [
          Container(
            height: 250.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                //color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        "https://buybackboss.com/wp-content/uploads/2020/03/The-Apple-MacBook-Pro-is-Expensive.jpg"))),
          ),
          Positioned(
              bottom: 20.h,
              left: 140.w,
              child: Text(
                "Macbook",
                style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}



//  signout()async{
//   FirebaseAuth auth = FirebaseAuth.instance;
//   await auth.signOut().then((value) {
//     print('sign out completed');
//   });
// }

/*
lass offslider extends StatelessWidget {
  const offslider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        //width: 300,
      color: Colors.blue,
      child: GridView.count(
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
      childAspectRatio: 0.6,
      children: [
        offslideritems(),
        offslideritems(),

        ],
      ),
    );
  }
}

class offslideritems extends StatelessWidget {
  const offslideritems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://dealntechcdn.b-cdn.net/wp-content/uploads/2021/06/Apple-iPhone-14-Pro-Max-represents.jpg")
            )
          ),
          );
  }
}





 */
