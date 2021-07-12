import 'package:flutter/material.dart';
import 'package:vidente_app_avaliacao/widgets/vidente_app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

Future main() async {
  await DotEnv.load();
  runApp(VidenteApp());
}
