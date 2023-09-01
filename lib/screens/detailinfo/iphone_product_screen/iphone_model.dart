import 'package:flutter/foundation.dart';

class iphone_model{
  final String id;
  final String name;
  final String desc;
  final String imageurl;


  iphone_model({required this.id,
    required this.name,
    required this.desc ,
    required this.imageurl});

}


class iphone_phones_list{
  final String id;
  final String title;
  final String imageurl;
  final String desc;
  final String price;
  int quntity = 0;


  iphone_phones_list({required this.id,
    required this.title,
    required this.imageurl,
    required this.desc,
    required this.price,
    required this.quntity
  });
}