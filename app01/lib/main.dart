import 'package:app01/telas/contador.dart';
import 'package:app01/telas/home.dart';
import 'package:app01/telas/sobre.dart';
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
      title: 'App 01',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const HomePage(), //const ContadorPage(title: 'App 01 Home'),
      routes: {
        '/home': (context) => const HomePage(),
        '/sobre': (context) => const SobrePage(),
        '/contador': (context) => const ContadorPage(title: 'Contador'),
      },
    );
  }
}
