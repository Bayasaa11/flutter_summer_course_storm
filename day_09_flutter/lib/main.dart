import 'package:flutter/material.dart';

void main() {
  const text = Text('data');
  const centerPosition = Center(
    child: text,
  );
  // const scaffold=
  //  const materialApp=MaterialApp(title: 'Title', home: scaffold);

  runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  const Center( child:Text('Appbar')) ,
          backgroundColor: Colors.blue[100],
      ),
  )));
}
