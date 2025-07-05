import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_controller.dart';
import 'second_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppController>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Página Inicial')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: ${app.contador}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: app.incrementar,
              child: Text('Incrementar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SecondPage()));
              },
              child: Text('Ir para segunda tela'),
            ),
            SwitchListTile(
              title: Text('Tema escuro'),
              value: app.isDark,
              onChanged: (value) => app.toggleTheme(),
            ),
          ],
        ),
      ),
    );
  }
}
