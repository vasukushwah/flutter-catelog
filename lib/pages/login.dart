import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children:[
          Image.asset("assets/images/login_image.png",
          fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
              decoration: InputDecoration(
                hintText:"Enter username",
                labelText: "Username"
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText:"Enter password",
                labelText: "Password"
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: (){
                print("Login button pressed");
              }, 
              child: Text("Login"),
              style: TextButton.styleFrom(),)
          ],
          ),
        )
      ],        
      ));
  }
}