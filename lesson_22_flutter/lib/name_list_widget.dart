import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> names = [
    'Johny',
    'James',
    'Tom',
    'Damba',
    'Muugii',
    'pummel',
    'Bruno',
    'Jack',
    'Martin',
    'Damdin',
    'Sodoo',
    'Dulguun',
    'Khongoroo',
    ' Otgoo',
    'Luu',
    'Khangai',
    'Jamsran',
    'Dany',
    'Kani',
    'Tergel',
    'Garid',
    'Tsegts'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homescreen'),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
              child: Text(names[index]),
            );
          }),
    );
  }
}
