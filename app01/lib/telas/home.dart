import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    width: 150,
                    height: 100,
                    image: AssetImage('images/upf.png'),
                  ),
                  Text(
                    'App Aula',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Contador'),
              onTap: () {
                Navigator.pop(context); // close the drawer
                Navigator.of(context).pushNamed('/contador');
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Sobre o app'),
              onTap: () {
                Navigator.pop(context); // close the drawer
                Navigator.of(context).pushNamed('/sobre');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Bem vindo..'),
            ElevatedButton(
              child: const Text('Abrir Contador'),
              onPressed: () {
                Navigator.of(context).pushNamed('/contador');
              },
            ),
            ElevatedButton(
              child: const Text('Abrir Sobre'),
              onPressed: () {
                Navigator.of(context).pushNamed('/sobre');
              },
            ),
          ],
        ),
      ),
    );
  }
}
