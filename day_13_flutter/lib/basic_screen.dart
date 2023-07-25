import 'package:day_13_flutter/immutable_widget.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Welcome to Flutter'),
        actions: [Icon(Icons.edit), Icon(Icons.add)],
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: ImmutableWidget(),
        )
      ),
      drawer: Drawer(
        backgroundColor: Colors.purple,
        child : Center(

          child: Container(
          color: Colors.lightBlue,
          child: Text("I'm a drawer"),
          ),
        ),
      ),
    );
  }
}
