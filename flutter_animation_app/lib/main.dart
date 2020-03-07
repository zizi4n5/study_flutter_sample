import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Navigation',
      home: MainScreen(),
    ));

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Main Screen'),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => DetailScreen()));
          },
          child: Hero(
            tag: 'imageHero',
            child: Image.network('https://picsum.photos/250?image=9'),
          ),
        ),
      );
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Hero(
              tag: 'imageHero',
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
          ),
        ),
      );
}
