import 'package:flutter_web/material.dart';

import './pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connect Building Solutions',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.red,
        textTheme: TextTheme(
          display1: TextStyle(
            color: Colors.black,
          ),
          display2: TextStyle(
            color: Colors.black,
          ),
          display3: TextStyle(
            color: Colors.black,
          ),
          display4: TextStyle(
            color: Colors.black,
          ),
          headline: TextStyle(
            color: Colors.black,
          ),
          overline: TextStyle(
            color: Colors.black,
          ),
          subhead: TextStyle(
            color: Colors.black,
          ),
          button: TextStyle(
            color: Colors.black,
          ),
          subtitle: TextStyle(
            color: Colors.black,
          ),
          caption: TextStyle(
            color: Colors.black,
          ),
          body1: TextStyle(
            color: Colors.black,
          ),
          title: TextStyle(
            color: Colors.black,
          ),
          body2: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
