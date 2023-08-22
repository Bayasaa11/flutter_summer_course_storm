import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/text_input_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Flexible(flex: 2, child: Container()),
            SizedBox(height: 64),
            TextInputField(
              isPassword: false,
              editingController: _emailController,
              textInputType: TextInputType.emailAddress,
              hintText: 'Email address',
            ),
            SizedBox(
              height: 24,
            ),
            TextInputField(
              isPassword: false,
              editingController: _passwordController,
              textInputType: TextInputType.text,
              hintText: 'Username',
            ),
          ]),
        ),
      ),
    );
  }
}
