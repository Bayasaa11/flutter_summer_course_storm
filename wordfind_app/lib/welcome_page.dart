import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'gradient_letter.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back1.png'),
              fit: BoxFit.cover //BoxFit.cover oruulna
              ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.only(top: 200)),
              Expanded(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GradientLetter(
                        letter: 'W',
                      ),
                      GradientLetter(letter: 'O'),
                      GradientLetter(letter: 'R'),
                      GradientLetter(letter: 'D')
                    ],
                  ),
                  GradientText('Game', 31.6)
                ],
              )),
              Expanded(child: GradientText('Ready', 25))
            ]),
      ),
      floatingActionButton: Container(
          width: 310,
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
            borderRadius: BorderRadius.circular(25),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
            child: Text(
              "play",
              style: TextStyle(
                  fontFamily: 'assets/fonts/Nunito',
                  fontSize: 24,
                  fontWeight: FontWeight.w700
               ),
            ),
          )),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ));
  }
}
