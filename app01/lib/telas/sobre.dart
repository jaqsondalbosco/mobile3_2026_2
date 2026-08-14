import 'package:app01/telas/maisinfo.dart';
import 'package:app01/widgets/minha_widget.dart';
import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Sobre'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sobre o aplicativo',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text('Voltar'),
            ),
            ElevatedButton(
              child: Text('Mais Informações'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MaisInfoPage(
                      valor: 'Dados passados para a tela de mais informações',
                    ),
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
