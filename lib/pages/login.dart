import 'package:flutter/material.dart';
import 'package:flutter_catelog/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  onLogin(BuildContext context) async{
    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
      });              
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
    

  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Username can not be empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText:"Enter username",
                          labelText: "Username"
                        ),
                      ),
                    TextFormField(
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password can not be empty";
                        }
                        else if(value.length < 6 ){
                          return "Password length should be atleast 6";
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
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeButton? 50 : 8),
                      child: InkWell(
                        onTap: () => onLogin(context),
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
                        ),
                      ) ,
                    ),
                  ],
                ),
              )
            ],        
          ),
        ),
      ));
  }
}