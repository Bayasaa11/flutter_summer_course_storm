import 'package:flutter/material.dart';
import 'package:icodegram_app/components/text_input_field.dart';
import 'package:icodegram_app/resources/auth_methods.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _repeatPasswordController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                  editingController: _usernameController,
                  textInputType: TextInputType.text,
                  hintText: 'Username',
                ),
                SizedBox(
                  height: 24,
                ),
                TextInputField(
                  isPassword: true,
                  editingController: _passwordController,
                  textInputType: TextInputType.text,
                  hintText: 'Password',
                ),
                SizedBox(height: 24),
                TextInputField(
                  isPassword: true,
                  editingController: _repeatPasswordController,
                  textInputType: TextInputType.text,
                  hintText: 'Repeat passwords',
                ),
                InkWell(
                  onTap: () => {
                    AuthMethods().signUpUser(
                        email: _emailController.text,
                        password: _passwordController.text,
                        username: _usernameController.text)
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      color: Colors.blue,
                    ),
                    child: Text('Register'),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Flexible(flex: 2, child: Container())
              ],
            ),
          )),
    );
  }
}
