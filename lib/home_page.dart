import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final int days = 30;
    final String name = "vasu";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog app"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days Flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}