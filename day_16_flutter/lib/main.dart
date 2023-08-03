import 'package:flutter/material.dart';
import 'package:day_16_flutter/Stop_watch.dart';


void main() {
  runApp( StopWatchApp());
}

class StopWatchApp extends StatelessWidget {
  const StopWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StopWatch(),
    );
  }
}




