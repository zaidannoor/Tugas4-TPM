import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class StopwatchPage extends StatefulWidget {
  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  final StopWatchTimer _stopWatchTimer = StopWatchTimer();
  bool _isRunning = false;

  @override
  void dispose() {
    super.dispose();
    _stopWatchTimer.dispose();
  }

  void _startStopButtonPressed() {
    if (_stopWatchTimer.isRunning) {
      _stopWatchTimer.onExecute.add(StopWatchExecute.stop);
    } else {
      _stopWatchTimer.onExecute.add(StopWatchExecute.start);
    }
    setState(() {
      _isRunning = !_isRunning;
    });
  }

  void _resetButtonPressed() {
    _stopWatchTimer.onExecute.add(StopWatchExecute.reset);
    setState(() {
      _isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: StreamBuilder<int>(
              stream: _stopWatchTimer.rawTime,
              initialData: _stopWatchTimer.rawTime.value,
              builder: (context, snapshot) {
                final value = snapshot.data!;
                final displayTime = StopWatchTimer.getDisplayTime(value);
                return Text(
                  displayTime,
                  style: TextStyle(fontSize: 40.0),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                child: Text(_isRunning ? 'STOP' : 'START'),
                onPressed: _startStopButtonPressed,
              ),
              ElevatedButton(
                child: Text('RESET'),
                onPressed: _resetButtonPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
