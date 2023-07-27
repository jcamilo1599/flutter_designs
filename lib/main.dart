import 'package:flutter/material.dart';

import 'pages/refresh_scrollable.dart';
import 'pages/start.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const StartPage(),
        '/refresh_scrollable': (context) => const RefreshScrollablePage(),
      },
    );
  }
}
