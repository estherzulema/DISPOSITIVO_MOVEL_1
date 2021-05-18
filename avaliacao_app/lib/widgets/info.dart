import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.only(
          left: 15,
        ),
        child: Text(
          "Jeff Mindel",
          style: TextStyle(
            //fontWeight: FontWeight.bold,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Photograper",
          style: TextStyle(
            //fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Los Angeles, CA ",
          style: TextStyle(
            //fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "-- Dad. Creative. Hubby to",
          style: TextStyle(
            //fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "For biz/speaking inquiries, email",
          style: TextStyle(
            //fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "itunes.apple.com/us/podcast/holding-space/...",
          style: TextStyle(
            //fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.blueAccent,
          ),
        ),
      ),
    ]);
  }
}
