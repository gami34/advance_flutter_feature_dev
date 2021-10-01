import 'package:catalog_app/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.thumbnail),
        title: Text(item.reference),
        subtitle: Text(item.description),
        trailing: Text(
          "\$${item.price.toString()}",
          textScaleFactor: 1.5,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
        ),
      ),
    );
  }
}
