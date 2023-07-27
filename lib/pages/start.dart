import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diseños en Flutter')),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        children: <Widget>[
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(
              context,
              '/refresh_scrollable',
            ),
            child: const Text('Actualizar con scroll'),
          )
        ],
      ),
    );
  }
}
