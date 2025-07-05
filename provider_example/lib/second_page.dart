import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_controller.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppController>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Segunda Tela')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Valor atual: ${app.contador}'),
            ElevatedButton(
              onPressed: app.incrementar,
              child: Text('Incrementar aqui também'),
            ),
          ],
        ),
      ),
    );
  }
}
