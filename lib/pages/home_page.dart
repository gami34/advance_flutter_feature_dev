import 'package:catalog_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int numbers = 30;
    String name = "gideon";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catelog value"),
      ),
      body: Center(
        child: Text("This is $numbers persons, created by $name!"),
      ),
      drawer: MyDrawer(),
    );
  }
}
