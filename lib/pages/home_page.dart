import 'dart:convert';

import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/item_widget.dart';
import 'package:catalog_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    var categoryList = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(categoryList);
    var productData = decodedData["products"];
    // generate data from the list
    List<Item> listItemInstance =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    CatalogModel.items = listItemInstance;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catelog value",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
