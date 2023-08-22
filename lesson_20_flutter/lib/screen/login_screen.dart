import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/components/text_input_field.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32), width: double.infinity, child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, children: [
          Flexible(flex: 2, child: Container()),
         TextInputField(
           hintText :  "Enter Your Email", isPassword: false, editingController: _emailController, textInputType: TextInputType.emailAddress,),
          SizedBox(height: 64,)
      ],
      ),
      ),

      ),
    );
  }
}
