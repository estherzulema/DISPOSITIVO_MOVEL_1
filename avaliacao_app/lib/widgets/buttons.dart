import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 25,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(primary: Colors.grey[200]),
          child: Text(
            "E-mail ",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 19,
            ),
          ),
        ),
      ),
    );
  }
}
