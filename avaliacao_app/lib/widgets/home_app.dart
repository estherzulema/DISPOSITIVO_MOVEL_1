import 'package:avaliacao_app/widgets/thumb_app.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'jeff',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: Center(
        child: Column(
          children: [
            ThumbApp(
              numeroIcone: 72,
            ),
          ],
        ),
      ),
    );
  }
}
