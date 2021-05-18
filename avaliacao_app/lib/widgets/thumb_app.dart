import 'package:avaliacao_app/widgets/destaque.dart';
import 'package:avaliacao_app/widgets/feed.dart';

import 'package:avaliacao_app/widgets/info.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';

class ThumbApp extends StatelessWidget {
  final int numeroIcone;

  const ThumbApp({Key key, this.numeroIcone}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              //perfil
              Container(
                //color: Colors.black,
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 3,
                child: Stack(
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 50,
                      ),
                    ),
                  ],
                ),
              ),

              // publi, follows
              Padding(padding: EdgeInsets.all(10)),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Column(
                            children: [
                              Text(
                                "3,405",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Publicações",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Column(
                            children: [
                              Text(
                                "61.7 k",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Column(
                            children: [
                              Text(
                                "311",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: 25,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.grey[300]),
                              child: Text(
                                "Menssage",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.expand_more),
                              onPressed: () {},
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.expand_more),
                              onPressed: () {},
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Info(),
          Padding(padding: EdgeInsets.all(3)),
          Destaque(),
          Padding(padding: EdgeInsets.all(3)),
          Buttons(),
          Feed(),
        ],
      ),
    );
  }
}
