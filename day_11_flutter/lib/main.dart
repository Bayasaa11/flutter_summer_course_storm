import 'package:flutter/material.dart';

void main() {
  const Text myText = Text('Hello storm');
  const Center myCenterText = Center(
    child: myText,
  );
  const Scaffold myScafold = Scaffold(
    body: myCenterText,
  );
  const MaterialApp myApp = MaterialApp(home: myScafold);
  const MyCrazyApp crazyApp = MyCrazyApp();
  runApp(crazyApp);
}

class MyCrazyApp extends StatelessWidget {
  const MyCrazyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hello Stormers'),
      ),
      body: Center(
        child: Text(
          'Hello Storm',
          style: TextStyle(fontFamily: 'Ribeye' ,fontSize: 24, color: Color(0x98FF61FF)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: printHello,
        child: Image.asset('assets/fb_t.png'),
      ),
    ));
  }
}
void printHello(){
  print('Hello Storm1');
}
