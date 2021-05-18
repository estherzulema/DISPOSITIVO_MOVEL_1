import 'package:flutter/material.dart';

class Destaque extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8, top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('images72.png'),
                ),
                Text("Novo")
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('images/72.png'),
                ),
                Text(";)")
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('images/72.png'),
                ),
                Text(":p")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
