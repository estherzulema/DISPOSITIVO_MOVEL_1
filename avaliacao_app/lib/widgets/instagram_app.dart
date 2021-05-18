import 'package:avaliacao_app/widgets/home_app.dart';
import 'package:flutter/material.dart';

class InstagramApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      home: Home(),
    );
  }
}
