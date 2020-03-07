import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Layout-Challenge',
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 100.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100.0,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 100.0,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 100.0,
                          color: Colors.lightGreen,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.0,
                    color: Colors.blue,
                  ),
                ],
              ),
            )));
  }
}
