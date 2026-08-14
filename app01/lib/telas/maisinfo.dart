import 'package:app01/widgets/minha_widget.dart';
import 'package:flutter/material.dart';

class MaisInfoPage extends StatelessWidget {
  final String valor;
  MaisInfoPage({Key? key, required this.valor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Informações'),
      ),
      body: Container(
        color: Colors.cyan,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(valor),
              Image(
                width: 150,
                height: 150,
                image: AssetImage('images/upf.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
