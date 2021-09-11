import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);
  final imageUrl = "https://avatars.githubusercontent.com/u/42324889?v=4"; 
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color:Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children:[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Vasu Kushwah"),
                accountEmail: Text("vasukushwah01@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                
              )),
              ListTile(
                leading: Icon(CupertinoIcons.home,color: Colors.white,),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                  color: Colors.white,
                )),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                  color: Colors.white,
                )),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.mail,color: Colors.white,),
                title: Text(
                  "Email me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                  color: Colors.white,
                )),
              )

          ]
        ),
      ),
      
    );
  }
}