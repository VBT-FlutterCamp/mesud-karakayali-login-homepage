
import 'package:flutter/material.dart';

class LoginViewPage extends StatefulWidget {
  const LoginViewPage({ Key? key }) : super(key: key);

  static const routeName = '/login_screen';

  @override
  _LoginViewPageState createState() => _LoginViewPageState();
}


class _LoginViewPageState extends State<LoginViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Login Page"),),
    );
  }
}