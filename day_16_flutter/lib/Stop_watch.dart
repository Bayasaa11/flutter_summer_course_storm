import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int seconds = 0;
  bool _isTicking = true;
  late Timer timer;
  void _onTick(Timer timer) {
    setState(() {
      ++seconds;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stopwatch')),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '$seconds ${_secondText()}',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _isTicking ? _startTimer : null,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    foregroundColor: MaterialStateProperty.all(Colors.white)),
                child: Text('Start')),
            SizedBox(
              width: 40,
            ),
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: _isTicking ? null : _stopTimer,
                child: Text('Stop')),
          ],
        ),
        TextButton(
            onPressed: _isTicking ? _reset : null,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: Text("Refresh")),
        SizedBox(
          width: 80,
        )
      ]),
    );
  }

  void _reset() {
    timer.cancel();
    setState(() {
      seconds = 0;
    });
  }

  String _secondText() => seconds == 1 ? 'second' : 'seconds';

  void _stopTimer() {
    timer.cancel();
    setState(() {
      _isTicking = true;
    });
  }

  void _startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
    setState(() {
      _isTicking = false;
    });
  }
}
