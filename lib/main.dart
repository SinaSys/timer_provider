import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_provider/timer_info.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => TimerInfo(),
        child: HomePage(),),);}
}