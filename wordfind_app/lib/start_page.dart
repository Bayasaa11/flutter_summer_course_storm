import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/input_field.dart';
import 'package:wordfind_app/models/task_model.dart';
import 'package:wordfind_app/models/user_model.dart';
import 'package:wordfind_app/task_page.dart';

User newUser = User('Guest', 0);

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          onPressed: () {
            Navigator.of(context).pop();
            newUser = User('Guest', 0);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50,
          child: Image.asset('assets/images/game_logo.png'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back2.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Image.asset('assets/images/iCodeGuyHead.png'),
              Padding(padding: EdgeInsets.only(top: 20)),
              GradientText('Player Name', 20),
              InputField(onSubmitted: _createUser),
              // input field gedgiig duudah yostoi
              Padding(padding: EdgeInsets.only(top: 20))
            ],
          ),
        ),
      ),
      floatingActionButton: StartButton(
        newUser: newUser,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _createUser(String userName) {
    setState(() {
      newUser.userName = userName;
    });
  }
}

class StartButton extends StatelessWidget {
  const StartButton({super.key, required User newUser});

  @override
  Widget build(BuildContext context) {
    if (newUser.userName == 'Guest') {
      return Container();
    } else {
      return Container(
        width: 310,
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TaskPage(newUser)));
          },
          child: Text(
            'START',
            style: TextStyle(
                fontFamily: 'assets/fonts/Nunito',
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
        ),
      );
    }
  }
}
