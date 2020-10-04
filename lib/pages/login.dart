import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginsigup/provider/authprovider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthProvider _authProvider = AuthProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: ListView(
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'email'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(hintText: 'password'),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              minWidth: 100,
              color: Colors.pink,
              onPressed: () {
                _authProvider.signIn(
                    emailController.text, passwordController.text).then((value) {
                      print('user logged inn');
                });
              },
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
