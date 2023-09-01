import 'package:flutter/material.dart';

class macbook_model {
  final String id;
  final String title;
  final String imageurl;
  final String desc;
  final String  price;
  final int quntity;

  macbook_model({required this.id,required this.title,required this.imageurl,required this.desc,required this.price,required this.quntity});
}


class macbook_data_provider with ChangeNotifier{
  List<macbook_model> macbook_list = [

    macbook_model(id: '0', title: 'Macbook Air', imageurl: 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp14-silver-select-202110?wid=1808&hei=1680&fmt=jpeg&qlt=90&.v=1632788573000',desc: '',price: '400000',quntity: 1),
    macbook_model(id: '1', title: 'Macbook 13 pro', imageurl: 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp-spacegray-select-202206?wid=1200&hei=630&fmt=jpeg&qlt=95&.v=1664497359481',desc: '',price: '400000',quntity: 1),
    macbook_model(id: '2', title: 'Macbook 14 pro', imageurl: 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp14-spacegray-select-202110?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1632788573000',desc: '',price: '400000',quntity: 1),
    macbook_model(id: '3', title: 'Macbook air', imageurl: 'https://www.apple.com/newsroom/images/product/mac/standard/Apple_MacBook-Pro_14-16-inch_10182021_big.jpg.large.jpg',desc: '',price: '400000',quntity: 1),
    macbook_model(id: '4', title: 'mackbook 13 pro', imageurl: 'https://www.apple.com/v/macbook-pro-13/o/images/meta/macbook-pro-13_overview__bcsyunk73i2a_og.jpg',desc: '',price: '400000',quntity: 1)

  ];

  List<macbook_model> macbook_list_method(){
    return [...macbook_list];
  }

 notifyListeners();
}

