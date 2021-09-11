import 'package:flutter/material.dart';
import 'package:flutter_catelog/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final int days = 30;
    final String name = "vasu";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days Flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}