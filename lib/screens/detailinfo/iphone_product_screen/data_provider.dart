import 'package:flutter/material.dart';
import 'iphone_model.dart';

class data_provider  with ChangeNotifier {
  bool flag = true;
  double final_price = 0;
  int? quntity;
  List<iphone_model> item = [
    iphone_model(
        id: "1",
        name: "iphone 14",
        desc: "",
        imageurl: "https://m.media-amazon.com/images/I/31VjlrbE3bL.jpg"),
    iphone_model(
        id: "2",
        name: "iphone 14 pro",
        desc: "",
        imageurl:
            "https://m.media-amazon.com/images/I/71ZDY57yTQL._SX522_.jpg"),
    iphone_model(id: '3',
        name: "iphone 13 pro",
        desc: "",
        imageurl: "https://m.media-amazon.com/images/I/61AwGDDZd3L._SL1500_.jpg"),
  ];





  List<iphone_model> items() {
    return [...item];
  }



List m = [
  [

  ]
];

  List<List <iphone_phones_list>> iphonelist = [
    [
      iphone_phones_list(id: '1', title: 'iphone11', imageurl: 'https://m.media-amazon.com/images/I/71QE00iB9IL._SX679_.jpg', desc: '',price: '50000',quntity:1),
      iphone_phones_list(id: '2', title: 'iphone11 pro', imageurl: 'https://m.media-amazon.com/images/I/61fkdeyq5QL._SL1024_.jpg', desc: '',price: '60000',quntity:1),
      iphone_phones_list(id: '3', title: 'iphone11 max', imageurl: 'https://m.media-amazon.com/images/I/61ers6OzvUL._SX522_.jpg', desc: '',price: '70000',quntity:1),
     ],
  [
      iphone_phones_list(id: '4', title: 'iphone12', imageurl: 'https://m.media-amazon.com/images/I/71ZOtNdaZCL._SX679_.jpg', desc: '',price: '78000',quntity:1),
      iphone_phones_list(id: '5', title: 'iphone12 pro', imageurl: 'https://m.media-amazon.com/images/I/71xkMA+gvYL._SX522_.jpg', desc: '',price: '85000',quntity:1),
      iphone_phones_list(id: '6', title: 'iphone12 max', imageurl: 'https://m.media-amazon.com/images/I/71MHTD3uL4L._SX466_.jpg', desc: '',price: '91000',quntity:1),
    ],

    [
      iphone_phones_list(id: '7', title: 'iphone13', imageurl: 'https://m.media-amazon.com/images/I/61cMQeVEGKL._SX466_.jpg', desc: '',price: '97000',quntity:1),
      iphone_phones_list(id: '8', title: 'iphone13 pro', imageurl: 'https://m.media-amazon.com/images/I/61jLiCovxVL._SL1500_.jpg', desc: '',price: '105000',quntity:1),
      iphone_phones_list(id: '9', title: 'iphone13 max', imageurl: 'https://m.media-amazon.com/images/I/611ovP2GkrL._SL1500_.jpg', desc: '',price: '112000',quntity:1),
    ],

    [
      iphone_phones_list(id: '10', title: 'iphone14', imageurl: 'https://m.media-amazon.com/images/I/61bK6PMOC3L._SX522_.jpg', desc: '',price: '120000',quntity:1),
      iphone_phones_list(id: '11', title: 'iphone14 pro', imageurl: 'https://m.media-amazon.com/images/I/71ZDY57yTQL._SX522_.jpg', desc: '',price: '135000',quntity:1),
      iphone_phones_list(id: '12', title: 'iphone14 max', imageurl: 'https://m.media-amazon.com/images/I/610pghkO81L._SX522_.jpg', desc: '',price: '150000',quntity:1),
    ]


  ];

List<List<iphone_phones_list>> iphoneitems(){
  return [...iphonelist];
}
  void update_flag(bool flag2) {
    flag = flag2;
  }

  void update_price(double price2) {
    final_price = price2;
  }


  notifyListeners();

}
