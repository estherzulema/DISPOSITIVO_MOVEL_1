import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:vidente_app_avaliacao/controllers/tema_controller.dart';
import 'package:vidente_app_avaliacao/widgets/home.dart';
import 'dart:convert';

class TelaCidade extends StatefulWidget {
  @override
  _TelaCidadeState createState() => _TelaCidadeState();
}

class _TelaCidadeState extends State<TelaCidade> {
  String cidade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultar Cidade'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Informe a cidade: ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              onChanged: (text) {
                cidade = text;
              },
              textCapitalization: TextCapitalization.sentences,
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              child: Text('Consultar'),
              onPressed: () async {
                InputController.instance.txtInput = cidade;
                await CidadeService().consultarCidade();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CidadeService {
  var novaCidade;
  final String baseUrlAPI = 'dataservice.accuweather.com';
  final String path = '/locations/v1/cities/search/';

  Future<List<City>> consultarCidade() async {
    final Map<String, String> params = {
      'apikey': env['API_KEY'],
      'q': InputController.instance.txtInput,
    };

    final Response resposta = await get(Uri.https(baseUrlAPI, path, params));

    if (resposta.statusCode == 200) {
      Iterable it = json.decode(resposta.body);
      List<City> dadosCidade =
          List.from(it.map((objJson) => City.transformarJSON(objJson)));

      novaCidade = dadosCidade[0];
      InputController.instance.nC = novaCidade.name;
      InputController.instance.cC = novaCidade.code;
      salvarCidade();
      return dadosCidade;
    } else {
      throw Exception('Falha ao consultar cidade');
    }
  }

  void salvarCidade() async {
    WidgetsFlutterBinding.ensureInitialized();
    final database = openDatabase(
      join(await getDatabasesPath(), 'cities_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE cities(id INTEGER PRIMARY KEY, name TEXT, code TEXT)',
        );
      },
      version: 1,
    );

    Future<List<City>> cities() async {
      final db = await database;
      final List<Map<String, dynamic>> maps = await db.query('cities');
      return List.generate(maps.length, (i) {
        return City(
          id: maps[i]['id'],
          name: maps[i]['name'],
          code: maps[i]['code'],
        );
      });
    }

    print(await cities());
  }
}

class City {
  final int id;
  final String name;
  final String code;

  City({
    this.id,
    this.name,
    this.code,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'code': code,
    };
  }

  factory City.transformarJSON(Map<String, dynamic> objJson) {
    return City(
      id: int.parse(objJson['Key']),
      name: objJson['LocalizedName'],
      code: objJson['Key'],
    );
  }

  @override
  String toString() {
    return 'City{id: $id, name: $name, code: $code}';
  }
}
