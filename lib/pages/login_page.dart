import 'package:flutter/material.dart';
import 'package:healthcare_brief/components/my_button.dart';
import 'package:healthcare_brief/components/my_textfields.dart';
import 'package:healthcare_brief/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signinuser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              // log

              Icon(
                Icons.lock,
                size: 100,
              ),

              //welcome

              Text(
                "welcome back you've been missed",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              SizedBox(
                height: 25,
              ),

              // username textfield
              MyTextFields(
                controller: usernameController,
                hintext: 'UserName',
                obsecureText: false,
              ),

              SizedBox(
                height: 10,
              ),

              //password
              MyTextFields(
                controller: passwordController,
                hintext: 'Password',
                obsecureText: true,
              ),

              SizedBox(
                height: 10,
              ),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),
              //sign in btn

              MyButton(onTap: signinuser),

              SizedBox(
                height: 10,
              ),
              // continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "or continue with",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),
              // google
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/images/apple.png'),
                  SizedBox(
                    width: 10,
                  ),
                  SquareTile(imagePath: 'lib/images/face (2).png'),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              //register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?"),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Register now ",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
