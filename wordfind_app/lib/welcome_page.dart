import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'gradient_letter.dart';
import 'package:wordfind_app/start_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Color(0xFFFBF5F2),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/back1.png'),
                  fit: BoxFit.cover //BoxFit.cover oruulna
                  ),
              // gradient: LinearGradient(
              //     begin: Alignment.centerLeft,
              //     end: Alignment.centerRight,
              //     colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
              borderRadius: BorderRadius.circular(25)),
          child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(padding: EdgeInsets.only(top: 200)),
              Column(

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
                    GradientText('Game', 31.6),
                    Image.asset('assets/images/iCodeGuy.png', fit: BoxFit.fitHeight,),
                    // Container(
                    //   width: 150,
                    //   height: 150,
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(image: AssetImage('assets/images/iCodeGuy.png',), fit: BoxFit.cover)
                    //   ),
                    // )
                  ],
                ),
               GradientText('Ready', 25),
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
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => StartPage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: Text(
                "PLAY",
                style: TextStyle(
                    fontFamily: 'assets/fonts/Nunito',
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
