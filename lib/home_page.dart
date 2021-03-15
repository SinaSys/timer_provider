import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_provider/timer_info.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1),(timer) {
      var timerInfo = Provider.of<TimerInfo>(context, listen: false);
      timerInfo.updateRemainingTime();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('======strated from scratch=======');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset('assets/stopwatch.png'),
            SizedBox(height: 32),
            Consumer<TimerInfo>(
              builder: (context, data, child) {
                return Text(data.getRemainingTime?.toString() ?? '',
                    style: TextStyle(fontSize: 72));
              },
            ),
          ],
        ),
      ),
    );
  }
}