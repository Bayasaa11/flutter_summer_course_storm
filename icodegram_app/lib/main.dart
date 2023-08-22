import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:icodegram_app/pages/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp( theme: ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color.fromRGBO(0, 0 , 0, 1),
    textTheme: Typography().white.apply(fontFamily: 'Rubik')
  ),
    home: SignUpScreen(),
  ));
}



