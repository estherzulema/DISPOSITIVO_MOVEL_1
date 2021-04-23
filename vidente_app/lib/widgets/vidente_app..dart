import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vidente_app/widgets/home.dart';

class VidenteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vidente',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
