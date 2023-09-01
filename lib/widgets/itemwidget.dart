import 'package:flutter/material.dart';
import 'package:project1/widgets/items.dart';

class itemwidget extends StatelessWidget {
  final items? item;
  const itemwidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Text(item!.firstname.toString()),
          title: Text(item!.lastname.toString(),style: TextStyle(fontWeight:FontWeight.bold),),
          subtitle: Text(item!.gender.toString()),
          trailing: Text("\$${item!.age.toString()}",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),
        ),
      ),
    );
  }
}
