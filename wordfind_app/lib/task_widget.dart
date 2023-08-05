import 'dart:math';
import 'package:flutter/material.dart';
import 'package:wordfind_app/models/char_model.dart';
import 'package:wordfind_app/models/task_model.dart';
import 'package:word_search_safety/word_search_safety.dart';

class TaskWidget extends StatefulWidget {
  final Size size;
  final List<TaskModel> listQuestions;

  const TaskWidget ({super.key, required this.size, required this.listQuestions});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  late Size size;
  late List<TaskModel> listQuestions;
  int currentQuestionIndex=0;
  int hintCount=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    size=widget.size;
    listQuestions=widget.listQuestions;

  }


  @override
  Widget build(BuildContext context) {

    return const Placeholder();
  }
}
