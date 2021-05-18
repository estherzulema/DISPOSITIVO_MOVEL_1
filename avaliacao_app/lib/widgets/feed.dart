import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao_app/widgets/fotos.dart';

import 'foto.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Icon(
                    Icons.grid_on,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Icon(
                    Icons.live_tv,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 3,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Icon(
                    Icons.contacts,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Wrap(
              children: [
                Fotos(),
                Fotos(),
                Fotos(),
                Fotos(),
                Fotos(),
                Fotos(),
                Fotos(),
                Fotos(),
                Fotos(),
                Fotos(),
                Fotos(),
                Fotos(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
