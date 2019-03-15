import 'package:f_groceries/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';




void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  ThemeData _buildTheme() {
    final ThemeData base =ThemeData.light();
    return base.copyWith(
      primaryColor: Colors.green,
      accentColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 35,
      ),
      primaryIconTheme: IconThemeData(
        color: Colors.white,
      ),
      buttonColor: Colors.blue,
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.white,
        ),
      ).apply(
        fontFamily: 'Rubik'
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _Theme = _buildTheme();
    return new MaterialApp(
        theme: _Theme,
      home: new MyHomePage(title: 'Groceries'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home_screen()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Container(
      alignment: Alignment.center,
      decoration: new BoxDecoration(color: Colors.white),
      child: new Container(
        color: Colors.black12,
        margin: new EdgeInsets.all(30.0),
        width: 250.0,
        height: 250.0,
        child: new Image.asset(
          'images/gro.jpg',
        ),
      ),
    );
  }

}
