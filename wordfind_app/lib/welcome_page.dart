import 'package:flutter/material.dart';

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
              image: AssetImage('assets/images/back1.png' )

            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Padding(padding: EdgeInsets.only(top: 200)), Expanded(child: Column(
              children: [Row(
                mainAxisAlignment: MainAxisAlignment.center ,

              )],
            ))]
          ),
        ),
      ),
    );
  }
}
