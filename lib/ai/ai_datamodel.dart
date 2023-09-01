
class ai {
  String id = '';
  String name = '';
  String imageurl = '';
  String desc = '';
  String price = '';
  int quntity;


 ai({required this.id,required this.name,required this.imageurl,required this.desc,required this.price,required this.quntity});
}
  List<ai> ai_cart =
  [
  ai(id: '1', name: 'airpods2', imageurl: 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MME73?wid=2000&hei=2000&fmt=jpeg&qlt=95&.v=1632861342000', desc: '', price: '20000',quntity: 1),
    ai(id: '2', name: 'airpods3', imageurl: 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MME73?wid=2000&hei=2000&fmt=jpeg&qlt=95&.v=1632861342000', desc: '', price: '23000',quntity: 1),
    ai(id: '3', name: 'air max', imageurl: 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/airpods-max-hero-select-202011_FMT_WHH?wid=607&hei=556&fmt=jpeg&qlt=90&.v=1633623988000', desc: '', price: '25000',quntity: 1),
  ];

List<ai> ai_cart1 =
[
  ai(id: '1', name: 'ipad mini', imageurl: 'https://m.media-amazon.com/images/I/71qV9xzdxzL._SX522_.jpg',desc: '',price: '23000',quntity: 1),
  ai(id: '2', name: 'ipad pro', imageurl: 'https://m.media-amazon.com/images/I/81+N4PFF7jS._SL1500_.jpg', desc: '', price: '23000',quntity: 1),
  ai(id: '3', name: 'ipad Air', imageurl: 'https://m.media-amazon.com/images/I/71VbHaAqbML._SX522_.jpg', desc: '', price: '25000',quntity: 1),
];





