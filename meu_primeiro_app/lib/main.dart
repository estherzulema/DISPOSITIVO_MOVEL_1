import 'package:flutter/material.dart';

void main() => runApp(Cores());

class Cores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cores',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Cores'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Vermelho',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Trocar cor',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
