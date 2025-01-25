import 'package:flutter/material.dart';
import 'package:healthcare_brief/components/my_button.dart';
import 'package:healthcare_brief/components/my_textfields.dart';
import 'package:healthcare_brief/components/myregister_btn.dart';
import 'package:healthcare_brief/pages/login_page.dart';

import '../components/square_tile.dart';

class register_page extends StatefulWidget {
  const register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
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
                Icons.person,
                size: 100,
              ),
              SizedBox(
                height: 50,
              ),
              //welcome

              Text(
                "let's make you registered",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              SizedBox(
                height: 45,
              ),

              // username textfield
              MyTextFields(
                controller: usernameController,
                hintext: 'UserName',
                obsecureText: false,
              ),

              SizedBox(
                height: 20,
              ),
              MyTextFields(
                controller: usernameController,
                hintext: 'email',
                obsecureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextFields(
                controller: usernameController,
                hintext: 'adress',
                obsecureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextFields(
                controller: usernameController,
                hintext: 'phone number',
                obsecureText: false,
              ),
              SizedBox(
                height: 20,
              ),

              //password
              MyTextFields(
                controller: passwordController,
                hintext: 'Password',
                obsecureText: true,
              ),

              SizedBox(
                height: 20,
              ),

              // //forgot password
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Text(
              //         "Forgot Password?",
              //         style: TextStyle(color: Colors.grey[600]),
              //       ),
              //     ],
              //   ),
              // ),

              SizedBox(
                height: 18,
              ),
              //sign in btn

              MyregisterButton(onTap: signinuser),

              SizedBox(
                height: 30,
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
                height: 20,
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
                  Text("go back to?"),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "login now ",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
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
