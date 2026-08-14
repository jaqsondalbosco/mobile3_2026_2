import 'package:app_aula/telas/contador.dart';
import 'package:app_aula/telas/home.dart';
import 'package:app_aula/telas/sobre.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Aula',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blueGrey)),
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/contador': (context) =>
            const ContadorPage(title: 'Contador de Cliques'),
        '/sobre': (context) => const SobrePage(),
      },
    );
  }
}
