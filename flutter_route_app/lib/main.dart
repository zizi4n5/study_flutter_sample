import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Navigation',
//      home: FirstScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    ));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('1番目のルート'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('次の画面を開く'),
            onPressed: () {
              // SecondScreenへ遷移する処理
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => SecondScreen()),
//              );
              Navigator.pushNamed(context, '/second');
            },
          ),
        ),
      );
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('2番目のルート'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('戻る'),
            onPressed: () {
              // FirstScreenへ戻る処理
              Navigator.pop(context);
            },
          ),
        ),
      );
}
