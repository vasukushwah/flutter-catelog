import 'package:flutter/material.dart';
import 'package:flutter_catelog/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText:"Enter password",
                  labelText: "Password"
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () async{
                  setState(() {
                    changeButton = true;
                  });

                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton? 50: 140,
                  height: 50,
                  alignment: Alignment.center,
                  child: changeButton ? Icon(Icons.done,color: Colors.white,) : Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton? 50 : 8),
                  ), 
                ),
              ),
              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   }, 
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: Size(140, 40)),)
            ],
            ),
          )
        ],        
        ),
      ));
  }
}