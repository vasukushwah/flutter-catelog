import 'package:flutter/material.dart';
import 'package:flutter_catelog/pages/home.dart';
import 'package:flutter_catelog/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/login",
      routes: {
        "/": (context) =>  Login(),
        "/login":(context) => Login(),
      }
    );
  }
}