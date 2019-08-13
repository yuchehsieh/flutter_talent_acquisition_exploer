import 'package:flutter/material.dart';
import 'package:talent_acquisition_exploer/screens/onBoardScreen.dart';
import 'package:talent_acquisition_exploer/screens/SiteApplet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
        textTheme: TextTheme(
          title: TextStyle(color: Colors.black, fontSize: 50),
        ),
      ),
      home: OnBoardScreen(),
      routes: {
        SiteApplet.routeName: (_) => SiteApplet(),
      },
    );
  }
}
