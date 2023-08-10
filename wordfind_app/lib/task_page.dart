import 'package:flutter/material.dart';
import 'package:wordfind_app/models/task_model.dart';
import 'package:wordfind_app/models/user_model.dart';
import 'package:wordfind_app/start_page.dart';
import 'package:wordfind_app/task_widget.dart';
import 'data/question.dart';

class TaskPage extends StatefulWidget {
  final User user;

  const TaskPage(this.user, {super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late List<TaskModel> listQuestions;
  late User user;
  GlobalKey<TaskWidgetState> globalKey = GlobalKey();

  @override
  void initState() {
    listQuestions = questions;
    user = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          newUser.userName,
          style: TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/back2.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Expanded(child: LayoutBuilder(
                builder: (context, constraints) {
                  return TaskWidget(constraints.biggest,  listQuestions.map((question) => question.clone()).toList(), key: globalKey );
                },
              )),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                child: Center(
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerRight,
                            colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
                        borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      onPressed: () {
                        globalKey.currentState?.generatePuzzle(loop: listQuestions.map((question) => question.clone()).toList(),);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      child: Text(
                        'Reload',
                        style: TextStyle(
                            fontFamily: 'assets/images/Nunito',
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
