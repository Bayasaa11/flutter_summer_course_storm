import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icodegram_app/resources/auth_methods.dart';
import 'package:icodegram_app/screens/home_screen.dart';

import '../components/text_input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String result = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (result == 'success') {
      setState(() {
        _isLoading = false;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      });

      print('Logged in');
    } else {
      print('not logged in $result');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Flexible(flex: 2, child: Container()),
            SizedBox(height: 64),
            Text('iCodegram',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 35.5333366394043,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 52,
            ),
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
            SizedBox(height: 64),
            InkWell(
              onTap: loginUser,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
                    borderRadius: BorderRadius.circular(5)),
                child: _isLoading
                    ? const Center(
                        child: CircularProgressIndicator(color: Colors.white))
                    : const Text(
                        'Нэвтрэх',
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
              ),
            ),
            SizedBox(height: 64),
            Flexible(flex: 2, child: Container()),
          ]),
        ),
      ),
    );
  }

// void onHomeScreen() {
//   if (_emailController ==  && _passwordController == ){
//
//   }
// }
}
