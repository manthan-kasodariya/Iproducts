import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:project1/screens/add_to_cart_product.dart';
import 'package:project1/screens/detailinfo/iphone_product_screen/buy_now.dart';

class products extends StatefulWidget {
  const products({Key? key}) : super(key: key);

  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {
  late ScrollController hide;
  var _isvisible = true;
  @override
/*
  void initState() {
    // TODO: implement initState
    super.initState();
    ScrollController hide = ScrollController();
    _isvisible = true;
    hide.addListener(() {
      if(hide.position.userScrollDirection==ScrollDirection.reverse){
        setState(() {_isvisible = false;});
      }
      if(hide.position.userScrollDirection==ScrollDirection.forward){
        setState(() {_isvisible = true;});
      }
    });
  }
*/
  /*
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }

  loaddata() async {
    //take data from jason
    var catalog = await rootBundle.loadString("assets/files/details.jason");
    //after taking data we need to decode means we can not use it directly in form of jason we need to convert it so
    //decode function will conver it into form of map
    var decodeddata = jsonDecode(catalog);
    //now if we want only the data which is there inside the people means only the datafirst and last that all
    //{
    // people:[
    // {
    // first : "fdfcds",
    // last : "fwdfcwf",
    //.........
    // }
    // ]
    //
    // }
    var peopledata = decodeddata["people"];

    // as we have make catalog model list so we can write now directly catalogmodel.product as we have made it list
    //List<item>  ==  catalogmodel.products(static List<item> products)
    //List list<items> = List.from(peopledata).map((item1) => items.frommap(item1)).toList();

    // here what is happening is we are taking list from people data with the help of list.from function
    // which we have decoded and after decoding it we have got it in form of map
    //now that list we need toconvert it in form of items class  which we have created in items.dart file
    //soin item.dart file we have mapped the data which we have been getting after decoding now we have to take that data
    // and convert it into list as as it is in form of map so here we have use map function to get the mapped data from the items class
    // and convert it into list with help of tolist function

    // here the list from peopledata will be sent to the items.dart file in named constructor frommap and the fromap will return
    // the data in form of map and that will be converted into list with help of tolist
    catalogmodel.product =
        List.from(peopledata).map((item1) => items.frommap(item1)).toList();
    setState(() {});
  }
   */

  @override
  Widget build(BuildContext context) {
    List image = [
      'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/619f09kK7tL._SL1500_.jpg',
      'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/61XO4bORHUL._SL1500_.jpg',
      'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71TPda7cwUL._SL1500_.jpg',
      'https://emx65j8a9o7.exactdn.com/wp-content/uploads/2022/12/MQE23ref_VW_PFwatch-49-titanium-ultra_VW_PF_WF_COwatch-face-49-alpine-ultra_VW_PF_WF_CO_GEO_IN1-1.jpg'
    ];

    List title = ['iphone14', 'iphone14 pro', 'Macbbok Air', 'Iwatch ultra'];
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('explore'),
              centerTitle: true,
              backgroundColor: Colors.black,
            ),
            drawer: Drawer(
              backgroundColor: Colors.black,
              child: btn(),
            ),

        body: empty(),
        ),
    );
}
}
class empty extends StatelessWidget {
  const empty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // appBar: AppBar(
            //   title: Text('explore'),
            //   centerTitle: true,
            //   backgroundColor: Colors.black,
            // ),
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(image: NetworkImage('https://m.economictimes.com/thumb/msid-93706181,width-1200,height-900,resizemode-4,imgsize-24146/iphone-14.jpg'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
                      child: Text('COMMING SOON',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40),),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://media.wired.co.uk/photos/613f59edfdc2b19e254bc4c3/4:3/w_4444,h_3333,c_limit/apple%20event.jpg'))
                    ),
                    child: Text('FAR OUT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(image: NetworkImage('https://i.ytimg.com/vi/nPD4VoZ6g3c/maxresdefault.jpg'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 230,
                  //   width: MediaQuery.of(context).size.width,
                  //
                  // )
                ],
              ),
            )
        ));
  }
}


class btn extends StatelessWidget {
  const btn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select category :',
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        Divider(
          color: Colors.white,
          thickness: 5,
        ),
        SizedBox(
          height: 20,
        ),
        TextButton.icon(
          icon: Icon(
            Icons.mobile_friendly,
            color: Colors.white,
            size: 30,
          ),
          label: Text(
            'I Phone',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => show_on_ui(category: 'I Phone')));
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextButton.icon(
          icon: Icon(
            Icons.laptop,
            color: Colors.white,
            size: 30,
          ),
          label: Text(
            'MacBook',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => show_on_ui(category: 'Mackbook')));
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextButton.icon(
          icon: Icon(
            Icons.earbuds,
            color: Colors.white,
            size: 30,
          ),
          label: Text(
            'Airpods',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => show_on_ui(category: 'airpods')));
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextButton.icon(
          icon: Icon(
            Icons.tablet,
            color: Colors.white,
            size: 30,
          ),
          label: Text(
            'Ipads',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => show_on_ui(category: 'ipads')));
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextButton.icon(
          icon: Icon(
            Icons.watch,
            color: Colors.white,
            size: 30,
          ),
          label: Text(
            'iwatch',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => show_on_ui(category: 'I Watch')));
          },
        )
      ],
    );
  }
}

class show_on_ui extends StatefulWidget {
  show_on_ui({Key? key, required this.category}) : super(key: key);
  String category;
  @override
  State<show_on_ui> createState() => _show_on_uiState();
}

class _show_on_uiState extends State<show_on_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: Container(
        child: FutureBuilder<List<Map>>(
            future: Mydata(widget.category),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                          onTap: () {
                            final id;
                            final index_of_clicked_item;
                            if (index == index) {
                              id = snapshot.data?[index]['id'];
                              index_of_clicked_item = index;
                              print(id);

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => add_to_cart_product(
                                          index: id,
                                          category1: widget.category,
                                          index_of_clicked_item1:
                                              index_of_clicked_item)));
                            }
                          },
                          leading: CircleAvatar(
                            foregroundImage:
                                NetworkImage(snapshot.data?[index]['img']),
                          ),
                          subtitle: Text(snapshot.data?[index]['title']),
                          trailing: Text(snapshot.data?[index]['price']));
                    },
                    itemCount: snapshot.data?.length,
                  );
                } else {
                  return Center(
                    child: Text('no data found'),
                  );
                }
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}

Future<List<Map>> Mydata(String category) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref(category);
  DatabaseEvent da = await ref.once();
  List<Map> products = [];
  Map m = da.snapshot.value as Map;
  m.forEach((key, value) {
    products.add(value);
  });
  print(products);
  return products;
}

/*
ListTile(
leading:
Container(
//height: 600,
//width: 200,
child: Image.network("https://th.bing.com/th/id/OIP.thanxWr7pgMNxd9qTRanEAHaKI?pid=ImgDet&rs=1"),
),
title:Text("iphone 12",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
subtitle: Text("best ever launched product..."),
trailing: Text("\$${"999"}"),

)*/

/*
Container(

          child: Padding(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 170,
                      height: 190,
                      child: Image.network(
                          "https://th.bing.com/th/id/OIP.thanxWr7pgMNxd9qTRanEAHaKI?pid=ImgDet&rs=1"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 0),
                          child: Text("iphone 12 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Container(
                         // color: Colors.cyan,
                            height: 80,
                            width: 180,
                            child: Text(":: newly launched product ,it comes with four colors ,6 chip processor,50mp camera",maxLines: 30,)),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("\$${"999"}"),
                            SizedBox(
                              width: 100,
                            ),
                            ElevatedButton(onPressed: (){}, child: Text("buy"))
                          ],)


                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 4,
                ),
                Row(
                  children: [
                    Container(
                      width: 170,
                      height: 190,
                      child: Image.network(
                          "https://c1.lestechnophiles.com/images.frandroid.com/wp-content/uploads/2021/09/apple-iphone-13-pro-frandroid-2021.png?resize=170"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 0),
                          child: Text("iphone 13 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Container(
                          // color: Colors.cyan,
                            height: 80,
                            width: 200,
                            child: Text(":: newly launched product ,it comes with four colors ,6 chip processor,50mp camera",maxLines: 30,)),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("\$${"999"}"),
                            SizedBox(
                              width: 100,
                            ),
                            ElevatedButton(onPressed: (){}, child: Text("buy"))
                          ],)


                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 4,
                ),
                Row(
                  children: [
                    Container(
                      width: 170,
                      height: 190,
                      child: Image.network(
                          "https://www.bhphotovideo.com/images/images2500x2500/apple_z11b_myd8_05_bh_13_3_macbook_pro_with_1604815.jpg"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 0),
                          child: Text("Macbook ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Container(
                          // color: Colors.cyan,
                            height: 80,
                            width: 200,
                            child: Text(":: newly launched product ,it comes with four colors ,6 chip processor,50mp camera",maxLines: 30,)),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("\$${"999"}"),
                            SizedBox(
                              width: 100,
                            ),
                            ElevatedButton(onPressed: (){}, child: Text("buy"))
                          ],)


                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 4,
                ),
                Row(
                  children: [
                    Container(
                      width: 170,
                      height: 190,
                      decoration: BoxDecoration(

                      ),
                      child: Image.network(
                          "https://th.bing.com/th/id/OIP.yOtEtaQ5YG1GFe8qjW36bQHaHa?pid=ImgDet&rs=1"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 0),
                          child: Text("series 7 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Container(
                          // color: Colors.cyan,
                            height: 80,
                            width: 150,
                            child: Text(":: newly launched product ,it comes with four colors ,6 chip processor,50mp camera",maxLines: 30,)),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Colors.blue,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Text("\$${"999"}"),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.2,
                              ),
                              ElevatedButton(onPressed: (){}, child: Text("buy"))
                            ],),
                        )


                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 4,
                ),
              ],
            ),
          )
 */

//
// FutureBuilder<List<Map>>(
// future: Mydata(),
// builder: (context, snapshot) {
// if(snapshot.connectionState == ConnectionState.done){
// if(snapshot.hasData){
// return ListView.builder(itemBuilder: (context, index) {
// return  ListTile(
// leading: Text(snapshot.data?[index]['title']),
// );
// },
// itemCount: snapshot.data?.length,
// );
// }
// else{
// return Text('do data found');
// }
// }
// else{
// return CircularProgressIndicator();
// }
// },),













//
// SingleChildScrollView(
// child: Column(
// children: List.generate(4, (index) {
// return Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// height: 180,
// width: 200,
// decoration: BoxDecoration(
// image: DecorationImage(
// alignment: Alignment.topLeft,
// image: NetworkImage(
// image[index],
// )))),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// title[index],
// style: TextStyle(
// fontSize: 20, fontWeight: FontWeight.bold),
// ),
// SizedBox(
// height: 5,
// ),
// Text(
// 'Top discount of the sale',
// style: TextStyle(color: Colors.green),
// ),
// SizedBox(
// height: 5,
// ),
// Text(
// 'price : 400000',
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// SizedBox(
// height: 30,
// ),
// Row(
// children: [
// SizedBox(
// height: 100,
// width: 100,
// ),
// ElevatedButton(
// onPressed: () {
// Navigator.push(context, MaterialPageRoute(builder: (context)=>buy_now()));
// }, child: Text('BUY'))
// ],
// )
// ],
// ),
// ]),
// );
// }),
// ),
// )));
