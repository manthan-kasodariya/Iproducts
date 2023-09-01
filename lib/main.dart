import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/explore.dart';
import 'package:project1/registerr.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/data_provider.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/iphone_list.dart';
import 'package:project1/screens/detailinfo/macbook_product_screen/add_to_cart.dart';
import 'package:project1/screens/detailinfo/macbook_product_screen/data_provider.dart';
import 'package:project1/screens/home.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(builder: (context, child) {
      return MultiProvider(providers: [
          ChangeNotifierProvider(
          create: (context)=> data_provider()),

         ChangeNotifierProvider(
             create: (context) => macbook_data_provider()),
      ],
        child: MaterialApp(
            home:hello(),
          routes: {
              iphone_list.routname :(context) => iphone_list(),
              macbookbuy.routname : (context) => macbookbuy(),
          },// This trailing comma makes auto-formatting nicer for build methods.
        ),
      );
    },
    designSize: Size(360,690),);
  }
}
